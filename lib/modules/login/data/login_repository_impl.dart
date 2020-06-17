import 'package:dartz/dartz.dart';
import 'package:flutter_clean_arch/modules/login/domain/apiresponse.dart';
import 'package:injectable/injectable.dart';

import '../domain/login_failure.dart';
import '../domain/login_info.dart';
import '../domain/login_repository.dart';
import '../domain/register_failure.dart';
import '../domain/register.info.dart';
import '../domain/user.dart';
import 'login_api.dart';

@Injectable(as: LoginRepository)
class LoginRepositoryImpl implements LoginRepository {
  final LoginApi _loginApi = LoginApi.create();
  final RegisterApi _registerApi = RegisterApi.create();

  @override
  Future<Either<LoginFailure, User>> login(LoginInfo loginInfo) async {
    try {
      final response = await _loginApi.login(loginInfo.toJson());

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
  Future<Either<RegisterFailure, ApiResponse>> register(
      RegisterInfo registerInfo) async {
    try {
      final response = await _registerApi.register(registerInfo.toJson());

      if (response.isSuccessful) {
        ApiResponse apiResponse = response.body;
        return right(apiResponse);
      }

      // TODO proper error handling
      final code = response.statusCode;
      final error = response.error;

      switch (code) {
        case 400:
          return left(RegisterFailure.missingParameters('Missing parameters'));
        case 409:
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
