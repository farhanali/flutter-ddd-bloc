import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';
import 'package:meta/meta.dart';

import '../../auth/domain/auth_repository.dart';
import '../domain/login_failure.dart';
import '../domain/login_info.dart';
import '../domain/login_repository.dart';
import '../domain/user.dart';

part 'login_bloc.freezed.dart';
part 'login_event.dart';
part 'login_state.dart';

@injectable
class LoginBloc extends Bloc<LoginEvent, LoginState> {
  final LoginRepository _loginRepo;
  final AuthRepository _authRepo;

  LoginBloc(this._loginRepo, this._authRepo);

  @override
  LoginState get initialState => LoginState.initial();

  @override
  Stream<LoginState> mapEventToState(
    LoginEvent event,
  ) async* {
    yield* _mapSigninToState(event);
  }

  Stream<LoginState> _mapSigninToState(LoginEvent event) async* {
    yield const LoginState.inProgress();

    LoginInfo info = event.info;
    yield* info.validate().fold(
          () => _doLogin(info),
          (failure) => _validationFailed(failure),
        );
  }

  Stream<LoginState> _doLogin(LoginInfo input) async* {
    final loginResult = await _loginRepo.login(input);

    yield loginResult.fold(
      (failure) => LoginState.failed(failure),
      (user) {
        _authRepo.save(user);
        return LoginState.success(user);
      },
    );
  }

  Stream<LoginState> _validationFailed(LoginFailure failure) async* {
    yield LoginState.failed(failure);
  }
}
