import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../../app/router.gr.dart';
import '../../../auth/bloc/auth_bloc.dart';

class SplashPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return BlocListener<AuthBloc, AuthState>(
      listener: (context, state) async {
        await Future.delayed(const Duration(milliseconds: 2000));
        state.maybeWhen(
          guest: () => _routeToLogin(context),
          user: (_) => _routeToHome(context),
          orElse: () {},
        );
      },
      child: _PageWidget(),
    );
  }

  void _routeToLogin(BuildContext context) {
    ExtendedNavigator.of(context).pushReplacementNamed(Routes.loginPage);
  }

  void _routeToHome(BuildContext context) {
    ExtendedNavigator.of(context).pushReplacementNamed(Routes.todoListPage);
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
