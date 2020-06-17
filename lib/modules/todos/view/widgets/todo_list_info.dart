import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../../auth/bloc/auth_bloc.dart';
import '../../domain/todo.dart';
import 'todolist_progress.dart';

class TodoListInfo extends StatelessWidget {
  final TodoList todoList;

  const TodoListInfo({Key key, this.todoList}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      physics: const NeverScrollableScrollPhysics(),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          _buildIntroText(context),
          const SizedBox(height: 4.0),
          Text(
            todoList.title,
            style: const TextStyle(fontSize: 34),
          ),
          const SizedBox(height: 12.0),
          TodoListProgress(todoList: todoList),
        ],
      ),
    );
  }

  Widget _buildIntroText(BuildContext context) {
    return BlocProvider.value(
      value: context.bloc<AuthBloc>()..add(const AuthEvent.getUser()),
      child: BlocBuilder<AuthBloc, AuthState>(
        builder: (context, state) {
          String text = state.maybeWhen(
            user: (user) =>
                '''Hello ${user.name},\n\nYou have ${todoList.todos.length} 
                todos in your list''',
            orElse: () => 'Logging out..',
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
