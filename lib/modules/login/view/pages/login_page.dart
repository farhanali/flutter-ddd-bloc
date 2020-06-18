import 'package:auto_route/auto_route.dart';
import 'package:flushbar/flushbar_helper.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../../app/router.gr.dart';
import '../../bloc/login_bloc.dart';
import '../../domain/login_info.dart';
import '../../domain/user.dart';

class LoginPage extends StatefulWidget {
  @override
  _LoginPageState createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  String email = 'farhan@mashkor.com';
  String password = 'farhan123';

  @override
  Widget build(BuildContext context) {
    return BlocConsumer<LoginBloc, LoginState>(
      listener: _listenBlocEvents,
      builder: (context, state) {
        return Scaffold(
          body: Center(
            child: Form(
              autovalidate: true,
              child: ListView(
                shrinkWrap: true,
                padding: const EdgeInsets.only(left: 24, right: 24),
                children: <Widget>[
                  _buildLogo(),
                  const SizedBox(height: 12),
                  _buildTitle(),
                  const SizedBox(height: 48),
                  _buildEmailField(),
                  const SizedBox(height: 8),
                  _buildPasswordField(),
                  const SizedBox(height: 24),
                  _buildLoginButton(),
                  const SizedBox(height: 12),
                  _buildProgress(state),
                ],
              ),
            ),
          ),
        );
      },
    );
  }

  void _listenBlocEvents(BuildContext context, LoginState state) {
    state.maybeWhen(
      success: _onLoginSuccess,
      failed: (failure) => _flushError('Login failed: $failure'),
      orElse: () {}, // nothing specific todo
    );
  }

  Widget _buildLogo() {
    return Container(
      width: MediaQuery.of(context).size.width,
      alignment: Alignment.centerLeft,
      child: Container(
        padding: const EdgeInsets.all(12),
        decoration: BoxDecoration(
          shape: BoxShape.circle,
          border: Border.all(color: Colors.black12, style: BorderStyle.solid),
        ),
        child: Icon(
          Icons.person,
          color: Colors.black54,
          size: 40,
        ),
      ),
    );
  }

  Widget _buildTitle() {
    return const Text(
      'Login todo!',
      style: TextStyle(fontSize: 40),
    );
  }

  Widget _buildEmailField() {
    return TextFormField(
      onChanged: (value) => email = value,
      keyboardType: TextInputType.emailAddress,
      autofocus: false,
      initialValue: 'farhan@mashkor.com',
      validator: LoginInfo.validateEmail,
    );
  }

  Widget _buildPasswordField() {
    return TextFormField(
      onChanged: (value) => password = value,
      autofocus: false,
      initialValue: 'farhan123',
      obscureText: true,
      validator: LoginInfo.validatePassword,
    );
  }

  Widget _buildLoginButton() {
    return Container(
      width: 100,
      child: RaisedButton(
        elevation: 0,
        onPressed: _onLoginTap,
        child: const Text(
          'Log In',
          style: TextStyle(color: Colors.white),
        ),
      ),
    );
  }

  Widget _buildProgress(LoginState state) {
    return state is LoginStateInProgress
        ? const Center(child: CircularProgressIndicator())
        : Container(height: 35);
  }

  void _onLoginTap() {
    final input = LoginInfo(email: email, password: password);
    context.bloc<LoginBloc>().add(LoginEvent.signin(input));
  }

  void _onLoginSuccess(User user) async {
    await _flushSuccess('Welcom ${user.name}', second: 1);
    ExtendedNavigator.of(context).pushReplacementNamed(Routes.todoListPage);
  }

  Future _flushSuccess(String message, {int second = 2}) {
    return FlushbarHelper.createSuccess(
      message: message,
      duration: Duration(seconds: second),
    ).show(context);
  }

  Future _flushError(String message, {int second = 2}) {
    return FlushbarHelper.createError(
      message: message,
      duration: Duration(seconds: second),
    ).show(context);
  }
}
