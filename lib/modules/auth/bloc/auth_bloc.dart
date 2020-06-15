import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';

import '../../login/domain/user.dart';
import '../domain/auth_failure.dart';
import '../domain/auth_repository.dart';

part 'auth_bloc.freezed.dart';
part 'auth_event.dart';
part 'auth_state.dart';

@injectable
class AuthBloc extends Bloc<AuthEvent, AuthState> {
  final AuthRepository _authRepo;

  AuthBloc(this._authRepo);

  @override
  AuthState get initialState => AuthState.loading();

  @override
  Stream<AuthState> mapEventToState(
    AuthEvent event,
  ) async* {
    yield* event.when(
      getUser: () => _mapGetUserToState(),
      logout: () => _mapLogoutToState(),
    );
  }

  Stream<AuthState> _mapGetUserToState() async* {
    final result = await _authRepo.read();
    yield result.fold(
      (failure) => AuthState.guest(),
      (user) => AuthState.user(user),
    );
  }

  Stream<AuthState> _mapLogoutToState() async* {
    yield AuthState.loading();
    final result = await _authRepo.delete();
    yield result.fold(
      (failure) => AuthState.error(failure),
      (none) => AuthState.guest(),
    );
  }
}
