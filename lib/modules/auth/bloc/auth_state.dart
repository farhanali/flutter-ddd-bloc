part of 'auth_bloc.dart';

@freezed
abstract class AuthState with _$AuthState {
  const factory AuthState.loading() = AuthStateLoading;
  const factory AuthState.guest() = AuthStateGuest;
  const factory AuthState.user(User user) = AuthStateUser;
  const factory AuthState.error(AuthFailure failure) = AuthStateFailure;
}
