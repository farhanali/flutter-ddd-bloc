// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named

part of 'login_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

class _$LoginEventTearOff {
  const _$LoginEventTearOff();

  LoginEventSignin signin(LoginInfo info) {
    return LoginEventSignin(
      info,
    );
  }

  LoginEventSwitchToRegister switchToRegister() {
    return const LoginEventSwitchToRegister();
  }

  LoginEventSwitchToLogin switchToLogin() {
    return const LoginEventSwitchToLogin();
  }
}

// ignore: unused_element
const $LoginEvent = _$LoginEventTearOff();

mixin _$LoginEvent {
  @optionalTypeArgs
  Result when<Result extends Object>({
    @required Result signin(LoginInfo info),
    @required Result switchToRegister(),
    @required Result switchToLogin(),
  });
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>({
    Result signin(LoginInfo info),
    Result switchToRegister(),
    Result switchToLogin(),
    @required Result orElse(),
  });
  @optionalTypeArgs
  Result map<Result extends Object>({
    @required Result signin(LoginEventSignin value),
    @required Result switchToRegister(LoginEventSwitchToRegister value),
    @required Result switchToLogin(LoginEventSwitchToLogin value),
  });
  @optionalTypeArgs
  Result maybeMap<Result extends Object>({
    Result signin(LoginEventSignin value),
    Result switchToRegister(LoginEventSwitchToRegister value),
    Result switchToLogin(LoginEventSwitchToLogin value),
    @required Result orElse(),
  });
}

abstract class $LoginEventCopyWith<$Res> {
  factory $LoginEventCopyWith(
          LoginEvent value, $Res Function(LoginEvent) then) =
      _$LoginEventCopyWithImpl<$Res>;
}

class _$LoginEventCopyWithImpl<$Res> implements $LoginEventCopyWith<$Res> {
  _$LoginEventCopyWithImpl(this._value, this._then);

  final LoginEvent _value;
  // ignore: unused_field
  final $Res Function(LoginEvent) _then;
}

abstract class $LoginEventSigninCopyWith<$Res> {
  factory $LoginEventSigninCopyWith(
          LoginEventSignin value, $Res Function(LoginEventSignin) then) =
      _$LoginEventSigninCopyWithImpl<$Res>;
  $Res call({LoginInfo info});

  $LoginInfoCopyWith<$Res> get info;
}

class _$LoginEventSigninCopyWithImpl<$Res>
    extends _$LoginEventCopyWithImpl<$Res>
    implements $LoginEventSigninCopyWith<$Res> {
  _$LoginEventSigninCopyWithImpl(
      LoginEventSignin _value, $Res Function(LoginEventSignin) _then)
      : super(_value, (v) => _then(v as LoginEventSignin));

  @override
  LoginEventSignin get _value => super._value as LoginEventSignin;

  @override
  $Res call({
    Object info = freezed,
  }) {
    return _then(LoginEventSignin(
      info == freezed ? _value.info : info as LoginInfo,
    ));
  }

  @override
  $LoginInfoCopyWith<$Res> get info {
    if (_value.info == null) {
      return null;
    }
    return $LoginInfoCopyWith<$Res>(_value.info, (value) {
      return _then(_value.copyWith(info: value));
    });
  }
}

class _$LoginEventSignin implements LoginEventSignin {
  const _$LoginEventSignin(this.info) : assert(info != null);

  @override
  final LoginInfo info;

