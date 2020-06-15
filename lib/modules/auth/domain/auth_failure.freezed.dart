// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named

part of 'auth_failure.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

class _$AuthFailureTearOff {
  const _$AuthFailureTearOff();

  AuthFailureUnauthenticated unauthenticated() {
    return const AuthFailureUnauthenticated();
  }

  AuthFailureTokenExpired tokenExpired() {
    return const AuthFailureTokenExpired();
  }

  AuthFailureStorageError storageError(Exception e) {
    return AuthFailureStorageError(
      e,
    );
  }
}

// ignore: unused_element
const $AuthFailure = _$AuthFailureTearOff();

mixin _$AuthFailure {
  @optionalTypeArgs
  Result when<Result extends Object>({
    @required Result unauthenticated(),
    @required Result tokenExpired(),
    @required Result storageError(Exception e),
  });
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>({
    Result unauthenticated(),
    Result tokenExpired(),
    Result storageError(Exception e),
    @required Result orElse(),
  });
  @optionalTypeArgs
  Result map<Result extends Object>({
    @required Result unauthenticated(AuthFailureUnauthenticated value),
    @required Result tokenExpired(AuthFailureTokenExpired value),
    @required Result storageError(AuthFailureStorageError value),
  });
  @optionalTypeArgs
  Result maybeMap<Result extends Object>({
    Result unauthenticated(AuthFailureUnauthenticated value),
    Result tokenExpired(AuthFailureTokenExpired value),
    Result storageError(AuthFailureStorageError value),
    @required Result orElse(),
  });
}

abstract class $AuthFailureCopyWith<$Res> {
  factory $AuthFailureCopyWith(
          AuthFailure value, $Res Function(AuthFailure) then) =
      _$AuthFailureCopyWithImpl<$Res>;
}

class _$AuthFailureCopyWithImpl<$Res> implements $AuthFailureCopyWith<$Res> {
  _$AuthFailureCopyWithImpl(this._value, this._then);

  final AuthFailure _value;
  // ignore: unused_field
  final $Res Function(AuthFailure) _then;
}

abstract class $AuthFailureUnauthenticatedCopyWith<$Res> {
  factory $AuthFailureUnauthenticatedCopyWith(AuthFailureUnauthenticated value,
          $Res Function(AuthFailureUnauthenticated) then) =
      _$AuthFailureUnauthenticatedCopyWithImpl<$Res>;
}

class _$AuthFailureUnauthenticatedCopyWithImpl<$Res>
    extends _$AuthFailureCopyWithImpl<$Res>
    implements $AuthFailureUnauthenticatedCopyWith<$Res> {
  _$AuthFailureUnauthenticatedCopyWithImpl(AuthFailureUnauthenticated _value,
      $Res Function(AuthFailureUnauthenticated) _then)
      : super(_value, (v) => _then(v as AuthFailureUnauthenticated));

  @override
  AuthFailureUnauthenticated get _value =>
      super._value as AuthFailureUnauthenticated;
}

class _$AuthFailureUnauthenticated implements AuthFailureUnauthenticated {
  const _$AuthFailureUnauthenticated();

