// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named

part of 'login_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

class _$LoginStateTearOff {
  const _$LoginStateTearOff();

  LoginStateInitial initial() {
    return const LoginStateInitial();
  }

  LoginStateInProgress inProgress() {
    return const LoginStateInProgress();
  }

  LoginStateSuccess success(User user) {
    return LoginStateSuccess(
      user,
    );
  }

  LoginStateFailed failed(LoginFailure failure) {
    return LoginStateFailed(
      failure,
    );
  }
}

// ignore: unused_element
const $LoginState = _$LoginStateTearOff();

mixin _$LoginState {
  @optionalTypeArgs
  Result when<Result extends Object>({
    @required Result initial(),
    @required Result inProgress(),
    @required Result success(User user),
    @required Result failed(LoginFailure failure),
  });
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>({
    Result initial(),
    Result inProgress(),
    Result success(User user),
    Result failed(LoginFailure failure),
    @required Result orElse(),
  });
  @optionalTypeArgs
  Result map<Result extends Object>({
    @required Result initial(LoginStateInitial value),
    @required Result inProgress(LoginStateInProgress value),
    @required Result success(LoginStateSuccess value),
    @required Result failed(LoginStateFailed value),
  });
  @optionalTypeArgs
  Result maybeMap<Result extends Object>({
    Result initial(LoginStateInitial value),
    Result inProgress(LoginStateInProgress value),
    Result success(LoginStateSuccess value),
    Result failed(LoginStateFailed value),
    @required Result orElse(),
  });
}

abstract class $LoginStateCopyWith<$Res> {
  factory $LoginStateCopyWith(
          LoginState value, $Res Function(LoginState) then) =
      _$LoginStateCopyWithImpl<$Res>;
}

class _$LoginStateCopyWithImpl<$Res> implements $LoginStateCopyWith<$Res> {
  _$LoginStateCopyWithImpl(this._value, this._then);

  final LoginState _value;
  // ignore: unused_field
  final $Res Function(LoginState) _then;
}

abstract class $LoginStateInitialCopyWith<$Res> {
  factory $LoginStateInitialCopyWith(
          LoginStateInitial value, $Res Function(LoginStateInitial) then) =
      _$LoginStateInitialCopyWithImpl<$Res>;
}

class _$LoginStateInitialCopyWithImpl<$Res>
    extends _$LoginStateCopyWithImpl<$Res>
    implements $LoginStateInitialCopyWith<$Res> {
  _$LoginStateInitialCopyWithImpl(
      LoginStateInitial _value, $Res Function(LoginStateInitial) _then)
      : super(_value, (v) => _then(v as LoginStateInitial));

  @override
  LoginStateInitial get _value => super._value as LoginStateInitial;
}

class _$LoginStateInitial implements LoginStateInitial {
  const _$LoginStateInitial();

