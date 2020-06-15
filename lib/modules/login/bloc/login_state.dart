part of 'login_bloc.dart';

@freezed
abstract class LoginState with _$LoginState {
  const factory LoginState.initial() = LoginStateInitial;
  const factory LoginState.inProgress() = LoginStateInProgress;
  const factory LoginState.success(User user) = LoginStateSuccess;
  const factory LoginState.failed(LoginFailure failure) = LoginStateFailed;
  const factory LoginState.invalid(LoginFailure failure) = LoginStateInvalid;
}