  @override
  String toString() {
    return 'AuthFailure.unauthenticated()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) || (other is AuthFailureUnauthenticated);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  Result when<Result extends Object>({
    @required Result unauthenticated(),
    @required Result tokenExpired(),
    @required Result storageError(Exception e),
  }) {
    assert(unauthenticated != null);
    assert(tokenExpired != null);
    assert(storageError != null);
    return unauthenticated();
  }

  @override
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>({
    Result unauthenticated(),
    Result tokenExpired(),
    Result storageError(Exception e),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (unauthenticated != null) {
      return unauthenticated();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  Result map<Result extends Object>({
    @required Result unauthenticated(AuthFailureUnauthenticated value),
    @required Result tokenExpired(AuthFailureTokenExpired value),
    @required Result storageError(AuthFailureStorageError value),
  }) {
    assert(unauthenticated != null);
    assert(tokenExpired != null);
    assert(storageError != null);
    return unauthenticated(this);
  }

  @override
  @optionalTypeArgs
  Result maybeMap<Result extends Object>({
    Result unauthenticated(AuthFailureUnauthenticated value),
    Result tokenExpired(AuthFailureTokenExpired value),
    Result storageError(AuthFailureStorageError value),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (unauthenticated != null) {
      return unauthenticated(this);
    }
    return orElse();
  }
}

abstract class AuthFailureUnauthenticated implements AuthFailure {
  const factory AuthFailureUnauthenticated() = _$AuthFailureUnauthenticated;
}

abstract class $AuthFailureTokenExpiredCopyWith<$Res> {
  factory $AuthFailureTokenExpiredCopyWith(AuthFailureTokenExpired value,
          $Res Function(AuthFailureTokenExpired) then) =
      _$AuthFailureTokenExpiredCopyWithImpl<$Res>;
}

class _$AuthFailureTokenExpiredCopyWithImpl<$Res>
    extends _$AuthFailureCopyWithImpl<$Res>
    implements $AuthFailureTokenExpiredCopyWith<$Res> {
  _$AuthFailureTokenExpiredCopyWithImpl(AuthFailureTokenExpired _value,
      $Res Function(AuthFailureTokenExpired) _then)
      : super(_value, (v) => _then(v as AuthFailureTokenExpired));

  @override
  AuthFailureTokenExpired get _value => super._value as AuthFailureTokenExpired;
}

class _$AuthFailureTokenExpired implements AuthFailureTokenExpired {
  const _$AuthFailureTokenExpired();

  @override
  String toString() {
    return 'AuthFailure.tokenExpired()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) || (other is AuthFailureTokenExpired);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  Result when<Result extends Object>({
    @required Result unauthenticated(),
    @required Result tokenExpired(),
    @required Result storageError(Exception e),
  }) {
    assert(unauthenticated != null);
    assert(tokenExpired != null);
    assert(storageError != null);
    return tokenExpired();
  }

  @override
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>({
    Result unauthenticated(),
    Result tokenExpired(),
    Result storageError(Exception e),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (tokenExpired != null) {
      return tokenExpired();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  Result map<Result extends Object>({
    @required Result unauthenticated(AuthFailureUnauthenticated value),
    @required Result tokenExpired(AuthFailureTokenExpired value),
    @required Result storageError(AuthFailureStorageError value),
  }) {
    assert(unauthenticated != null);
    assert(tokenExpired != null);
    assert(storageError != null);
    return tokenExpired(this);
  }

  @override
  @optionalTypeArgs
  Result maybeMap<Result extends Object>({
    Result unauthenticated(AuthFailureUnauthenticated value),
    Result tokenExpired(AuthFailureTokenExpired value),
    Result storageError(AuthFailureStorageError value),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (tokenExpired != null) {
      return tokenExpired(this);
    }
    return orElse();
  }
}

abstract class AuthFailureTokenExpired implements AuthFailure {
  const factory AuthFailureTokenExpired() = _$AuthFailureTokenExpired;
}

abstract class $AuthFailureStorageErrorCopyWith<$Res> {
  factory $AuthFailureStorageErrorCopyWith(AuthFailureStorageError value,
          $Res Function(AuthFailureStorageError) then) =
      _$AuthFailureStorageErrorCopyWithImpl<$Res>;
  $Res call({Exception e});
}

class _$AuthFailureStorageErrorCopyWithImpl<$Res>
    extends _$AuthFailureCopyWithImpl<$Res>
    implements $AuthFailureStorageErrorCopyWith<$Res> {
  _$AuthFailureStorageErrorCopyWithImpl(AuthFailureStorageError _value,
      $Res Function(AuthFailureStorageError) _then)
      : super(_value, (v) => _then(v as AuthFailureStorageError));

  @override
  AuthFailureStorageError get _value => super._value as AuthFailureStorageError;

  @override
  $Res call({
    Object e = freezed,
  }) {
    return _then(AuthFailureStorageError(
      e == freezed ? _value.e : e as Exception,
    ));
  }
}

class _$AuthFailureStorageError implements AuthFailureStorageError {
  const _$AuthFailureStorageError(this.e) : assert(e != null);

  @override
  final Exception e;

  @override
  String toString() {
    return 'AuthFailure.storageError(e: $e)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is AuthFailureStorageError &&
            (identical(other.e, e) ||
                const DeepCollectionEquality().equals(other.e, e)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(e);

  @override
  $AuthFailureStorageErrorCopyWith<AuthFailureStorageError> get copyWith =>
      _$AuthFailureStorageErrorCopyWithImpl<AuthFailureStorageError>(
          this, _$identity);

  @override
  @optionalTypeArgs
  Result when<Result extends Object>({
    @required Result unauthenticated(),
    @required Result tokenExpired(),
    @required Result storageError(Exception e),
  }) {
    assert(unauthenticated != null);
    assert(tokenExpired != null);
    assert(storageError != null);
    return storageError(e);
  }

  @override
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>({
    Result unauthenticated(),
    Result tokenExpired(),
    Result storageError(Exception e),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (storageError != null) {
      return storageError(e);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  Result map<Result extends Object>({
    @required Result unauthenticated(AuthFailureUnauthenticated value),
    @required Result tokenExpired(AuthFailureTokenExpired value),
    @required Result storageError(AuthFailureStorageError value),
  }) {
    assert(unauthenticated != null);
    assert(tokenExpired != null);
    assert(storageError != null);
    return storageError(this);
  }

  @override
  @optionalTypeArgs
  Result maybeMap<Result extends Object>({
    Result unauthenticated(AuthFailureUnauthenticated value),
    Result tokenExpired(AuthFailureTokenExpired value),
    Result storageError(AuthFailureStorageError value),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (storageError != null) {
      return storageError(this);
    }
    return orElse();
  }
}

abstract class AuthFailureStorageError implements AuthFailure {
  const factory AuthFailureStorageError(Exception e) =
      _$AuthFailureStorageError;

  Exception get e;
  $AuthFailureStorageErrorCopyWith<AuthFailureStorageError> get copyWith;
}
