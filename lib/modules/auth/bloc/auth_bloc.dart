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
class AuthBloc extends Cubit<AuthState> {
  final AuthRepository _authRepo;

  AuthBloc(this._authRepo) : super(const AuthState.loading());

  void getUser() async {
    final result = await _authRepo.read();
    result.fold(
      (failure) => emit(const AuthState.guest()),
      (user) => emit(AuthState.user(user)),
    );
  }

  void logout() async {
    emit(const AuthState.loading());
    final result = await _authRepo.delete();
    result.fold(
      (failure) => emit(AuthState.error(failure)),
      (none) => emit(const AuthState.guest()),
    );
  }
}
