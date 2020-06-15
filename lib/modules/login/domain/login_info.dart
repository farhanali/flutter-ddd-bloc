import 'package:dartz/dartz.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

import 'login_failure.dart';

part 'login_info.freezed.dart';
part 'login_info.g.dart';

@freezed
abstract class LoginInfo implements _$LoginInfo {
  const LoginInfo._();
  const factory LoginInfo({
    @required String email,
    @required String password,
  }) = _LoginInfo;

  factory LoginInfo.fromJson(Map<String, dynamic> json) =>
      _$LoginInfoFromJson(json);

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
