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
  LoginState get initialState => LoginState.initialLogin();

  @override
  Stream<LoginState> mapEventToState(
    LoginEvent event,
  ) async* {
    yield* event.when(
      signin: (event) => _mapSigninToState(event),
      switchToRegister: () => _switchToRegisterState(),
      switchToLogin: () => _switchToLoginState()
    );
  }

  Stream<LoginState> _mapSigninToState(LoginInfo loginInfo) async* {
    yield const LoginState.inProgress();

    yield* loginInfo.validate().fold(
          () => _doLogin(loginInfo),
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

  Stream<LoginState> _switchToRegisterState() async* {
    yield LoginState.initialRegister();
  }

    Stream<LoginState> _switchToLoginState() async* {
    yield LoginState.initialLogin();
  }

  Stream<LoginState> _validationFailed(LoginFailure failure) async* {
    yield LoginState.failed(failure);
  }
}
