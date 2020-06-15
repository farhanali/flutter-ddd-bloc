// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named

part of 'login_failure.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

class _$LoginFailureTearOff {
  const _$LoginFailureTearOff();

  ConnectionError connectionError() {
    return const ConnectionError();
  }

  ServerError serverError() {
    return const ServerError();
  }

  UserNotfoundError userNotFound() {
    return const UserNotfoundError();
  }

  InvalidLoginError invalidLogin(String error) {
    return InvalidLoginError(
      error,
    );
  }
}

// ignore: unused_element
const $LoginFailure = _$LoginFailureTearOff();

mixin _$LoginFailure {
  @optionalTypeArgs
  Result when<Result extends Object>({
    @required Result connectionError(),
    @required Result serverError(),
    @required Result userNotFound(),
    @required Result invalidLogin(String error),
  });
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>({
    Result connectionError(),
    Result serverError(),
    Result userNotFound(),
    Result invalidLogin(String error),
    @required Result orElse(),
  });
  @optionalTypeArgs
  Result map<Result extends Object>({
    @required Result connectionError(ConnectionError value),
    @required Result serverError(ServerError value),
    @required Result userNotFound(UserNotfoundError value),
    @required Result invalidLogin(InvalidLoginError value),
  });
  @optionalTypeArgs
  Result maybeMap<Result extends Object>({
    Result connectionError(ConnectionError value),
    Result serverError(ServerError value),
    Result userNotFound(UserNotfoundError value),
    Result invalidLogin(InvalidLoginError value),
    @required Result orElse(),
  });
}

abstract class $LoginFailureCopyWith<$Res> {
  factory $LoginFailureCopyWith(
          LoginFailure value, $Res Function(LoginFailure) then) =
      _$LoginFailureCopyWithImpl<$Res>;
}

class _$LoginFailureCopyWithImpl<$Res> implements $LoginFailureCopyWith<$Res> {
  _$LoginFailureCopyWithImpl(this._value, this._then);

  final LoginFailure _value;
  // ignore: unused_field
  final $Res Function(LoginFailure) _then;
}

abstract class $ConnectionErrorCopyWith<$Res> {
  factory $ConnectionErrorCopyWith(
          ConnectionError value, $Res Function(ConnectionError) then) =
      _$ConnectionErrorCopyWithImpl<$Res>;
}

class _$ConnectionErrorCopyWithImpl<$Res>
    extends _$LoginFailureCopyWithImpl<$Res>
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
    return 'LoginFailure.connectionError()';
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
    @required Result userNotFound(),
    @required Result invalidLogin(String error),
  }) {
    assert(connectionError != null);
    assert(serverError != null);
    assert(userNotFound != null);
    assert(invalidLogin != null);
    return connectionError();
  }

  @override
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>({
    Result connectionError(),
    Result serverError(),
    Result userNotFound(),
    Result invalidLogin(String error),
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
    @required Result userNotFound(UserNotfoundError value),
    @required Result invalidLogin(InvalidLoginError value),
  }) {
    assert(connectionError != null);
    assert(serverError != null);
    assert(userNotFound != null);
    assert(invalidLogin != null);
    return connectionError(this);
  }

  @override
  @optionalTypeArgs
  Result maybeMap<Result extends Object>({
    Result connectionError(ConnectionError value),
    Result serverError(ServerError value),
    Result userNotFound(UserNotfoundError value),
    Result invalidLogin(InvalidLoginError value),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (connectionError != null) {
      return connectionError(this);
    }
    return orElse();
  }
}

abstract class ConnectionError implements LoginFailure {
  const factory ConnectionError() = _$ConnectionError;
}

abstract class $ServerErrorCopyWith<$Res> {
  factory $ServerErrorCopyWith(
          ServerError value, $Res Function(ServerError) then) =
      _$ServerErrorCopyWithImpl<$Res>;
}

class _$ServerErrorCopyWithImpl<$Res> extends _$LoginFailureCopyWithImpl<$Res>
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
    return 'LoginFailure.serverError()';
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
    @required Result userNotFound(),
    @required Result invalidLogin(String error),
  }) {
    assert(connectionError != null);
    assert(serverError != null);
    assert(userNotFound != null);
    assert(invalidLogin != null);
    return serverError();
  }

  @override
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>({
    Result connectionError(),
    Result serverError(),
    Result userNotFound(),
    Result invalidLogin(String error),
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
    @required Result userNotFound(UserNotfoundError value),
    @required Result invalidLogin(InvalidLoginError value),
  }) {
    assert(connectionError != null);
    assert(serverError != null);
    assert(userNotFound != null);
    assert(invalidLogin != null);
    return serverError(this);
  }

  @override
  @optionalTypeArgs
  Result maybeMap<Result extends Object>({
    Result connectionError(ConnectionError value),
    Result serverError(ServerError value),
    Result userNotFound(UserNotfoundError value),
    Result invalidLogin(InvalidLoginError value),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (serverError != null) {
      return serverError(this);
    }
    return orElse();
  }
}

abstract class ServerError implements LoginFailure {
  const factory ServerError() = _$ServerError;
}

abstract class $UserNotfoundErrorCopyWith<$Res> {
  factory $UserNotfoundErrorCopyWith(
          UserNotfoundError value, $Res Function(UserNotfoundError) then) =
      _$UserNotfoundErrorCopyWithImpl<$Res>;
}

