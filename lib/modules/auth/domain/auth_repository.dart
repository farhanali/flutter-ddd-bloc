import 'package:dartz/dartz.dart';

import '../../login/domain/user.dart';
import 'auth_failure.dart';

abstract class AuthRepository {
  Future<Either<AuthFailure, User>> read();
  Future<Either<AuthFailure, None>> save(User user);
  Future<Either<AuthFailure, None>> delete();
}
