import 'package:freezed_annotation/freezed_annotation.dart';
part 'register_failure.freezed.dart';

@freezed
abstract class RegisterFailure with _$RegisterFailure {
  const factory RegisterFailure.connectionError() = ConnectionError;
  const factory RegisterFailure.serverError() = ServerError;
  const factory RegisterFailure.userAlreadyExist(String error) = UserAlreadyExistError;
}