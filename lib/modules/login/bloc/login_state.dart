part of 'login_bloc.dart';

@freezed
abstract class LoginState with _$LoginState {
  const factory LoginState.initialLogin() = LoginStateInitialLogin;
  const factory LoginState.initialRegister() = LoginStateInitialRegister;
  const factory LoginState.inProgress() = LoginStateInProgress;
  const factory LoginState.loginSuccess(User user) = LoginStateSuccess;
  const factory LoginState.loginFailed(LoginFailure failure) = LoginStateFailed;
  const factory LoginState.registerSuccess(User user) = RegisterStateSuccess;
  const factory LoginState.registerFailed(RegisterFailure failure) = RegisterStateFailed;
}
