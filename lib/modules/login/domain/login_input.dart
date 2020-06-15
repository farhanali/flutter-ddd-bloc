import 'package:dartz/dartz.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

import 'login_failure.dart';

part 'login_input.freezed.dart';
part 'login_input.g.dart';

@freezed
abstract class LoginInput implements _$LoginInput {
  const LoginInput._();
  const factory LoginInput({
    @required String email,
    @required String password,
  }) = _LoginInput;

  factory LoginInput.fromJson(Map<String, dynamic> json) =>
      _$LoginInputFromJson(json);

  static String validateEmail(String email) {
    final regex = RegExp(
        r"^[a-zA-Z0-9.a-zA-Z0-9.!#$%&'*+-/=?^_`{|}~]+@[a-zA-Z0-9]+\.[a-zA-Z]+");

    if (!regex.hasMatch(email)) {
      return 'Please enter a valid email';
    }

    return null;
  }

  static String validatePassword(String password) {
    if (password == null || password.length < 6) {
      return 'Password should contain 6 characters';
    }

    return null;
  }

  Option<LoginFailure> validate() {
    String emailError = validateEmail(email);
    String passwordError = validatePassword(password);

    return emailError != null || passwordError != null
        ? some(LoginFailure.invalidLogin(emailError ?? passwordError))
        : none();
  }
}
