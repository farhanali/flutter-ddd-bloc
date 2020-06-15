import 'package:freezed_annotation/freezed_annotation.dart';

part 'auth_failure.freezed.dart';

@freezed
abstract class AuthFailure with _$AuthFailure {
  const factory AuthFailure.unauthenticated() = AuthFailureUnauthenticated;
  const factory AuthFailure.tokenExpired() = AuthFailureTokenExpired;
  const factory AuthFailure.storageError(Exception e) = AuthFailureStorageError;
}
