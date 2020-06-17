import 'package:dartz/dartz.dart';

import 'register_failure.dart';
import 'register.info.dart';
import 'login_failure.dart';
import 'login_info.dart';
import 'user.dart';
import 'apiresponse.dart';

abstract class LoginRepository {
  Future<Either<LoginFailure, User>> login(LoginInfo loginInfo);
  Future<Either<RegisterFailure, ApiResponse>> register(RegisterInfo registerInfo);
}
