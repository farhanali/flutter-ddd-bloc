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
part 'login_state.dart';

@injectable
class LoginBloc extends Cubit<LoginState> {
  final LoginRepository _loginRepo;
  final AuthRepository _authRepo;

  LoginBloc(this._loginRepo, this._authRepo) : super(const LoginStateInitial());

  void login(LoginInfo loginInfo) {
    emit(const LoginState.inProgress());
    loginInfo.validate().fold(
          () => _doLogin(loginInfo),
          (failure) => emit(LoginState.failed(failure)),
        );
  }

  void _doLogin(LoginInfo input) async {
    final loginResult = await _loginRepo.login(input);

    loginResult.fold(
      (failure) => emit(LoginState.failed(failure)),
      (user) {
        _authRepo.save(user);
        emit(LoginState.success(user));
      },
    );
  }
}
