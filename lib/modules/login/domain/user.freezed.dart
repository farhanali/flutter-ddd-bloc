// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named

part of 'user.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;
User _$UserFromJson(Map<String, dynamic> json) {
  return _User.fromJson(json);
}

class _$UserTearOff {
  const _$UserTearOff();

  _User call(
      {@required String name,
      @required String email,
      @JsonKey(name: 'access_token') String token}) {
    return _User(
      name: name,
      email: email,
      token: token,
    );
  }
}

// ignore: unused_element
const $User = _$UserTearOff();

mixin _$User {
  String get name;
  String get email;
  @JsonKey(name: 'access_token')
  String get token;

  Map<String, dynamic> toJson();
  $UserCopyWith<User> get copyWith;
}

abstract class $UserCopyWith<$Res> {
  factory $UserCopyWith(User value, $Res Function(User) then) =
      _$UserCopyWithImpl<$Res>;
  $Res call(
      {String name, String email, @JsonKey(name: 'access_token') String token});
}

class _$UserCopyWithImpl<$Res> implements $UserCopyWith<$Res> {
  _$UserCopyWithImpl(this._value, this._then);

  final User _value;
  // ignore: unused_field
  final $Res Function(User) _then;

  @override
  $Res call({
    Object name = freezed,
    Object email = freezed,
    Object token = freezed,
  }) {
    return _then(_value.copyWith(
      name: name == freezed ? _value.name : name as String,
      email: email == freezed ? _value.email : email as String,
      token: token == freezed ? _value.token : token as String,
    ));
  }
}

abstract class _$UserCopyWith<$Res> implements $UserCopyWith<$Res> {
  factory _$UserCopyWith(_User value, $Res Function(_User) then) =
      __$UserCopyWithImpl<$Res>;
  @override
  $Res call(
      {String name, String email, @JsonKey(name: 'access_token') String token});
}

class __$UserCopyWithImpl<$Res> extends _$UserCopyWithImpl<$Res>
    implements _$UserCopyWith<$Res> {
  __$UserCopyWithImpl(_User _value, $Res Function(_User) _then)
      : super(_value, (v) => _then(v as _User));

  @override
  _User get _value => super._value as _User;

  @override
  $Res call({
    Object name = freezed,
    Object email = freezed,
    Object token = freezed,
  }) {
    return _then(_User(
      name: name == freezed ? _value.name : name as String,
      email: email == freezed ? _value.email : email as String,
      token: token == freezed ? _value.token : token as String,
    ));
  }
}

@JsonSerializable()
class _$_User extends _User {
  const _$_User(
      {@required this.name,
      @required this.email,
      @JsonKey(name: 'access_token') this.token})
      : assert(name != null),
        assert(email != null),
        super._();

  factory _$_User.fromJson(Map<String, dynamic> json) =>
      _$_$_UserFromJson(json);

  @override
  final String name;
  @override
  final String email;
  @override
  @JsonKey(name: 'access_token')
  final String token;

  @override
  String toString() {
    return 'User(name: $name, email: $email, token: $token)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _User &&
            (identical(other.name, name) ||
                const DeepCollectionEquality().equals(other.name, name)) &&
            (identical(other.email, email) ||
                const DeepCollectionEquality().equals(other.email, email)) &&
            (identical(other.token, token) ||
                const DeepCollectionEquality().equals(other.token, token)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(name) ^
      const DeepCollectionEquality().hash(email) ^
      const DeepCollectionEquality().hash(token);

  @override
  _$UserCopyWith<_User> get copyWith =>
      __$UserCopyWithImpl<_User>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$_$_UserToJson(this);
  }
}

abstract class _User extends User {
  const _User._() : super._();
  const factory _User(
      {@required String name,
      @required String email,
      @JsonKey(name: 'access_token') String token}) = _$_User;

  factory _User.fromJson(Map<String, dynamic> json) = _$_User.fromJson;

  @override
  String get name;
  @override
  String get email;
  @override
  @JsonKey(name: 'access_token')
  String get token;
  @override
  _$UserCopyWith<_User> get copyWith;
}
