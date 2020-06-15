// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named

part of 'login_info.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;
LoginInfo _$LoginInfoFromJson(Map<String, dynamic> json) {
  return _LoginInfo.fromJson(json);
}

class _$LoginInfoTearOff {
  const _$LoginInfoTearOff();

  _LoginInfo call({@required String email, @required String password}) {
    return _LoginInfo(
      email: email,
      password: password,
    );
  }
}

// ignore: unused_element
const $LoginInfo = _$LoginInfoTearOff();

mixin _$LoginInfo {
  String get email;
  String get password;

  Map<String, dynamic> toJson();
  $LoginInfoCopyWith<LoginInfo> get copyWith;
}

abstract class $LoginInfoCopyWith<$Res> {
  factory $LoginInfoCopyWith(LoginInfo value, $Res Function(LoginInfo) then) =
      _$LoginInfoCopyWithImpl<$Res>;
  $Res call({String email, String password});
}

class _$LoginInfoCopyWithImpl<$Res> implements $LoginInfoCopyWith<$Res> {
  _$LoginInfoCopyWithImpl(this._value, this._then);

  final LoginInfo _value;
  // ignore: unused_field
  final $Res Function(LoginInfo) _then;

  @override
  $Res call({
    Object email = freezed,
    Object password = freezed,
  }) {
    return _then(_value.copyWith(
      email: email == freezed ? _value.email : email as String,
      password: password == freezed ? _value.password : password as String,
    ));
  }
}

abstract class _$LoginInfoCopyWith<$Res> implements $LoginInfoCopyWith<$Res> {
  factory _$LoginInfoCopyWith(
          _LoginInfo value, $Res Function(_LoginInfo) then) =
      __$LoginInfoCopyWithImpl<$Res>;
  @override
  $Res call({String email, String password});
}

class __$LoginInfoCopyWithImpl<$Res> extends _$LoginInfoCopyWithImpl<$Res>
    implements _$LoginInfoCopyWith<$Res> {
  __$LoginInfoCopyWithImpl(_LoginInfo _value, $Res Function(_LoginInfo) _then)
      : super(_value, (v) => _then(v as _LoginInfo));

  @override
  _LoginInfo get _value => super._value as _LoginInfo;

  @override
  $Res call({
    Object email = freezed,
    Object password = freezed,
  }) {
    return _then(_LoginInfo(
      email: email == freezed ? _value.email : email as String,
      password: password == freezed ? _value.password : password as String,
    ));
  }
}

@JsonSerializable()
class _$_LoginInfo extends _LoginInfo {
  const _$_LoginInfo({@required this.email, @required this.password})
      : assert(email != null),
        assert(password != null),
        super._();

  factory _$_LoginInfo.fromJson(Map<String, dynamic> json) =>
      _$_$_LoginInfoFromJson(json);

  @override
  final String email;
  @override
  final String password;

  @override
  String toString() {
    return 'LoginInfo(email: $email, password: $password)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _LoginInfo &&
            (identical(other.email, email) ||
                const DeepCollectionEquality().equals(other.email, email)) &&
            (identical(other.password, password) ||
                const DeepCollectionEquality()
                    .equals(other.password, password)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(email) ^
      const DeepCollectionEquality().hash(password);

  @override
  _$LoginInfoCopyWith<_LoginInfo> get copyWith =>
      __$LoginInfoCopyWithImpl<_LoginInfo>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$_$_LoginInfoToJson(this);
  }
}

abstract class _LoginInfo extends LoginInfo {
  const _LoginInfo._() : super._();
  const factory _LoginInfo(
      {@required String email, @required String password}) = _$_LoginInfo;

  factory _LoginInfo.fromJson(Map<String, dynamic> json) =
      _$_LoginInfo.fromJson;

  @override
  String get email;
  @override
  String get password;
  @override
  _$LoginInfoCopyWith<_LoginInfo> get copyWith;
}
