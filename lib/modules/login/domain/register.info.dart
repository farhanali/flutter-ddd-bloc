import 'package:dartz/dartz.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

import 'register_failure.dart';

part 'register.info.freezed.dart';
part 'register.info.g.dart';

@freezed
abstract class RegisterInfo implements _$RegisterInfo {
  const RegisterInfo._();
  const factory RegisterInfo({
    @required String name,
    @required String email,
    @required String password,
  }) = _RegisterInfo;

  factory RegisterInfo.fromJson(Map<String, dynamic> json) =>
      _$RegisterInfoFromJson(json);

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

  static String validateName(String name) {
    if (name == null || name == ' ' || name.isEmpty) {
      return 'Please input your name';
    }

    return null;
  }

  static String validateUniformityOfPassword(
      String password, String confirmedPassword) {
    if (password != confirmedPassword) {
      return 'The entered passwords do not match';
    }

    return null;
  }

  Option<RegisterFailure> validate() {
    String emailError = validateEmail(email);
    String passwordError = validatePassword(password);

    return emailError != null || passwordError != null
        ? some(RegisterFailure.validationError(emailError ?? passwordError))
        : none();
  }
}
