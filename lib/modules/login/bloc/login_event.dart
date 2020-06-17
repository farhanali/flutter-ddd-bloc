part of 'login_bloc.dart';

@freezed
abstract class LoginEvent with _$LoginEvent {
  const factory LoginEvent.signin(LoginInfo info) = LoginEventSignin;
  const factory LoginEvent.signup(RegisterInfo info) = LoginEventSignup;
  const factory LoginEvent.switchToRegister() = LoginEventSwitchToRegister;
  const factory LoginEvent.switchToLogin() = LoginEventSwitchToLogin;
}
