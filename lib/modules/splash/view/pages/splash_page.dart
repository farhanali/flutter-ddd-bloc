import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../../auth/bloc/auth_bloc.dart';
import '../../../login/view/pages/login_page.dart';
import '../../../todos/view/pages/todo_list_page.dart';

class SplashPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return BlocListener<AuthBloc, AuthState>(
      listener: (BuildContext context, AuthState state) async {
        await Future.delayed(Duration(milliseconds: 2000));
        state.maybeWhen(
          guest: () => _routeToLogin(context),
          user: (_) => _routeToHome(context),
          orElse: () => print(state),
        );
      },
      child: _PageWidget(),
    );
  }

  void _routeToLogin(BuildContext context) {
    Navigator.of(context)
        .pushReplacement(MaterialPageRoute(builder: (context) => LoginPage()));
  }

  void _routeToHome(BuildContext context) {
    Navigator.of(context).pushReplacement(
        MaterialPageRoute(builder: (context) => TodoListPage()));
  }
}

class _PageWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: Center(
        child: CircularProgressIndicator(),
      ),
    );
  }
}
