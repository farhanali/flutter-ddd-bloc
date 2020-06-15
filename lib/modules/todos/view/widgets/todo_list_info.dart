import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_clean_arch/modules/auth/bloc/auth_bloc.dart';

import '../../domain/todo.dart';
import 'todolist_progress.dart';

class TodoListInfo extends StatelessWidget {
  final TodoList todoList;

  const TodoListInfo({Key key, this.todoList}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      physics: NeverScrollableScrollPhysics(),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          _buildIntroText(context),
          SizedBox(height: 4.0),
          Text(
            todoList.title,
            style: TextStyle(fontSize: 34),
          ),
          SizedBox(height: 12.0),
          TodoListProgress(todoList: todoList),
        ],
      ),
    );
  }

  Widget _buildIntroText(BuildContext context) {
    return BlocProvider.value(
      value: context.bloc<AuthBloc>()..add(AuthEvent.getUser()),
      child: BlocBuilder<AuthBloc, AuthState>(
        builder: (BuildContext context, AuthState state) {
          String text = state.maybeWhen(
            user: (user) =>
                "Hello ${user.name},\n\nYou have ${todoList.todos.length} todos in your list",
            orElse: () => "Logging out..",
          );

          return Text(
            text,
            style: TextStyle(
              fontSize: 18,
              fontWeight: FontWeight.w300,
            ),
          );
        },
      ),
    );
  }
}
