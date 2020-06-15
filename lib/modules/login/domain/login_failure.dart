import 'package:freezed_annotation/freezed_annotation.dart';

part 'login_failure.freezed.dart';

@freezed
abstract class LoginFailure with _$LoginFailure {
  const factory LoginFailure.connectionError() = ConnectionError;
  const factory LoginFailure.serverError() = ServerError;
  const factory LoginFailure.userNotFound() = UserNotfoundError;
  const factory LoginFailure.invalidLogin(String error) = InvalidLoginError;
}
