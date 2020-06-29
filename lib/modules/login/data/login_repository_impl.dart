import 'package:dartz/dartz.dart';
import 'package:injectable/injectable.dart';

import '../domain/login_failure.dart';
import '../domain/login_info.dart';
import '../domain/login_repository.dart';
import '../domain/user.dart';
import 'login_api.dart';

@Injectable(as: LoginRepository)
class LoginRepositoryImpl implements LoginRepository {
  final LoginApi _api;

  LoginRepositoryImpl(this._api);

  @override
  Future<Either<LoginFailure, User>> login(LoginInfo loginInfo) async {
    try {
      final response = await _api.login(loginInfo.toJson());

      if (response.isSuccessful) {
        User user = response.body;
        return right(user);
      }

      // TODO proper error handling
      switch (response.statusCode) {
        case 401:
          return left(const LoginFailure.invalidLogin('Unauthenticated'));
        default:
          return left(const LoginFailure.serverError());
      }
    } on Exception {
      //TODO proper error handling
      return left(const LoginFailure.connectionError());
    }
  }
}
