// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named

part of 'register_failure.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

class _$RegisterFailureTearOff {
  const _$RegisterFailureTearOff();

  ConnectionError connectionError() {
    return const ConnectionError();
  }

  ServerError serverError() {
    return const ServerError();
  }

  MissingParameters missingParameters(String error) {
    return MissingParameters(
      error,
    );
  }

  ValidationError validationError(String error) {
    return ValidationError(
      error,
    );
  }

  UserAlreadyExistError userAlreadyExist(String error) {
    return UserAlreadyExistError(
      error,
    );
  }
}

// ignore: unused_element
const $RegisterFailure = _$RegisterFailureTearOff();

mixin _$RegisterFailure {
  @optionalTypeArgs
  Result when<Result extends Object>({
    @required Result connectionError(),
    @required Result serverError(),
    @required Result missingParameters(String error),
    @required Result validationError(String error),
    @required Result userAlreadyExist(String error),
  });
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>({
    Result connectionError(),
    Result serverError(),
    Result missingParameters(String error),
    Result validationError(String error),
    Result userAlreadyExist(String error),
    @required Result orElse(),
  });
  @optionalTypeArgs
  Result map<Result extends Object>({
    @required Result connectionError(ConnectionError value),
    @required Result serverError(ServerError value),
    @required Result missingParameters(MissingParameters value),
    @required Result validationError(ValidationError value),
    @required Result userAlreadyExist(UserAlreadyExistError value),
  });
  @optionalTypeArgs
  Result maybeMap<Result extends Object>({
    Result connectionError(ConnectionError value),
    Result serverError(ServerError value),
    Result missingParameters(MissingParameters value),
    Result validationError(ValidationError value),
    Result userAlreadyExist(UserAlreadyExistError value),
    @required Result orElse(),
  });
}

abstract class $RegisterFailureCopyWith<$Res> {
  factory $RegisterFailureCopyWith(
          RegisterFailure value, $Res Function(RegisterFailure) then) =
      _$RegisterFailureCopyWithImpl<$Res>;
}

class _$RegisterFailureCopyWithImpl<$Res>
    implements $RegisterFailureCopyWith<$Res> {
  _$RegisterFailureCopyWithImpl(this._value, this._then);

  final RegisterFailure _value;
  // ignore: unused_field
  final $Res Function(RegisterFailure) _then;
}

abstract class $ConnectionErrorCopyWith<$Res> {
  factory $ConnectionErrorCopyWith(
          ConnectionError value, $Res Function(ConnectionError) then) =
      _$ConnectionErrorCopyWithImpl<$Res>;
}

class _$ConnectionErrorCopyWithImpl<$Res>
    extends _$RegisterFailureCopyWithImpl<$Res>
    implements $ConnectionErrorCopyWith<$Res> {
  _$ConnectionErrorCopyWithImpl(
      ConnectionError _value, $Res Function(ConnectionError) _then)
      : super(_value, (v) => _then(v as ConnectionError));

  @override
  ConnectionError get _value => super._value as ConnectionError;
}

class _$ConnectionError implements ConnectionError {
  const _$ConnectionError();

