import 'package:flutter/material.dart';
import 'package:flushbar/flushbar_helper.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../../todos/view/pages/todo_list_page.dart';
import '../../bloc/login_bloc.dart';
import '../../domain/login_info.dart';
import '../../domain/register.info.dart';
import '../../domain/user.dart';
import '../../domain/apiresponse.dart';

class LoginPage extends StatefulWidget {
  @override
  _LoginPageState createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  String name = 'Farhan Ali';
  String email = 'farhan@mashkor.com';
  String password = 'farhan123';
  String confirmedPassword = 'farhan123';

  bool isRegisterState(LoginState loginState) {
    if (loginState is LoginStateInitialRegister ||
        loginState is RegisterStateFailed ||
        loginState is RegisterStateSuccess)
      return true;
    else
      return false;
  }

  @override
  Widget build(BuildContext context) {
    return BlocConsumer<LoginBloc, LoginState>(
      listener: _listenBlocEvents,
      builder: (BuildContext context, LoginState state) {
        return Scaffold(
          body: Center(
            child: Form(
              autovalidate: true,
              child: ListView(
                shrinkWrap: true,
                padding: EdgeInsets.only(left: 24, right: 24),
                children: <Widget>[
                  _buildLogo(),
                  SizedBox(height: 12),
                  _buildTitle(state),
                  SizedBox(height: 48),
                  isRegisterState(state)
                      ? _buildInputNameField()
                      : SizedBox(height: 0),
                  isRegisterState(state)
                      ? SizedBox(height: 8)
                      : SizedBox(height: 0),
                  _buildEmailField(),
                  SizedBox(height: 8),
                  _buildPasswordField(),
                  isRegisterState(state)
                      ? SizedBox(height: 8)
                      : SizedBox(height: 0),
                  isRegisterState(state)
                      ? _buildConfirmPasswordField()
                      : SizedBox(height: 0),
                  SizedBox(height: 24),
                  _buildLoginButton(state),
                  SizedBox(height: 8),
                  _buildRegisterButton(state),
                  SizedBox(height: 12),
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
      loginSuccess: (user) => _onLoginSuccess(user),
      loginFailed: (failure) => _flushError('Login failed: $failure'),
      registerSuccess: (responseSuccess) => _onRegisterSuccess(responseSuccess),
      registerFailed: (failure) => _flushError('Register failed: $failure'),
      orElse: () {}, // nothing specific todo
    );
  }

  Widget _buildLogo() {
    return Container(
      width: MediaQuery.of(context).size.width,
      alignment: Alignment.centerLeft,
      child: Container(
        padding: EdgeInsets.all(12),
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

  Widget _buildTitle(LoginState state) {
    return Text(
      isRegisterState(state) ? 'Register todo!' : 'Login todo!',
      style: TextStyle(fontSize: 40),
    );
  }

  Widget _buildEmailField() {
    return TextFormField(
      onChanged: (value) => email = value,
      keyboardType: TextInputType.emailAddress,
      autofocus: false,
      initialValue: 'farhan@mashkor.com',
      decoration: _buildDecoration('Login', 'Email'),
      validator: (value) => LoginInfo.validateEmail(value),
    );
  }

  Widget _buildPasswordField() {
    return TextFormField(
      onChanged: (value) => password = value,
      autofocus: false,
      initialValue: 'farhan123',
      obscureText: true,
      decoration: _buildDecoration('Password', 'Password'),
      validator: (value) => LoginInfo.validatePassword(value),
    );
  }

  Widget _buildConfirmPasswordField() {
    return TextFormField(
      onChanged: (value) => confirmedPassword = value,
      autofocus: false,
      initialValue: 'farhan123',
      obscureText: true,
      decoration: _buildDecoration('Confirm password', 'Confirm password'),
      validator: (value) => LoginInfo.validatePassword(value),
    );
  }

  Widget _buildInputNameField() {
    return TextFormField(
      onChanged: (value) => name = value,
      autofocus: false,
      initialValue: 'Farhan Ali',
      decoration: _buildDecoration('Name', 'Name'),
      validator: (value) => RegisterInfo.validateName(value),
    );
  }

  InputDecoration _buildDecoration(String hint, String titleLabel) {
    return InputDecoration(
      labelText: titleLabel,
      hintText: hint,
      contentPadding: EdgeInsets.fromLTRB(20, 10, 20, 10),
      border: OutlineInputBorder(
        borderRadius: BorderRadius.circular(12),
      ),
    );
  }

  Widget _buildLoginButton(LoginState state) {
    return Container(
      width: 100,
      child: RaisedButton(
        padding: EdgeInsets.all(12),
        color: Colors.black54,
        elevation: 0,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(12),
        ),
        onPressed: () => _onLoginTap(state),
        child: Text(
          !isRegisterState(state) ? 'Log In' : 'Sign up',
          style: TextStyle(color: Colors.white),
        ),
      ),
    );
  }

  Widget _buildRegisterButton(LoginState state) {
    return Container(
      width: 100,
      child: RaisedButton(
        padding: EdgeInsets.all(12),
        color: Colors.blue,
        elevation: 0,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(12),
        ),
        onPressed: () => _onRegisterTap(state),
        child: Text(
          !isRegisterState(state) ? 'Register' : 'Back to log in',
          style: TextStyle(color: Colors.white),
        ),
      ),
    );
  }

  Widget _buildProgress(LoginState state) {
    return state is LoginStateInProgress
        ? Center(child: CircularProgressIndicator())
        : Container(height: 35);
  }

  void _onLoginTap(LoginState state) {
    if (isRegisterState(state)) {
      final validationResult = RegisterInfo.validateUniformityOfPassword(password, confirmedPassword);
      if(validationResult != null) {
        _flushError(validationResult);
        return;
      }

      final input = RegisterInfo(name: name, email: email, password: password);
      context.bloc<LoginBloc>().add(LoginEvent.signup(input));
    } else {
      final input = LoginInfo(email: email, password: password);
      context.bloc<LoginBloc>().add(LoginEvent.signin(input));
    }
  }

  void _onRegisterTap(LoginState state) {
    if (isRegisterState(state))
      context.bloc<LoginBloc>().add(LoginEvent.switchToLogin());
    else
      context.bloc<LoginBloc>().add(LoginEvent.switchToRegister());
  }

  void _onLoginSuccess(User user) async {
    await _flushSuccess('Welcome ${user.name}', second: 1);
    Navigator.of(context).pushReplacement(
        MaterialPageRoute(builder: (context) => TodoListPage()));
  }

  void _onRegisterSuccess(ApiResponse response) async {
    await _flushSuccess('${response.message}. Please log in', second: 2);
    context.bloc<LoginBloc>().add(LoginEvent.switchToLogin());
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
