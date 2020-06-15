// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named

part of 'login_input.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;
LoginInput _$LoginInputFromJson(Map<String, dynamic> json) {
  return _LoginInput.fromJson(json);
}

class _$LoginInputTearOff {
  const _$LoginInputTearOff();

  _LoginInput call({@required String email, @required String password}) {
    return _LoginInput(
      email: email,
      password: password,
    );
  }
}

// ignore: unused_element
const $LoginInput = _$LoginInputTearOff();

mixin _$LoginInput {
  String get email;
  String get password;

  Map<String, dynamic> toJson();
  $LoginInputCopyWith<LoginInput> get copyWith;
}

abstract class $LoginInputCopyWith<$Res> {
  factory $LoginInputCopyWith(
          LoginInput value, $Res Function(LoginInput) then) =
      _$LoginInputCopyWithImpl<$Res>;
  $Res call({String email, String password});
}

class _$LoginInputCopyWithImpl<$Res> implements $LoginInputCopyWith<$Res> {
  _$LoginInputCopyWithImpl(this._value, this._then);

  final LoginInput _value;
  // ignore: unused_field
  final $Res Function(LoginInput) _then;

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

abstract class _$LoginInputCopyWith<$Res> implements $LoginInputCopyWith<$Res> {
  factory _$LoginInputCopyWith(
          _LoginInput value, $Res Function(_LoginInput) then) =
      __$LoginInputCopyWithImpl<$Res>;
  @override
  $Res call({String email, String password});
}

class __$LoginInputCopyWithImpl<$Res> extends _$LoginInputCopyWithImpl<$Res>
    implements _$LoginInputCopyWith<$Res> {
  __$LoginInputCopyWithImpl(
      _LoginInput _value, $Res Function(_LoginInput) _then)
      : super(_value, (v) => _then(v as _LoginInput));

  @override
  _LoginInput get _value => super._value as _LoginInput;

  @override
  $Res call({
    Object email = freezed,
    Object password = freezed,
  }) {
    return _then(_LoginInput(
      email: email == freezed ? _value.email : email as String,
      password: password == freezed ? _value.password : password as String,
    ));
  }
}

@JsonSerializable()
class _$_LoginInput extends _LoginInput {
  const _$_LoginInput({@required this.email, @required this.password})
      : assert(email != null),
        assert(password != null),
        super._();

  factory _$_LoginInput.fromJson(Map<String, dynamic> json) =>
      _$_$_LoginInputFromJson(json);

  @override
  final String email;
  @override
  final String password;

  @override
  String toString() {
    return 'LoginInput(email: $email, password: $password)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _LoginInput &&
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
  _$LoginInputCopyWith<_LoginInput> get copyWith =>
      __$LoginInputCopyWithImpl<_LoginInput>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$_$_LoginInputToJson(this);
  }
}

abstract class _LoginInput extends LoginInput {
  const _LoginInput._() : super._();
  const factory _LoginInput(
      {@required String email, @required String password}) = _$_LoginInput;

  factory _LoginInput.fromJson(Map<String, dynamic> json) =
      _$_LoginInput.fromJson;

  @override
  String get email;
  @override
  String get password;
  @override
  _$LoginInputCopyWith<_LoginInput> get copyWith;
}