class _$UserNotfoundErrorCopyWithImpl<$Res>
    extends _$LoginFailureCopyWithImpl<$Res>
    implements $UserNotfoundErrorCopyWith<$Res> {
  _$UserNotfoundErrorCopyWithImpl(
      UserNotfoundError _value, $Res Function(UserNotfoundError) _then)
      : super(_value, (v) => _then(v as UserNotfoundError));

  @override
  UserNotfoundError get _value => super._value as UserNotfoundError;
}

class _$UserNotfoundError implements UserNotfoundError {
  const _$UserNotfoundError();

  @override
  String toString() {
    return 'LoginFailure.userNotFound()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) || (other is UserNotfoundError);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  Result when<Result extends Object>({
    @required Result connectionError(),
    @required Result serverError(),
    @required Result userNotFound(),
    @required Result invalidLogin(String error),
  }) {
    assert(connectionError != null);
    assert(serverError != null);
    assert(userNotFound != null);
    assert(invalidLogin != null);
    return userNotFound();
  }

  @override
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>({
    Result connectionError(),
    Result serverError(),
    Result userNotFound(),
    Result invalidLogin(String error),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (userNotFound != null) {
      return userNotFound();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  Result map<Result extends Object>({
    @required Result connectionError(ConnectionError value),
    @required Result serverError(ServerError value),
    @required Result userNotFound(UserNotfoundError value),
    @required Result invalidLogin(InvalidLoginError value),
  }) {
    assert(connectionError != null);
    assert(serverError != null);
    assert(userNotFound != null);
    assert(invalidLogin != null);
    return userNotFound(this);
  }

  @override
  @optionalTypeArgs
  Result maybeMap<Result extends Object>({
    Result connectionError(ConnectionError value),
    Result serverError(ServerError value),
    Result userNotFound(UserNotfoundError value),
    Result invalidLogin(InvalidLoginError value),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (userNotFound != null) {
      return userNotFound(this);
    }
    return orElse();
  }
}

abstract class UserNotfoundError implements LoginFailure {
  const factory UserNotfoundError() = _$UserNotfoundError;
}

abstract class $InvalidLoginErrorCopyWith<$Res> {
  factory $InvalidLoginErrorCopyWith(
          InvalidLoginError value, $Res Function(InvalidLoginError) then) =
      _$InvalidLoginErrorCopyWithImpl<$Res>;
  $Res call({String error});
}

class _$InvalidLoginErrorCopyWithImpl<$Res>
    extends _$LoginFailureCopyWithImpl<$Res>
    implements $InvalidLoginErrorCopyWith<$Res> {
  _$InvalidLoginErrorCopyWithImpl(
      InvalidLoginError _value, $Res Function(InvalidLoginError) _then)
      : super(_value, (v) => _then(v as InvalidLoginError));

  @override
  InvalidLoginError get _value => super._value as InvalidLoginError;

  @override
  $Res call({
    Object error = freezed,
  }) {
    return _then(InvalidLoginError(
      error == freezed ? _value.error : error as String,
    ));
  }
}

class _$InvalidLoginError implements InvalidLoginError {
  const _$InvalidLoginError(this.error) : assert(error != null);

  @override
  final String error;

  @override
  String toString() {
    return 'LoginFailure.invalidLogin(error: $error)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is InvalidLoginError &&
            (identical(other.error, error) ||
                const DeepCollectionEquality().equals(other.error, error)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(error);

  @override
  $InvalidLoginErrorCopyWith<InvalidLoginError> get copyWith =>
      _$InvalidLoginErrorCopyWithImpl<InvalidLoginError>(this, _$identity);

  @override
  @optionalTypeArgs
  Result when<Result extends Object>({
    @required Result connectionError(),
    @required Result serverError(),
    @required Result userNotFound(),
    @required Result invalidLogin(String error),
  }) {
    assert(connectionError != null);
    assert(serverError != null);
    assert(userNotFound != null);
    assert(invalidLogin != null);
    return invalidLogin(error);
  }

  @override
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>({
    Result connectionError(),
    Result serverError(),
    Result userNotFound(),
    Result invalidLogin(String error),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (invalidLogin != null) {
      return invalidLogin(error);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  Result map<Result extends Object>({
    @required Result connectionError(ConnectionError value),
    @required Result serverError(ServerError value),
    @required Result userNotFound(UserNotfoundError value),
    @required Result invalidLogin(InvalidLoginError value),
  }) {
    assert(connectionError != null);
    assert(serverError != null);
    assert(userNotFound != null);
    assert(invalidLogin != null);
    return invalidLogin(this);
  }

  @override
  @optionalTypeArgs
  Result maybeMap<Result extends Object>({
    Result connectionError(ConnectionError value),
    Result serverError(ServerError value),
    Result userNotFound(UserNotfoundError value),
    Result invalidLogin(InvalidLoginError value),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (invalidLogin != null) {
      return invalidLogin(this);
    }
    return orElse();
  }
}

abstract class InvalidLoginError implements LoginFailure {
  const factory InvalidLoginError(String error) = _$InvalidLoginError;

  String get error;
  $InvalidLoginErrorCopyWith<InvalidLoginError> get copyWith;
}
