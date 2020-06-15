// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named

part of 'auth_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

class _$AuthEventTearOff {
  const _$AuthEventTearOff();

  AuthEventGetUser getUser() {
    return const AuthEventGetUser();
  }

  AuthEventLogout logout() {
    return const AuthEventLogout();
  }
}

// ignore: unused_element
const $AuthEvent = _$AuthEventTearOff();

mixin _$AuthEvent {
  @optionalTypeArgs
  Result when<Result extends Object>({
    @required Result getUser(),
    @required Result logout(),
  });
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>({
    Result getUser(),
    Result logout(),
    @required Result orElse(),
  });
  @optionalTypeArgs
  Result map<Result extends Object>({
    @required Result getUser(AuthEventGetUser value),
    @required Result logout(AuthEventLogout value),
  });
  @optionalTypeArgs
  Result maybeMap<Result extends Object>({
    Result getUser(AuthEventGetUser value),
    Result logout(AuthEventLogout value),
    @required Result orElse(),
  });
}

abstract class $AuthEventCopyWith<$Res> {
  factory $AuthEventCopyWith(AuthEvent value, $Res Function(AuthEvent) then) =
      _$AuthEventCopyWithImpl<$Res>;
}

class _$AuthEventCopyWithImpl<$Res> implements $AuthEventCopyWith<$Res> {
  _$AuthEventCopyWithImpl(this._value, this._then);

  final AuthEvent _value;
  // ignore: unused_field
  final $Res Function(AuthEvent) _then;
}

abstract class $AuthEventGetUserCopyWith<$Res> {
  factory $AuthEventGetUserCopyWith(
          AuthEventGetUser value, $Res Function(AuthEventGetUser) then) =
      _$AuthEventGetUserCopyWithImpl<$Res>;
}

class _$AuthEventGetUserCopyWithImpl<$Res> extends _$AuthEventCopyWithImpl<$Res>
    implements $AuthEventGetUserCopyWith<$Res> {
  _$AuthEventGetUserCopyWithImpl(
      AuthEventGetUser _value, $Res Function(AuthEventGetUser) _then)
      : super(_value, (v) => _then(v as AuthEventGetUser));

  @override
  AuthEventGetUser get _value => super._value as AuthEventGetUser;
}

class _$AuthEventGetUser implements AuthEventGetUser {
  const _$AuthEventGetUser();

