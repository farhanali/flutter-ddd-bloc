import 'package:dartz/dartz.dart';
import 'package:injectable/injectable.dart';

import '../domain/login_failure.dart';
import '../domain/login_info.dart';
import '../domain/login_repository.dart';
import '../domain/register_failure.dart';
import '../domain/user.dart';
import 'login_api.dart';

@Injectable(as: LoginRepository)
class LoginRepositoryImpl implements LoginRepository {
  final LoginApi _api = LoginApi.create();

  @override
  Future<Either<LoginFailure, User>> login(LoginInfo loginInfo) async {
    try {
      final response = await _api.login(loginInfo.toJson());

      if (response.isSuccessful) {
        User user = response.body;
        return right(user);
      }

      // TODO proper error handling
      final code = response.statusCode;
      final error = response.error;

      switch (code) {
        case 401:
          return left(LoginFailure.invalidLogin('Unauthenticated'));
        case 500:
          return left(LoginFailure.serverError());
      }
    } catch (e) {
      //TODO proper error handling
      return left(LoginFailure.connectionError());
    }
  }

  @override
  Future<Either<RegisterFailure, User>> register(LoginInfo loginInfo) async {
    try {
      final response = await _api.login(loginInfo.toJson());

      if (response.isSuccessful) {
        User user = response.body;
        return right(user);
      }

      // TODO proper error handling
      final code = response.statusCode;
      final error = response.error;

      switch (code) {
        case 401:
          return left(RegisterFailure.userAlreadyExist('User already exist'));
        case 500:
          return left(RegisterFailure.serverError());
      }
    } catch (e) {
      //TODO proper error handling
      return left(RegisterFailure.connectionError());
    }
  }
}