  @override
  String toString() {
    return 'RegisterFailure.connectionError()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) || (other is ConnectionError);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  Result when<Result extends Object>({
    @required Result connectionError(),
    @required Result serverError(),
    @required Result missingParameters(String error),
    @required Result validationError(String error),
    @required Result userAlreadyExist(String error),
  }) {
    assert(connectionError != null);
    assert(serverError != null);
    assert(missingParameters != null);
    assert(validationError != null);
    assert(userAlreadyExist != null);
    return connectionError();
  }

  @override
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>({
    Result connectionError(),
    Result serverError(),
    Result missingParameters(String error),
    Result validationError(String error),
    Result userAlreadyExist(String error),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (connectionError != null) {
      return connectionError();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  Result map<Result extends Object>({
    @required Result connectionError(ConnectionError value),
    @required Result serverError(ServerError value),
    @required Result missingParameters(MissingParameters value),
    @required Result validationError(ValidationError value),
    @required Result userAlreadyExist(UserAlreadyExistError value),
  }) {
    assert(connectionError != null);
    assert(serverError != null);
    assert(missingParameters != null);
    assert(validationError != null);
    assert(userAlreadyExist != null);
    return connectionError(this);
  }

  @override
  @optionalTypeArgs
  Result maybeMap<Result extends Object>({
    Result connectionError(ConnectionError value),
    Result serverError(ServerError value),
    Result missingParameters(MissingParameters value),
    Result validationError(ValidationError value),
    Result userAlreadyExist(UserAlreadyExistError value),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (connectionError != null) {
      return connectionError(this);
    }
    return orElse();
  }
}

abstract class ConnectionError implements RegisterFailure {
  const factory ConnectionError() = _$ConnectionError;
}

abstract class $ServerErrorCopyWith<$Res> {
  factory $ServerErrorCopyWith(
          ServerError value, $Res Function(ServerError) then) =
      _$ServerErrorCopyWithImpl<$Res>;
}

class _$ServerErrorCopyWithImpl<$Res>
    extends _$RegisterFailureCopyWithImpl<$Res>
    implements $ServerErrorCopyWith<$Res> {
  _$ServerErrorCopyWithImpl(
      ServerError _value, $Res Function(ServerError) _then)
      : super(_value, (v) => _then(v as ServerError));

  @override
  ServerError get _value => super._value as ServerError;
}

class _$ServerError implements ServerError {
  const _$ServerError();

  @override
  String toString() {
    return 'RegisterFailure.serverError()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) || (other is ServerError);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  Result when<Result extends Object>({
    @required Result connectionError(),
    @required Result serverError(),
    @required Result missingParameters(String error),
    @required Result validationError(String error),
    @required Result userAlreadyExist(String error),
  }) {
    assert(connectionError != null);
    assert(serverError != null);
    assert(missingParameters != null);
    assert(validationError != null);
    assert(userAlreadyExist != null);
    return serverError();
  }

  @override
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>({
    Result connectionError(),
    Result serverError(),
    Result missingParameters(String error),
    Result validationError(String error),
    Result userAlreadyExist(String error),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (serverError != null) {
      return serverError();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  Result map<Result extends Object>({
    @required Result connectionError(ConnectionError value),
    @required Result serverError(ServerError value),
    @required Result missingParameters(MissingParameters value),
    @required Result validationError(ValidationError value),
    @required Result userAlreadyExist(UserAlreadyExistError value),
  }) {
    assert(connectionError != null);
    assert(serverError != null);
    assert(missingParameters != null);
    assert(validationError != null);
    assert(userAlreadyExist != null);
    return serverError(this);
  }

  @override
  @optionalTypeArgs
  Result maybeMap<Result extends Object>({
    Result connectionError(ConnectionError value),
    Result serverError(ServerError value),
    Result missingParameters(MissingParameters value),
    Result validationError(ValidationError value),
    Result userAlreadyExist(UserAlreadyExistError value),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (serverError != null) {
      return serverError(this);
    }
    return orElse();
  }
}

abstract class ServerError implements RegisterFailure {
  const factory ServerError() = _$ServerError;
}

abstract class $MissingParametersCopyWith<$Res> {
  factory $MissingParametersCopyWith(
          MissingParameters value, $Res Function(MissingParameters) then) =
      _$MissingParametersCopyWithImpl<$Res>;
  $Res call({String error});
}

class _$MissingParametersCopyWithImpl<$Res>
    extends _$RegisterFailureCopyWithImpl<$Res>
    implements $MissingParametersCopyWith<$Res> {
  _$MissingParametersCopyWithImpl(
      MissingParameters _value, $Res Function(MissingParameters) _then)
      : super(_value, (v) => _then(v as MissingParameters));

  @override
  MissingParameters get _value => super._value as MissingParameters;

  @override
  $Res call({
    Object error = freezed,
  }) {
    return _then(MissingParameters(
      error == freezed ? _value.error : error as String,
    ));
  }
}

class _$MissingParameters implements MissingParameters {
  const _$MissingParameters(this.error) : assert(error != null);

  @override
  final String error;

  @override
  String toString() {
    return 'RegisterFailure.missingParameters(error: $error)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is MissingParameters &&
            (identical(other.error, error) ||
                const DeepCollectionEquality().equals(other.error, error)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(error);

  @override
  $MissingParametersCopyWith<MissingParameters> get copyWith =>
      _$MissingParametersCopyWithImpl<MissingParameters>(this, _$identity);

  @override
  @optionalTypeArgs
  Result when<Result extends Object>({
    @required Result connectionError(),
    @required Result serverError(),
    @required Result missingParameters(String error),
    @required Result validationError(String error),
    @required Result userAlreadyExist(String error),
  }) {
    assert(connectionError != null);
    assert(serverError != null);
    assert(missingParameters != null);
    assert(validationError != null);
    assert(userAlreadyExist != null);
    return missingParameters(error);
  }

  @override
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>({
    Result connectionError(),
    Result serverError(),
    Result missingParameters(String error),
    Result validationError(String error),
    Result userAlreadyExist(String error),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (missingParameters != null) {
      return missingParameters(error);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  Result map<Result extends Object>({
    @required Result connectionError(ConnectionError value),
    @required Result serverError(ServerError value),
    @required Result missingParameters(MissingParameters value),
    @required Result validationError(ValidationError value),
    @required Result userAlreadyExist(UserAlreadyExistError value),
  }) {
    assert(connectionError != null);
    assert(serverError != null);
    assert(missingParameters != null);
    assert(validationError != null);
    assert(userAlreadyExist != null);
    return missingParameters(this);
  }

  @override
  @optionalTypeArgs
  Result maybeMap<Result extends Object>({
    Result connectionError(ConnectionError value),
    Result serverError(ServerError value),
    Result missingParameters(MissingParameters value),
    Result validationError(ValidationError value),
    Result userAlreadyExist(UserAlreadyExistError value),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (missingParameters != null) {
      return missingParameters(this);
    }
    return orElse();
  }
}

abstract class MissingParameters implements RegisterFailure {
  const factory MissingParameters(String error) = _$MissingParameters;

  String get error;
  $MissingParametersCopyWith<MissingParameters> get copyWith;
}

abstract class $ValidationErrorCopyWith<$Res> {
  factory $ValidationErrorCopyWith(
          ValidationError value, $Res Function(ValidationError) then) =
      _$ValidationErrorCopyWithImpl<$Res>;
  $Res call({String error});
}

class _$ValidationErrorCopyWithImpl<$Res>
    extends _$RegisterFailureCopyWithImpl<$Res>
    implements $ValidationErrorCopyWith<$Res> {
  _$ValidationErrorCopyWithImpl(
      ValidationError _value, $Res Function(ValidationError) _then)
      : super(_value, (v) => _then(v as ValidationError));

  @override
  ValidationError get _value => super._value as ValidationError;

  @override
  $Res call({
    Object error = freezed,
  }) {
    return _then(ValidationError(
      error == freezed ? _value.error : error as String,
    ));
  }
}

class _$ValidationError implements ValidationError {
  const _$ValidationError(this.error) : assert(error != null);

  @override
  final String error;

  @override
  String toString() {
    return 'RegisterFailure.validationError(error: $error)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is ValidationError &&
            (identical(other.error, error) ||
                const DeepCollectionEquality().equals(other.error, error)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(error);

  @override
  $ValidationErrorCopyWith<ValidationError> get copyWith =>
      _$ValidationErrorCopyWithImpl<ValidationError>(this, _$identity);

  @override
  @optionalTypeArgs
  Result when<Result extends Object>({
    @required Result connectionError(),
    @required Result serverError(),
    @required Result missingParameters(String error),
    @required Result validationError(String error),
    @required Result userAlreadyExist(String error),
  }) {
    assert(connectionError != null);
    assert(serverError != null);
    assert(missingParameters != null);
    assert(validationError != null);
    assert(userAlreadyExist != null);
    return validationError(error);
  }

  @override
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>({
    Result connectionError(),
    Result serverError(),
    Result missingParameters(String error),
    Result validationError(String error),
    Result userAlreadyExist(String error),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (validationError != null) {
      return validationError(error);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  Result map<Result extends Object>({
    @required Result connectionError(ConnectionError value),
    @required Result serverError(ServerError value),
    @required Result missingParameters(MissingParameters value),
    @required Result validationError(ValidationError value),
    @required Result userAlreadyExist(UserAlreadyExistError value),
  }) {
    assert(connectionError != null);
    assert(serverError != null);
    assert(missingParameters != null);
    assert(validationError != null);
    assert(userAlreadyExist != null);
    return validationError(this);
  }

  @override
  @optionalTypeArgs
  Result maybeMap<Result extends Object>({
    Result connectionError(ConnectionError value),
    Result serverError(ServerError value),
    Result missingParameters(MissingParameters value),
    Result validationError(ValidationError value),
    Result userAlreadyExist(UserAlreadyExistError value),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (validationError != null) {
      return validationError(this);
    }
    return orElse();
  }
}

abstract class ValidationError implements RegisterFailure {
  const factory ValidationError(String error) = _$ValidationError;

  String get error;
  $ValidationErrorCopyWith<ValidationError> get copyWith;
}

abstract class $UserAlreadyExistErrorCopyWith<$Res> {
  factory $UserAlreadyExistErrorCopyWith(UserAlreadyExistError value,
          $Res Function(UserAlreadyExistError) then) =
      _$UserAlreadyExistErrorCopyWithImpl<$Res>;
  $Res call({String error});
}

class _$UserAlreadyExistErrorCopyWithImpl<$Res>
    extends _$RegisterFailureCopyWithImpl<$Res>
    implements $UserAlreadyExistErrorCopyWith<$Res> {
  _$UserAlreadyExistErrorCopyWithImpl(
      UserAlreadyExistError _value, $Res Function(UserAlreadyExistError) _then)
      : super(_value, (v) => _then(v as UserAlreadyExistError));

  @override
  UserAlreadyExistError get _value => super._value as UserAlreadyExistError;

  @override
  $Res call({
    Object error = freezed,
  }) {
    return _then(UserAlreadyExistError(
      error == freezed ? _value.error : error as String,
    ));
  }
}

class _$UserAlreadyExistError implements UserAlreadyExistError {
  const _$UserAlreadyExistError(this.error) : assert(error != null);

  @override
  final String error;

  @override
  String toString() {
    return 'RegisterFailure.userAlreadyExist(error: $error)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is UserAlreadyExistError &&
            (identical(other.error, error) ||
                const DeepCollectionEquality().equals(other.error, error)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(error);

  @override
  $UserAlreadyExistErrorCopyWith<UserAlreadyExistError> get copyWith =>
      _$UserAlreadyExistErrorCopyWithImpl<UserAlreadyExistError>(
          this, _$identity);

  @override
  @optionalTypeArgs
  Result when<Result extends Object>({
    @required Result connectionError(),
    @required Result serverError(),
    @required Result missingParameters(String error),
    @required Result validationError(String error),
    @required Result userAlreadyExist(String error),
  }) {
    assert(connectionError != null);
    assert(serverError != null);
    assert(missingParameters != null);
    assert(validationError != null);
    assert(userAlreadyExist != null);
    return userAlreadyExist(error);
  }

  @override
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>({
    Result connectionError(),
    Result serverError(),
    Result missingParameters(String error),
    Result validationError(String error),
    Result userAlreadyExist(String error),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (userAlreadyExist != null) {
      return userAlreadyExist(error);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  Result map<Result extends Object>({
    @required Result connectionError(ConnectionError value),
    @required Result serverError(ServerError value),
    @required Result missingParameters(MissingParameters value),
    @required Result validationError(ValidationError value),
    @required Result userAlreadyExist(UserAlreadyExistError value),
  }) {
    assert(connectionError != null);
    assert(serverError != null);
    assert(missingParameters != null);
    assert(validationError != null);
    assert(userAlreadyExist != null);
    return userAlreadyExist(this);
  }

  @override
  @optionalTypeArgs
  Result maybeMap<Result extends Object>({
    Result connectionError(ConnectionError value),
    Result serverError(ServerError value),
    Result missingParameters(MissingParameters value),
    Result validationError(ValidationError value),
    Result userAlreadyExist(UserAlreadyExistError value),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (userAlreadyExist != null) {
      return userAlreadyExist(this);
    }
    return orElse();
  }
}

abstract class UserAlreadyExistError implements RegisterFailure {
  const factory UserAlreadyExistError(String error) = _$UserAlreadyExistError;

  String get error;
  $UserAlreadyExistErrorCopyWith<UserAlreadyExistError> get copyWith;
}
