part of 'auth_bloc.dart';

@freezed
abstract class AuthEvent with _$AuthEvent {
  const factory AuthEvent.getUser() = AuthEventGetUser;
  const factory AuthEvent.logout() = AuthEventLogout;
}
