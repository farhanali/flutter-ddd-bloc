import 'package:flushbar/flushbar_helper.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../../auth/bloc/auth_bloc.dart';
import '../../../login/view/pages/login_page.dart';
import '../../domain/todo.dart';
import '../widgets/todo_item.dart';
import '../widgets/todo_list_icon.dart';
import '../widgets/todo_list_info.dart';

class TodoListPage extends StatefulWidget {
  @override
  State<StatefulWidget> createState() => _TodoListPageState();
}

class _TodoListPageState extends State<TodoListPage>
    with TickerProviderStateMixin {
  TodoList todoList = const TodoList(
    title: "My Todo's",
    todos: [
      Todo(id: 1, name: 'Complete todo app', done: false),
      Todo(id: 2, name: 'Do testing', done: false),
      Todo(id: 1, name: 'Deploy app', done: true),
    ],
  );

  final TextEditingController newTodoController = TextEditingController();
  final ScrollController scrollController = ScrollController();

  @override
  Widget build(BuildContext context) {
    return BlocListener<AuthBloc, AuthState>(
      listener: (context, state) {
        print(state);
        state.maybeWhen(
          guest: _onLogoutSuccess,
          orElse: () {}, // nothing specific todo
        );
      },
      child: Scaffold(
        appBar: _buildAppbar(),
        body: Container(
          padding: const EdgeInsets.only(left: 50, right: 50, bottom: 50),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
              TodoListIcon(
                icon: Icons.content_paste,
                color: Colors.orange,
              ),
              const SizedBox(height: 32.0),
              TodoListInfo(todoList: todoList),
              const SizedBox(height: 24.0),
              _buildTodoList(),
              const SizedBox(height: 12.0),
              _buildAddTodoField(),
            ],
          ),
        ),
      ),
    );
  }

  Widget _buildAppbar() {
    return AppBar(
      backgroundColor: Colors.transparent,
      elevation: 0,
      actions: _buildActions(),
    );
  }

  List<Widget> _buildActions() {
    return [
      PopupMenuButton(
        icon: Icon(
          Icons.more_vert,
          color: Colors.black54,
        ),
        onSelected: (_) => _onLogoutTap(),
        itemBuilder: (context) {
          return [
            const PopupMenuItem<String>(
              value: 'Logout',
              child: Text('Logout'),
            ),
          ];
        },
      ),
    ];
  }

  Widget _buildTodoList() {
    return Expanded(
      child: ListView.separated(
        controller: scrollController,
        itemCount: todoList.todos.length,
        separatorBuilder: (c, _) => const SizedBox(height: 10.0),
        itemBuilder: (context, index) {
          final task = todoList.todos[index];
          return TodoItem(task: task);
        },
      ),
    );
  }

  Widget _buildAddTodoField() {
    return TextFormField(
      controller: newTodoController,
      keyboardType: TextInputType.emailAddress,
      autofocus: true,
      decoration: _buildDecoration('Add new todo'),
      onFieldSubmitted: _onNewTodoAdd,
    );
  }

  InputDecoration _buildDecoration(String hint) {
    return InputDecoration(
      hintText: hint,
      contentPadding: const EdgeInsets.fromLTRB(20.0, 10.0, 20.0, 10.0),
      border: OutlineInputBorder(
        borderRadius: BorderRadius.circular(32.0),
      ),
    );
  }

  void _onNewTodoAdd(String value) {
    todoList.todos.add(Todo(
      id: todoList.todos.length + 1,
      name: value,
      done: false,
    ));

    newTodoController.text = '';
    scrollController.animateTo(
      scrollController.position.maxScrollExtent,
      duration: const Duration(milliseconds: 300),
      curve: Curves.easeInOut,
    );

    setState(() {});
  }

  void _onLogoutTap() {
    context.bloc<AuthBloc>().add(const AuthEvent.logout());
  }

  void _onLogoutSuccess() async {
    await FlushbarHelper.createSuccess(
      message: 'Logout success',
      duration: const Duration(seconds: 1),
    ).show(context);
    Navigator.of(context)
        .pushReplacement(MaterialPageRoute(builder: (context) => LoginPage()));
  }
}