  @override
  String toString() {
    return 'AuthEvent.getUser()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) || (other is AuthEventGetUser);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  Result when<Result extends Object>({
    @required Result getUser(),
    @required Result logout(),
  }) {
    assert(getUser != null);
    assert(logout != null);
    return getUser();
  }

  @override
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>({
    Result getUser(),
    Result logout(),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (getUser != null) {
      return getUser();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  Result map<Result extends Object>({
    @required Result getUser(AuthEventGetUser value),
    @required Result logout(AuthEventLogout value),
  }) {
    assert(getUser != null);
    assert(logout != null);
    return getUser(this);
  }

  @override
  @optionalTypeArgs
  Result maybeMap<Result extends Object>({
    Result getUser(AuthEventGetUser value),
    Result logout(AuthEventLogout value),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (getUser != null) {
      return getUser(this);
    }
    return orElse();
  }
}

abstract class AuthEventGetUser implements AuthEvent {
  const factory AuthEventGetUser() = _$AuthEventGetUser;
}

abstract class $AuthEventLogoutCopyWith<$Res> {
  factory $AuthEventLogoutCopyWith(
          AuthEventLogout value, $Res Function(AuthEventLogout) then) =
      _$AuthEventLogoutCopyWithImpl<$Res>;
}

class _$AuthEventLogoutCopyWithImpl<$Res> extends _$AuthEventCopyWithImpl<$Res>
    implements $AuthEventLogoutCopyWith<$Res> {
  _$AuthEventLogoutCopyWithImpl(
      AuthEventLogout _value, $Res Function(AuthEventLogout) _then)
      : super(_value, (v) => _then(v as AuthEventLogout));

  @override
  AuthEventLogout get _value => super._value as AuthEventLogout;
}

class _$AuthEventLogout implements AuthEventLogout {
  const _$AuthEventLogout();

  @override
  String toString() {
    return 'AuthEvent.logout()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) || (other is AuthEventLogout);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  Result when<Result extends Object>({
    @required Result getUser(),
    @required Result logout(),
  }) {
    assert(getUser != null);
    assert(logout != null);
    return logout();
  }

  @override
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>({
    Result getUser(),
    Result logout(),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (logout != null) {
      return logout();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  Result map<Result extends Object>({
    @required Result getUser(AuthEventGetUser value),
    @required Result logout(AuthEventLogout value),
  }) {
    assert(getUser != null);
    assert(logout != null);
    return logout(this);
  }

  @override
  @optionalTypeArgs
  Result maybeMap<Result extends Object>({
    Result getUser(AuthEventGetUser value),
    Result logout(AuthEventLogout value),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (logout != null) {
      return logout(this);
    }
    return orElse();
  }
}

abstract class AuthEventLogout implements AuthEvent {
  const factory AuthEventLogout() = _$AuthEventLogout;
}

class _$AuthStateTearOff {
  const _$AuthStateTearOff();

  AuthStateLoading loading() {
    return const AuthStateLoading();
  }

  AuthStateGuest guest() {
    return const AuthStateGuest();
  }

  AuthStateUser user(User user) {
    return AuthStateUser(
      user,
    );
  }

  AuthStateFailure error(AuthFailure failure) {
    return AuthStateFailure(
      failure,
    );
  }
}

// ignore: unused_element
const $AuthState = _$AuthStateTearOff();

mixin _$AuthState {
  @optionalTypeArgs
  Result when<Result extends Object>({
    @required Result loading(),
    @required Result guest(),
    @required Result user(User user),
    @required Result error(AuthFailure failure),
  });
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>({
    Result loading(),
    Result guest(),
    Result user(User user),
    Result error(AuthFailure failure),
    @required Result orElse(),
  });
  @optionalTypeArgs
  Result map<Result extends Object>({
    @required Result loading(AuthStateLoading value),
    @required Result guest(AuthStateGuest value),
    @required Result user(AuthStateUser value),
    @required Result error(AuthStateFailure value),
  });
  @optionalTypeArgs
  Result maybeMap<Result extends Object>({
    Result loading(AuthStateLoading value),
    Result guest(AuthStateGuest value),
    Result user(AuthStateUser value),
    Result error(AuthStateFailure value),
    @required Result orElse(),
  });
}

abstract class $AuthStateCopyWith<$Res> {
  factory $AuthStateCopyWith(AuthState value, $Res Function(AuthState) then) =
      _$AuthStateCopyWithImpl<$Res>;
}

class _$AuthStateCopyWithImpl<$Res> implements $AuthStateCopyWith<$Res> {
  _$AuthStateCopyWithImpl(this._value, this._then);

  final AuthState _value;
  // ignore: unused_field
  final $Res Function(AuthState) _then;
}

abstract class $AuthStateLoadingCopyWith<$Res> {
  factory $AuthStateLoadingCopyWith(
          AuthStateLoading value, $Res Function(AuthStateLoading) then) =
      _$AuthStateLoadingCopyWithImpl<$Res>;
}

class _$AuthStateLoadingCopyWithImpl<$Res> extends _$AuthStateCopyWithImpl<$Res>
    implements $AuthStateLoadingCopyWith<$Res> {
  _$AuthStateLoadingCopyWithImpl(
      AuthStateLoading _value, $Res Function(AuthStateLoading) _then)
      : super(_value, (v) => _then(v as AuthStateLoading));

  @override
  AuthStateLoading get _value => super._value as AuthStateLoading;
}

class _$AuthStateLoading implements AuthStateLoading {
  const _$AuthStateLoading();

  @override
  String toString() {
    return 'AuthState.loading()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) || (other is AuthStateLoading);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  Result when<Result extends Object>({
    @required Result loading(),
    @required Result guest(),
    @required Result user(User user),
    @required Result error(AuthFailure failure),
  }) {
    assert(loading != null);
    assert(guest != null);
    assert(user != null);
    assert(error != null);
    return loading();
  }

  @override
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>({
    Result loading(),
    Result guest(),
    Result user(User user),
    Result error(AuthFailure failure),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (loading != null) {
      return loading();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  Result map<Result extends Object>({
    @required Result loading(AuthStateLoading value),
    @required Result guest(AuthStateGuest value),
    @required Result user(AuthStateUser value),
    @required Result error(AuthStateFailure value),
  }) {
    assert(loading != null);
    assert(guest != null);
    assert(user != null);
    assert(error != null);
    return loading(this);
  }

  @override
  @optionalTypeArgs
  Result maybeMap<Result extends Object>({
    Result loading(AuthStateLoading value),
    Result guest(AuthStateGuest value),
    Result user(AuthStateUser value),
    Result error(AuthStateFailure value),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (loading != null) {
      return loading(this);
    }
    return orElse();
  }
}

abstract class AuthStateLoading implements AuthState {
  const factory AuthStateLoading() = _$AuthStateLoading;
}

abstract class $AuthStateGuestCopyWith<$Res> {
  factory $AuthStateGuestCopyWith(
          AuthStateGuest value, $Res Function(AuthStateGuest) then) =
      _$AuthStateGuestCopyWithImpl<$Res>;
}

class _$AuthStateGuestCopyWithImpl<$Res> extends _$AuthStateCopyWithImpl<$Res>
    implements $AuthStateGuestCopyWith<$Res> {
  _$AuthStateGuestCopyWithImpl(
      AuthStateGuest _value, $Res Function(AuthStateGuest) _then)
      : super(_value, (v) => _then(v as AuthStateGuest));

  @override
  AuthStateGuest get _value => super._value as AuthStateGuest;
}

class _$AuthStateGuest implements AuthStateGuest {
  const _$AuthStateGuest();

  @override
  String toString() {
    return 'AuthState.guest()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) || (other is AuthStateGuest);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  Result when<Result extends Object>({
    @required Result loading(),
    @required Result guest(),
    @required Result user(User user),
    @required Result error(AuthFailure failure),
  }) {
    assert(loading != null);
    assert(guest != null);
    assert(user != null);
    assert(error != null);
    return guest();
  }

  @override
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>({
    Result loading(),
    Result guest(),
    Result user(User user),
    Result error(AuthFailure failure),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (guest != null) {
      return guest();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  Result map<Result extends Object>({
    @required Result loading(AuthStateLoading value),
    @required Result guest(AuthStateGuest value),
    @required Result user(AuthStateUser value),
    @required Result error(AuthStateFailure value),
  }) {
    assert(loading != null);
    assert(guest != null);
    assert(user != null);
    assert(error != null);
    return guest(this);
  }

  @override
  @optionalTypeArgs
  Result maybeMap<Result extends Object>({
    Result loading(AuthStateLoading value),
    Result guest(AuthStateGuest value),
    Result user(AuthStateUser value),
    Result error(AuthStateFailure value),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (guest != null) {
      return guest(this);
    }
    return orElse();
  }
}

abstract class AuthStateGuest implements AuthState {
  const factory AuthStateGuest() = _$AuthStateGuest;
}

abstract class $AuthStateUserCopyWith<$Res> {
  factory $AuthStateUserCopyWith(
          AuthStateUser value, $Res Function(AuthStateUser) then) =
      _$AuthStateUserCopyWithImpl<$Res>;
  $Res call({User user});

  $UserCopyWith<$Res> get user;
}

class _$AuthStateUserCopyWithImpl<$Res> extends _$AuthStateCopyWithImpl<$Res>
    implements $AuthStateUserCopyWith<$Res> {
  _$AuthStateUserCopyWithImpl(
      AuthStateUser _value, $Res Function(AuthStateUser) _then)
      : super(_value, (v) => _then(v as AuthStateUser));

  @override
  AuthStateUser get _value => super._value as AuthStateUser;

  @override
  $Res call({
    Object user = freezed,
  }) {
    return _then(AuthStateUser(
      user == freezed ? _value.user : user as User,
    ));
  }

  @override
  $UserCopyWith<$Res> get user {
    if (_value.user == null) {
      return null;
    }
    return $UserCopyWith<$Res>(_value.user, (value) {
      return _then(_value.copyWith(user: value));
    });
  }
}

class _$AuthStateUser implements AuthStateUser {
  const _$AuthStateUser(this.user) : assert(user != null);

  @override
  final User user;

  @override
  String toString() {
    return 'AuthState.user(user: $user)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is AuthStateUser &&
            (identical(other.user, user) ||
                const DeepCollectionEquality().equals(other.user, user)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(user);

  @override
  $AuthStateUserCopyWith<AuthStateUser> get copyWith =>
      _$AuthStateUserCopyWithImpl<AuthStateUser>(this, _$identity);

  @override
  @optionalTypeArgs
  Result when<Result extends Object>({
    @required Result loading(),
    @required Result guest(),
    @required Result user(User user),
    @required Result error(AuthFailure failure),
  }) {
    assert(loading != null);
    assert(guest != null);
    assert(user != null);
    assert(error != null);
    return user(this.user);
  }

  @override
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>({
    Result loading(),
    Result guest(),
    Result user(User user),
    Result error(AuthFailure failure),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (user != null) {
      return user(this.user);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  Result map<Result extends Object>({
    @required Result loading(AuthStateLoading value),
    @required Result guest(AuthStateGuest value),
    @required Result user(AuthStateUser value),
    @required Result error(AuthStateFailure value),
  }) {
    assert(loading != null);
    assert(guest != null);
    assert(user != null);
    assert(error != null);
    return user(this);
  }

  @override
  @optionalTypeArgs
  Result maybeMap<Result extends Object>({
    Result loading(AuthStateLoading value),
    Result guest(AuthStateGuest value),
    Result user(AuthStateUser value),
    Result error(AuthStateFailure value),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (user != null) {
      return user(this);
    }
    return orElse();
  }
}

abstract class AuthStateUser implements AuthState {
  const factory AuthStateUser(User user) = _$AuthStateUser;

  User get user;
  $AuthStateUserCopyWith<AuthStateUser> get copyWith;
}

abstract class $AuthStateFailureCopyWith<$Res> {
  factory $AuthStateFailureCopyWith(
          AuthStateFailure value, $Res Function(AuthStateFailure) then) =
      _$AuthStateFailureCopyWithImpl<$Res>;
  $Res call({AuthFailure failure});

  $AuthFailureCopyWith<$Res> get failure;
}

class _$AuthStateFailureCopyWithImpl<$Res> extends _$AuthStateCopyWithImpl<$Res>
    implements $AuthStateFailureCopyWith<$Res> {
  _$AuthStateFailureCopyWithImpl(
      AuthStateFailure _value, $Res Function(AuthStateFailure) _then)
      : super(_value, (v) => _then(v as AuthStateFailure));

  @override
  AuthStateFailure get _value => super._value as AuthStateFailure;

  @override
  $Res call({
    Object failure = freezed,
  }) {
    return _then(AuthStateFailure(
      failure == freezed ? _value.failure : failure as AuthFailure,
    ));
  }

  @override
  $AuthFailureCopyWith<$Res> get failure {
    if (_value.failure == null) {
      return null;
    }
    return $AuthFailureCopyWith<$Res>(_value.failure, (value) {
      return _then(_value.copyWith(failure: value));
    });
  }
}

class _$AuthStateFailure implements AuthStateFailure {
  const _$AuthStateFailure(this.failure) : assert(failure != null);

  @override
  final AuthFailure failure;

  @override
  String toString() {
    return 'AuthState.error(failure: $failure)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is AuthStateFailure &&
            (identical(other.failure, failure) ||
                const DeepCollectionEquality().equals(other.failure, failure)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(failure);

  @override
  $AuthStateFailureCopyWith<AuthStateFailure> get copyWith =>
      _$AuthStateFailureCopyWithImpl<AuthStateFailure>(this, _$identity);

  @override
  @optionalTypeArgs
  Result when<Result extends Object>({
    @required Result loading(),
    @required Result guest(),
    @required Result user(User user),
    @required Result error(AuthFailure failure),
  }) {
    assert(loading != null);
    assert(guest != null);
    assert(user != null);
    assert(error != null);
    return error(failure);
  }

  @override
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>({
    Result loading(),
    Result guest(),
    Result user(User user),
    Result error(AuthFailure failure),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (error != null) {
      return error(failure);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  Result map<Result extends Object>({
    @required Result loading(AuthStateLoading value),
    @required Result guest(AuthStateGuest value),
    @required Result user(AuthStateUser value),
    @required Result error(AuthStateFailure value),
  }) {
    assert(loading != null);
    assert(guest != null);
    assert(user != null);
    assert(error != null);
    return error(this);
  }

  @override
  @optionalTypeArgs
  Result maybeMap<Result extends Object>({
    Result loading(AuthStateLoading value),
    Result guest(AuthStateGuest value),
    Result user(AuthStateUser value),
    Result error(AuthStateFailure value),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (error != null) {
      return error(this);
    }
    return orElse();
  }
}

abstract class AuthStateFailure implements AuthState {
  const factory AuthStateFailure(AuthFailure failure) = _$AuthStateFailure;

  AuthFailure get failure;
  $AuthStateFailureCopyWith<AuthStateFailure> get copyWith;
}
