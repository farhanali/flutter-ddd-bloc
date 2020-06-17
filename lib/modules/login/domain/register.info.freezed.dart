// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named

part of 'register.info.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;
RegisterInfo _$RegisterInfoFromJson(Map<String, dynamic> json) {
  return _RegisterInfo.fromJson(json);
}

class _$RegisterInfoTearOff {
  const _$RegisterInfoTearOff();

  _RegisterInfo call(
      {@required String name,
      @required String email,
      @required String password}) {
    return _RegisterInfo(
      name: name,
      email: email,
      password: password,
    );
  }
}

// ignore: unused_element
const $RegisterInfo = _$RegisterInfoTearOff();

mixin _$RegisterInfo {
  String get name;
  String get email;
  String get password;

  Map<String, dynamic> toJson();
  $RegisterInfoCopyWith<RegisterInfo> get copyWith;
}

abstract class $RegisterInfoCopyWith<$Res> {
  factory $RegisterInfoCopyWith(
          RegisterInfo value, $Res Function(RegisterInfo) then) =
      _$RegisterInfoCopyWithImpl<$Res>;
  $Res call({String name, String email, String password});
}

class _$RegisterInfoCopyWithImpl<$Res> implements $RegisterInfoCopyWith<$Res> {
  _$RegisterInfoCopyWithImpl(this._value, this._then);

  final RegisterInfo _value;
  // ignore: unused_field
  final $Res Function(RegisterInfo) _then;

  @override
  $Res call({
    Object name = freezed,
    Object email = freezed,
    Object password = freezed,
  }) {
    return _then(_value.copyWith(
      name: name == freezed ? _value.name : name as String,
      email: email == freezed ? _value.email : email as String,
      password: password == freezed ? _value.password : password as String,
    ));
  }
}

abstract class _$RegisterInfoCopyWith<$Res>
    implements $RegisterInfoCopyWith<$Res> {
  factory _$RegisterInfoCopyWith(
          _RegisterInfo value, $Res Function(_RegisterInfo) then) =
      __$RegisterInfoCopyWithImpl<$Res>;
  @override
  $Res call({String name, String email, String password});
}

class __$RegisterInfoCopyWithImpl<$Res> extends _$RegisterInfoCopyWithImpl<$Res>
    implements _$RegisterInfoCopyWith<$Res> {
  __$RegisterInfoCopyWithImpl(
      _RegisterInfo _value, $Res Function(_RegisterInfo) _then)
      : super(_value, (v) => _then(v as _RegisterInfo));

  @override
  _RegisterInfo get _value => super._value as _RegisterInfo;

  @override
  $Res call({
    Object name = freezed,
    Object email = freezed,
    Object password = freezed,
  }) {
    return _then(_RegisterInfo(
      name: name == freezed ? _value.name : name as String,
      email: email == freezed ? _value.email : email as String,
      password: password == freezed ? _value.password : password as String,
    ));
  }
}

@JsonSerializable()
class _$_RegisterInfo extends _RegisterInfo {
  const _$_RegisterInfo(
      {@required this.name, @required this.email, @required this.password})
      : assert(name != null),
        assert(email != null),
        assert(password != null),
        super._();

  factory _$_RegisterInfo.fromJson(Map<String, dynamic> json) =>
      _$_$_RegisterInfoFromJson(json);

  @override
  final String name;
  @override
  final String email;
  @override
  final String password;

  @override
  String toString() {
    return 'RegisterInfo(name: $name, email: $email, password: $password)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _RegisterInfo &&
            (identical(other.name, name) ||
                const DeepCollectionEquality().equals(other.name, name)) &&
            (identical(other.email, email) ||
                const DeepCollectionEquality().equals(other.email, email)) &&
            (identical(other.password, password) ||
                const DeepCollectionEquality()
                    .equals(other.password, password)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(name) ^
      const DeepCollectionEquality().hash(email) ^
      const DeepCollectionEquality().hash(password);

  @override
  _$RegisterInfoCopyWith<_RegisterInfo> get copyWith =>
      __$RegisterInfoCopyWithImpl<_RegisterInfo>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$_$_RegisterInfoToJson(this);
  }
}

abstract class _RegisterInfo extends RegisterInfo {
  const _RegisterInfo._() : super._();
  const factory _RegisterInfo(
      {@required String name,
      @required String email,
      @required String password}) = _$_RegisterInfo;

  factory _RegisterInfo.fromJson(Map<String, dynamic> json) =
      _$_RegisterInfo.fromJson;

  @override
  String get name;
  @override
  String get email;
  @override
  String get password;
  @override
  _$RegisterInfoCopyWith<_RegisterInfo> get copyWith;
}
