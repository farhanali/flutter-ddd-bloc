import 'package:dartz/dartz.dart';

import '../../../common/contracts/repository.dart';
import 'login_failure.dart';
import 'login_input.dart';
import 'user.dart';

abstract class LoginRepository extends Repository {
  Future<Either<LoginFailure, User>> login(LoginInput loginInput);
}
