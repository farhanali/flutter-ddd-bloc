import 'dart:convert';

import 'package:dartz/dartz.dart';
import 'package:flutter/services.dart';
import 'package:flutter_secure_storage/flutter_secure_storage.dart';
import 'package:injectable/injectable.dart';

import '../../login/domain/user.dart';
import '../domain/auth_failure.dart';
import '../domain/auth_repository.dart';

@Injectable(as: AuthRepository)
class AuthRepositoryImpl implements AuthRepository {
  static const authUserKey = 'authenticated_user';

  @override
  Future<Either<AuthFailure, User>> read() async {
    try {
      const storage = FlutterSecureStorage();
      String userJson = await storage.read(key: authUserKey);

      if (userJson?.isEmpty ?? true) {
        return left(const AuthFailure.unauthenticated());
      }

      // TODO Token expiry
      return right(User.fromJson(json.decode(userJson)));
    } on PlatformException catch (e) {
      return left(AuthFailure.storageError(e));
    }
  }

  @override
  Future<Either<AuthFailure, None>> save(User user) async {
    try {
      const storage = FlutterSecureStorage();
      await storage.write(key: authUserKey, value: json.encode(user.toJson()));
      return right(const None());
    } on PlatformException catch (e) {
      return left(AuthFailure.storageError(e));
    }
  }

  @override
  Future<Either<AuthFailure, None>> delete() async {
    try {
      const storage = FlutterSecureStorage();
      await storage.delete(key: authUserKey);
      return right(const None());
    } on PlatformException catch (e) {
      return left(AuthFailure.storageError(e));
    }
  }
}
