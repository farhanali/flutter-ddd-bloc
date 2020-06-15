import 'package:dartz/dartz.dart';
import 'package:injectable/injectable.dart';

import '../domain/login_failure.dart';
import '../domain/login_info.dart';
import '../domain/login_repository.dart';
import '../domain/user.dart';

@Injectable(as: LoginRepository, env: Environment.test)
class AuthRepositoryMock implements LoginRepository {
  @override
  Future<Either<LoginFailure, User>> login(LoginInfo input) {
    // TODO: implement login
    throw UnimplementedError();
  }
}