  @override
  String toString() {
    return 'LoginState.initial()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) || (other is LoginStateInitial);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  Result when<Result extends Object>({
    @required Result initial(),
    @required Result inProgress(),
    @required Result success(User user),
    @required Result failed(LoginFailure failure),
  }) {
    assert(initial != null);
    assert(inProgress != null);
    assert(success != null);
    assert(failed != null);
    return initial();
  }

  @override
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>({
    Result initial(),
    Result inProgress(),
    Result success(User user),
    Result failed(LoginFailure failure),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (initial != null) {
      return initial();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  Result map<Result extends Object>({
    @required Result initial(LoginStateInitial value),
    @required Result inProgress(LoginStateInProgress value),
    @required Result success(LoginStateSuccess value),
    @required Result failed(LoginStateFailed value),
  }) {
    assert(initial != null);
    assert(inProgress != null);
    assert(success != null);
    assert(failed != null);
    return initial(this);
  }

  @override
  @optionalTypeArgs
  Result maybeMap<Result extends Object>({
    Result initial(LoginStateInitial value),
    Result inProgress(LoginStateInProgress value),
    Result success(LoginStateSuccess value),
    Result failed(LoginStateFailed value),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (initial != null) {
      return initial(this);
    }
    return orElse();
  }
}

abstract class LoginStateInitial implements LoginState {
  const factory LoginStateInitial() = _$LoginStateInitial;
}

abstract class $LoginStateInProgressCopyWith<$Res> {
  factory $LoginStateInProgressCopyWith(LoginStateInProgress value,
          $Res Function(LoginStateInProgress) then) =
      _$LoginStateInProgressCopyWithImpl<$Res>;
}

class _$LoginStateInProgressCopyWithImpl<$Res>
    extends _$LoginStateCopyWithImpl<$Res>
    implements $LoginStateInProgressCopyWith<$Res> {
  _$LoginStateInProgressCopyWithImpl(
      LoginStateInProgress _value, $Res Function(LoginStateInProgress) _then)
      : super(_value, (v) => _then(v as LoginStateInProgress));

  @override
  LoginStateInProgress get _value => super._value as LoginStateInProgress;
}

class _$LoginStateInProgress implements LoginStateInProgress {
  const _$LoginStateInProgress();

  @override
  String toString() {
    return 'LoginState.inProgress()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) || (other is LoginStateInProgress);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  Result when<Result extends Object>({
    @required Result initial(),
    @required Result inProgress(),
    @required Result success(User user),
    @required Result failed(LoginFailure failure),
  }) {
    assert(initial != null);
    assert(inProgress != null);
    assert(success != null);
    assert(failed != null);
    return inProgress();
  }

  @override
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>({
    Result initial(),
    Result inProgress(),
    Result success(User user),
    Result failed(LoginFailure failure),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (inProgress != null) {
      return inProgress();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  Result map<Result extends Object>({
    @required Result initial(LoginStateInitial value),
    @required Result inProgress(LoginStateInProgress value),
    @required Result success(LoginStateSuccess value),
    @required Result failed(LoginStateFailed value),
  }) {
    assert(initial != null);
    assert(inProgress != null);
    assert(success != null);
    assert(failed != null);
    return inProgress(this);
  }

  @override
  @optionalTypeArgs
  Result maybeMap<Result extends Object>({
    Result initial(LoginStateInitial value),
    Result inProgress(LoginStateInProgress value),
    Result success(LoginStateSuccess value),
    Result failed(LoginStateFailed value),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (inProgress != null) {
      return inProgress(this);
    }
    return orElse();
  }
}

abstract class LoginStateInProgress implements LoginState {
  const factory LoginStateInProgress() = _$LoginStateInProgress;
}

abstract class $LoginStateSuccessCopyWith<$Res> {
  factory $LoginStateSuccessCopyWith(
          LoginStateSuccess value, $Res Function(LoginStateSuccess) then) =
      _$LoginStateSuccessCopyWithImpl<$Res>;
  $Res call({User user});

  $UserCopyWith<$Res> get user;
}

class _$LoginStateSuccessCopyWithImpl<$Res>
    extends _$LoginStateCopyWithImpl<$Res>
    implements $LoginStateSuccessCopyWith<$Res> {
  _$LoginStateSuccessCopyWithImpl(
      LoginStateSuccess _value, $Res Function(LoginStateSuccess) _then)
      : super(_value, (v) => _then(v as LoginStateSuccess));

  @override
  LoginStateSuccess get _value => super._value as LoginStateSuccess;

  @override
  $Res call({
    Object user = freezed,
  }) {
    return _then(LoginStateSuccess(
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

class _$LoginStateSuccess implements LoginStateSuccess {
  const _$LoginStateSuccess(this.user) : assert(user != null);

  @override
  final User user;

  @override
  String toString() {
    return 'LoginState.success(user: $user)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is LoginStateSuccess &&
            (identical(other.user, user) ||
                const DeepCollectionEquality().equals(other.user, user)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(user);

  @override
  $LoginStateSuccessCopyWith<LoginStateSuccess> get copyWith =>
      _$LoginStateSuccessCopyWithImpl<LoginStateSuccess>(this, _$identity);

  @override
  @optionalTypeArgs
  Result when<Result extends Object>({
    @required Result initial(),
    @required Result inProgress(),
    @required Result success(User user),
    @required Result failed(LoginFailure failure),
  }) {
    assert(initial != null);
    assert(inProgress != null);
    assert(success != null);
    assert(failed != null);
    return success(user);
  }

  @override
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>({
    Result initial(),
    Result inProgress(),
    Result success(User user),
    Result failed(LoginFailure failure),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (success != null) {
      return success(user);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  Result map<Result extends Object>({
    @required Result initial(LoginStateInitial value),
    @required Result inProgress(LoginStateInProgress value),
    @required Result success(LoginStateSuccess value),
    @required Result failed(LoginStateFailed value),
  }) {
    assert(initial != null);
    assert(inProgress != null);
    assert(success != null);
    assert(failed != null);
    return success(this);
  }

  @override
  @optionalTypeArgs
  Result maybeMap<Result extends Object>({
    Result initial(LoginStateInitial value),
    Result inProgress(LoginStateInProgress value),
    Result success(LoginStateSuccess value),
    Result failed(LoginStateFailed value),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (success != null) {
      return success(this);
    }
    return orElse();
  }
}

abstract class LoginStateSuccess implements LoginState {
  const factory LoginStateSuccess(User user) = _$LoginStateSuccess;

  User get user;
  $LoginStateSuccessCopyWith<LoginStateSuccess> get copyWith;
}

abstract class $LoginStateFailedCopyWith<$Res> {
  factory $LoginStateFailedCopyWith(
          LoginStateFailed value, $Res Function(LoginStateFailed) then) =
      _$LoginStateFailedCopyWithImpl<$Res>;
  $Res call({LoginFailure failure});

  $LoginFailureCopyWith<$Res> get failure;
}

class _$LoginStateFailedCopyWithImpl<$Res>
    extends _$LoginStateCopyWithImpl<$Res>
    implements $LoginStateFailedCopyWith<$Res> {
  _$LoginStateFailedCopyWithImpl(
      LoginStateFailed _value, $Res Function(LoginStateFailed) _then)
      : super(_value, (v) => _then(v as LoginStateFailed));

  @override
  LoginStateFailed get _value => super._value as LoginStateFailed;

  @override
  $Res call({
    Object failure = freezed,
  }) {
    return _then(LoginStateFailed(
      failure == freezed ? _value.failure : failure as LoginFailure,
    ));
  }

  @override
  $LoginFailureCopyWith<$Res> get failure {
    if (_value.failure == null) {
      return null;
    }
    return $LoginFailureCopyWith<$Res>(_value.failure, (value) {
      return _then(_value.copyWith(failure: value));
    });
  }
}

class _$LoginStateFailed implements LoginStateFailed {
  const _$LoginStateFailed(this.failure) : assert(failure != null);

  @override
  final LoginFailure failure;

  @override
  String toString() {
    return 'LoginState.failed(failure: $failure)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is LoginStateFailed &&
            (identical(other.failure, failure) ||
                const DeepCollectionEquality().equals(other.failure, failure)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(failure);

  @override
  $LoginStateFailedCopyWith<LoginStateFailed> get copyWith =>
      _$LoginStateFailedCopyWithImpl<LoginStateFailed>(this, _$identity);

  @override
  @optionalTypeArgs
  Result when<Result extends Object>({
    @required Result initial(),
    @required Result inProgress(),
    @required Result success(User user),
    @required Result failed(LoginFailure failure),
  }) {
    assert(initial != null);
    assert(inProgress != null);
    assert(success != null);
    assert(failed != null);
    return failed(failure);
  }

  @override
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>({
    Result initial(),
    Result inProgress(),
    Result success(User user),
    Result failed(LoginFailure failure),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (failed != null) {
      return failed(failure);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  Result map<Result extends Object>({
    @required Result initial(LoginStateInitial value),
    @required Result inProgress(LoginStateInProgress value),
    @required Result success(LoginStateSuccess value),
    @required Result failed(LoginStateFailed value),
  }) {
    assert(initial != null);
    assert(inProgress != null);
    assert(success != null);
    assert(failed != null);
    return failed(this);
  }

  @override
  @optionalTypeArgs
  Result maybeMap<Result extends Object>({
    Result initial(LoginStateInitial value),
    Result inProgress(LoginStateInProgress value),
    Result success(LoginStateSuccess value),
    Result failed(LoginStateFailed value),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (failed != null) {
      return failed(this);
    }
    return orElse();
  }
}

abstract class LoginStateFailed implements LoginState {
  const factory LoginStateFailed(LoginFailure failure) = _$LoginStateFailed;

  LoginFailure get failure;
  $LoginStateFailedCopyWith<LoginStateFailed> get copyWith;
}
