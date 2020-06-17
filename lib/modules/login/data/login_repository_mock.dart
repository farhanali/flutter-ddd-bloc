import 'package:dartz/dartz.dart';
import 'package:injectable/injectable.dart';

import '../domain/register_failure.dart';
import '../domain/login_failure.dart';
import '../domain/login_info.dart';
import '../domain/login_repository.dart';
import '../domain/register.info.dart';
import '../domain/apiresponse.dart';
import '../domain/user.dart';

@Injectable(as: LoginRepository, env: Environment.test)
class AuthRepositoryMock implements LoginRepository {
  @override
  Future<Either<LoginFailure, User>> login(LoginInfo input) {
    // TODO: implement login
    throw UnimplementedError();
  }

  @override
  Future<Either<RegisterFailure, ApiResponse>> register(RegisterInfo input) {
    // TODO: implement login
    throw UnimplementedError();
  }
}
