import 'package:dartz/dartz.dart';

import 'login_failure.dart';
import 'login_info.dart';
import 'user.dart';

abstract class LoginRepository {
  Future<Either<LoginFailure, User>> login(LoginInfo loginInfo);
}
