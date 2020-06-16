import 'package:dartz/dartz.dart';

import 'register_failure.dart';
import 'login_failure.dart';
import 'login_info.dart';
import 'user.dart';

abstract class LoginRepository {
  Future<Either<LoginFailure, User>> login(LoginInfo loginInfo);
  Future<Either<RegisterFailure, User>> register(LoginInfo loginInfo);
}