  @override
  String toString() {
    return 'LoginEvent.signin(info: $info)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is LoginEventSignin &&
            (identical(other.info, info) ||
                const DeepCollectionEquality().equals(other.info, info)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(info);

  @override
  $LoginEventSigninCopyWith<LoginEventSignin> get copyWith =>
      _$LoginEventSigninCopyWithImpl<LoginEventSignin>(this, _$identity);

  @override
  @optionalTypeArgs
  Result when<Result extends Object>({
    @required Result signin(LoginInfo info),
    @required Result switchToRegister(),
    @required Result switchToLogin(),
  }) {
    assert(signin != null);
    assert(switchToRegister != null);
    assert(switchToLogin != null);
    return signin(info);
  }

  @override
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>({
    Result signin(LoginInfo info),
    Result switchToRegister(),
    Result switchToLogin(),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (signin != null) {
      return signin(info);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  Result map<Result extends Object>({
    @required Result signin(LoginEventSignin value),
    @required Result switchToRegister(LoginEventSwitchToRegister value),
    @required Result switchToLogin(LoginEventSwitchToLogin value),
  }) {
    assert(signin != null);
    assert(switchToRegister != null);
    assert(switchToLogin != null);
    return signin(this);
  }

  @override
  @optionalTypeArgs
  Result maybeMap<Result extends Object>({
    Result signin(LoginEventSignin value),
    Result switchToRegister(LoginEventSwitchToRegister value),
    Result switchToLogin(LoginEventSwitchToLogin value),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (signin != null) {
      return signin(this);
    }
    return orElse();
  }
}

abstract class LoginEventSignin implements LoginEvent {
  const factory LoginEventSignin(LoginInfo info) = _$LoginEventSignin;

  LoginInfo get info;
  $LoginEventSigninCopyWith<LoginEventSignin> get copyWith;
}

abstract class $LoginEventSwitchToRegisterCopyWith<$Res> {
  factory $LoginEventSwitchToRegisterCopyWith(LoginEventSwitchToRegister value,
          $Res Function(LoginEventSwitchToRegister) then) =
      _$LoginEventSwitchToRegisterCopyWithImpl<$Res>;
}

class _$LoginEventSwitchToRegisterCopyWithImpl<$Res>
    extends _$LoginEventCopyWithImpl<$Res>
    implements $LoginEventSwitchToRegisterCopyWith<$Res> {
  _$LoginEventSwitchToRegisterCopyWithImpl(LoginEventSwitchToRegister _value,
      $Res Function(LoginEventSwitchToRegister) _then)
      : super(_value, (v) => _then(v as LoginEventSwitchToRegister));

  @override
  LoginEventSwitchToRegister get _value =>
      super._value as LoginEventSwitchToRegister;
}

class _$LoginEventSwitchToRegister implements LoginEventSwitchToRegister {
  const _$LoginEventSwitchToRegister();

  @override
  String toString() {
    return 'LoginEvent.switchToRegister()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) || (other is LoginEventSwitchToRegister);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  Result when<Result extends Object>({
    @required Result signin(LoginInfo info),
    @required Result switchToRegister(),
    @required Result switchToLogin(),
  }) {
    assert(signin != null);
    assert(switchToRegister != null);
    assert(switchToLogin != null);
    return switchToRegister();
  }

  @override
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>({
    Result signin(LoginInfo info),
    Result switchToRegister(),
    Result switchToLogin(),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (switchToRegister != null) {
      return switchToRegister();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  Result map<Result extends Object>({
    @required Result signin(LoginEventSignin value),
    @required Result switchToRegister(LoginEventSwitchToRegister value),
    @required Result switchToLogin(LoginEventSwitchToLogin value),
  }) {
    assert(signin != null);
    assert(switchToRegister != null);
    assert(switchToLogin != null);
    return switchToRegister(this);
  }

  @override
  @optionalTypeArgs
  Result maybeMap<Result extends Object>({
    Result signin(LoginEventSignin value),
    Result switchToRegister(LoginEventSwitchToRegister value),
    Result switchToLogin(LoginEventSwitchToLogin value),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (switchToRegister != null) {
      return switchToRegister(this);
    }
    return orElse();
  }
}

abstract class LoginEventSwitchToRegister implements LoginEvent {
  const factory LoginEventSwitchToRegister() = _$LoginEventSwitchToRegister;
}

abstract class $LoginEventSwitchToLoginCopyWith<$Res> {
  factory $LoginEventSwitchToLoginCopyWith(LoginEventSwitchToLogin value,
          $Res Function(LoginEventSwitchToLogin) then) =
      _$LoginEventSwitchToLoginCopyWithImpl<$Res>;
}

class _$LoginEventSwitchToLoginCopyWithImpl<$Res>
    extends _$LoginEventCopyWithImpl<$Res>
    implements $LoginEventSwitchToLoginCopyWith<$Res> {
  _$LoginEventSwitchToLoginCopyWithImpl(LoginEventSwitchToLogin _value,
      $Res Function(LoginEventSwitchToLogin) _then)
      : super(_value, (v) => _then(v as LoginEventSwitchToLogin));

  @override
  LoginEventSwitchToLogin get _value => super._value as LoginEventSwitchToLogin;
}

class _$LoginEventSwitchToLogin implements LoginEventSwitchToLogin {
  const _$LoginEventSwitchToLogin();

  @override
  String toString() {
    return 'LoginEvent.switchToLogin()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) || (other is LoginEventSwitchToLogin);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  Result when<Result extends Object>({
    @required Result signin(LoginInfo info),
    @required Result switchToRegister(),
    @required Result switchToLogin(),
  }) {
    assert(signin != null);
    assert(switchToRegister != null);
    assert(switchToLogin != null);
    return switchToLogin();
  }

  @override
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>({
    Result signin(LoginInfo info),
    Result switchToRegister(),
    Result switchToLogin(),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (switchToLogin != null) {
      return switchToLogin();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  Result map<Result extends Object>({
    @required Result signin(LoginEventSignin value),
    @required Result switchToRegister(LoginEventSwitchToRegister value),
    @required Result switchToLogin(LoginEventSwitchToLogin value),
  }) {
    assert(signin != null);
    assert(switchToRegister != null);
    assert(switchToLogin != null);
    return switchToLogin(this);
  }

  @override
  @optionalTypeArgs
  Result maybeMap<Result extends Object>({
    Result signin(LoginEventSignin value),
    Result switchToRegister(LoginEventSwitchToRegister value),
    Result switchToLogin(LoginEventSwitchToLogin value),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (switchToLogin != null) {
      return switchToLogin(this);
    }
    return orElse();
  }
}

abstract class LoginEventSwitchToLogin implements LoginEvent {
  const factory LoginEventSwitchToLogin() = _$LoginEventSwitchToLogin;
}

class _$LoginStateTearOff {
  const _$LoginStateTearOff();

  LoginStateInitialLogin initialLogin() {
    return const LoginStateInitialLogin();
  }

  LoginStateInitialRegister initialRegister() {
    return const LoginStateInitialRegister();
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
    @required Result initialLogin(),
    @required Result initialRegister(),
    @required Result inProgress(),
    @required Result success(User user),
    @required Result failed(LoginFailure failure),
  });
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>({
    Result initialLogin(),
    Result initialRegister(),
    Result inProgress(),
    Result success(User user),
    Result failed(LoginFailure failure),
    @required Result orElse(),
  });
  @optionalTypeArgs
  Result map<Result extends Object>({
    @required Result initialLogin(LoginStateInitialLogin value),
    @required Result initialRegister(LoginStateInitialRegister value),
    @required Result inProgress(LoginStateInProgress value),
    @required Result success(LoginStateSuccess value),
    @required Result failed(LoginStateFailed value),
  });
  @optionalTypeArgs
  Result maybeMap<Result extends Object>({
    Result initialLogin(LoginStateInitialLogin value),
    Result initialRegister(LoginStateInitialRegister value),
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

abstract class $LoginStateInitialLoginCopyWith<$Res> {
  factory $LoginStateInitialLoginCopyWith(LoginStateInitialLogin value,
          $Res Function(LoginStateInitialLogin) then) =
      _$LoginStateInitialLoginCopyWithImpl<$Res>;
}

class _$LoginStateInitialLoginCopyWithImpl<$Res>
    extends _$LoginStateCopyWithImpl<$Res>
    implements $LoginStateInitialLoginCopyWith<$Res> {
  _$LoginStateInitialLoginCopyWithImpl(LoginStateInitialLogin _value,
      $Res Function(LoginStateInitialLogin) _then)
      : super(_value, (v) => _then(v as LoginStateInitialLogin));

  @override
  LoginStateInitialLogin get _value => super._value as LoginStateInitialLogin;
}

class _$LoginStateInitialLogin implements LoginStateInitialLogin {
  const _$LoginStateInitialLogin();

  @override
  String toString() {
    return 'LoginState.initialLogin()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) || (other is LoginStateInitialLogin);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  Result when<Result extends Object>({
    @required Result initialLogin(),
    @required Result initialRegister(),
    @required Result inProgress(),
    @required Result success(User user),
    @required Result failed(LoginFailure failure),
  }) {
    assert(initialLogin != null);
    assert(initialRegister != null);
    assert(inProgress != null);
    assert(success != null);
    assert(failed != null);
    return initialLogin();
  }

  @override
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>({
    Result initialLogin(),
    Result initialRegister(),
    Result inProgress(),
    Result success(User user),
    Result failed(LoginFailure failure),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (initialLogin != null) {
      return initialLogin();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  Result map<Result extends Object>({
    @required Result initialLogin(LoginStateInitialLogin value),
    @required Result initialRegister(LoginStateInitialRegister value),
    @required Result inProgress(LoginStateInProgress value),
    @required Result success(LoginStateSuccess value),
    @required Result failed(LoginStateFailed value),
  }) {
    assert(initialLogin != null);
    assert(initialRegister != null);
    assert(inProgress != null);
    assert(success != null);
    assert(failed != null);
    return initialLogin(this);
  }

  @override
  @optionalTypeArgs
  Result maybeMap<Result extends Object>({
    Result initialLogin(LoginStateInitialLogin value),
    Result initialRegister(LoginStateInitialRegister value),
    Result inProgress(LoginStateInProgress value),
    Result success(LoginStateSuccess value),
    Result failed(LoginStateFailed value),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (initialLogin != null) {
      return initialLogin(this);
    }
    return orElse();
  }
}

abstract class LoginStateInitialLogin implements LoginState {
  const factory LoginStateInitialLogin() = _$LoginStateInitialLogin;
}

abstract class $LoginStateInitialRegisterCopyWith<$Res> {
  factory $LoginStateInitialRegisterCopyWith(LoginStateInitialRegister value,
          $Res Function(LoginStateInitialRegister) then) =
      _$LoginStateInitialRegisterCopyWithImpl<$Res>;
}

class _$LoginStateInitialRegisterCopyWithImpl<$Res>
    extends _$LoginStateCopyWithImpl<$Res>
    implements $LoginStateInitialRegisterCopyWith<$Res> {
  _$LoginStateInitialRegisterCopyWithImpl(LoginStateInitialRegister _value,
      $Res Function(LoginStateInitialRegister) _then)
      : super(_value, (v) => _then(v as LoginStateInitialRegister));

  @override
  LoginStateInitialRegister get _value =>
      super._value as LoginStateInitialRegister;
}

class _$LoginStateInitialRegister implements LoginStateInitialRegister {
  const _$LoginStateInitialRegister();

  @override
  String toString() {
    return 'LoginState.initialRegister()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) || (other is LoginStateInitialRegister);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  Result when<Result extends Object>({
    @required Result initialLogin(),
    @required Result initialRegister(),
    @required Result inProgress(),
    @required Result success(User user),
    @required Result failed(LoginFailure failure),
  }) {
    assert(initialLogin != null);
    assert(initialRegister != null);
    assert(inProgress != null);
    assert(success != null);
    assert(failed != null);
    return initialRegister();
  }

  @override
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>({
    Result initialLogin(),
    Result initialRegister(),
    Result inProgress(),
    Result success(User user),
    Result failed(LoginFailure failure),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (initialRegister != null) {
      return initialRegister();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  Result map<Result extends Object>({
    @required Result initialLogin(LoginStateInitialLogin value),
    @required Result initialRegister(LoginStateInitialRegister value),
    @required Result inProgress(LoginStateInProgress value),
    @required Result success(LoginStateSuccess value),
    @required Result failed(LoginStateFailed value),
  }) {
    assert(initialLogin != null);
    assert(initialRegister != null);
    assert(inProgress != null);
    assert(success != null);
    assert(failed != null);
    return initialRegister(this);
  }

  @override
  @optionalTypeArgs
  Result maybeMap<Result extends Object>({
    Result initialLogin(LoginStateInitialLogin value),
    Result initialRegister(LoginStateInitialRegister value),
    Result inProgress(LoginStateInProgress value),
    Result success(LoginStateSuccess value),
    Result failed(LoginStateFailed value),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (initialRegister != null) {
      return initialRegister(this);
    }
    return orElse();
  }
}

abstract class LoginStateInitialRegister implements LoginState {
  const factory LoginStateInitialRegister() = _$LoginStateInitialRegister;
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
    @required Result initialLogin(),
    @required Result initialRegister(),
    @required Result inProgress(),
    @required Result success(User user),
    @required Result failed(LoginFailure failure),
  }) {
    assert(initialLogin != null);
    assert(initialRegister != null);
    assert(inProgress != null);
    assert(success != null);
    assert(failed != null);
    return inProgress();
  }

  @override
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>({
    Result initialLogin(),
    Result initialRegister(),
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
    @required Result initialLogin(LoginStateInitialLogin value),
    @required Result initialRegister(LoginStateInitialRegister value),
    @required Result inProgress(LoginStateInProgress value),
    @required Result success(LoginStateSuccess value),
    @required Result failed(LoginStateFailed value),
  }) {
    assert(initialLogin != null);
    assert(initialRegister != null);
    assert(inProgress != null);
    assert(success != null);
    assert(failed != null);
    return inProgress(this);
  }

  @override
  @optionalTypeArgs
  Result maybeMap<Result extends Object>({
    Result initialLogin(LoginStateInitialLogin value),
    Result initialRegister(LoginStateInitialRegister value),
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
    @required Result initialLogin(),
    @required Result initialRegister(),
    @required Result inProgress(),
    @required Result success(User user),
    @required Result failed(LoginFailure failure),
  }) {
    assert(initialLogin != null);
    assert(initialRegister != null);
    assert(inProgress != null);
    assert(success != null);
    assert(failed != null);
    return success(user);
  }

  @override
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>({
    Result initialLogin(),
    Result initialRegister(),
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
    @required Result initialLogin(LoginStateInitialLogin value),
    @required Result initialRegister(LoginStateInitialRegister value),
    @required Result inProgress(LoginStateInProgress value),
    @required Result success(LoginStateSuccess value),
    @required Result failed(LoginStateFailed value),
  }) {
    assert(initialLogin != null);
    assert(initialRegister != null);
    assert(inProgress != null);
    assert(success != null);
    assert(failed != null);
    return success(this);
  }

  @override
  @optionalTypeArgs
  Result maybeMap<Result extends Object>({
    Result initialLogin(LoginStateInitialLogin value),
    Result initialRegister(LoginStateInitialRegister value),
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
    @required Result initialLogin(),
    @required Result initialRegister(),
    @required Result inProgress(),
    @required Result success(User user),
    @required Result failed(LoginFailure failure),
  }) {
    assert(initialLogin != null);
    assert(initialRegister != null);
    assert(inProgress != null);
    assert(success != null);
    assert(failed != null);
    return failed(failure);
  }

  @override
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>({
    Result initialLogin(),
    Result initialRegister(),
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
    @required Result initialLogin(LoginStateInitialLogin value),
    @required Result initialRegister(LoginStateInitialRegister value),
    @required Result inProgress(LoginStateInProgress value),
    @required Result success(LoginStateSuccess value),
    @required Result failed(LoginStateFailed value),
  }) {
    assert(initialLogin != null);
    assert(initialRegister != null);
    assert(inProgress != null);
    assert(success != null);
    assert(failed != null);
    return failed(this);
  }

  @override
  @optionalTypeArgs
  Result maybeMap<Result extends Object>({
    Result initialLogin(LoginStateInitialLogin value),
    Result initialRegister(LoginStateInitialRegister value),
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
