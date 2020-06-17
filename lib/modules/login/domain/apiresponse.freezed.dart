// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named

part of 'apiresponse.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;
ApiResponse _$ApiResponseFromJson(Map<String, dynamic> json) {
  return _ApiResponse.fromJson(json);
}

class _$ApiResponseTearOff {
  const _$ApiResponseTearOff();

  _ApiResponse call(
      {@JsonKey(name: 'status') String status,
      @JsonKey(name: 'message') String message}) {
    return _ApiResponse(
      status: status,
      message: message,
    );
  }
}

// ignore: unused_element
const $ApiResponse = _$ApiResponseTearOff();

mixin _$ApiResponse {
  @JsonKey(name: 'status')
  String get status;
  @JsonKey(name: 'message')
  String get message;

  Map<String, dynamic> toJson();
  $ApiResponseCopyWith<ApiResponse> get copyWith;
}

abstract class $ApiResponseCopyWith<$Res> {
  factory $ApiResponseCopyWith(
          ApiResponse value, $Res Function(ApiResponse) then) =
      _$ApiResponseCopyWithImpl<$Res>;
  $Res call(
      {@JsonKey(name: 'status') String status,
      @JsonKey(name: 'message') String message});
}

class _$ApiResponseCopyWithImpl<$Res> implements $ApiResponseCopyWith<$Res> {
  _$ApiResponseCopyWithImpl(this._value, this._then);

  final ApiResponse _value;
  // ignore: unused_field
  final $Res Function(ApiResponse) _then;

  @override
  $Res call({
    Object status = freezed,
    Object message = freezed,
  }) {
    return _then(_value.copyWith(
      status: status == freezed ? _value.status : status as String,
      message: message == freezed ? _value.message : message as String,
    ));
  }
}

abstract class _$ApiResponseCopyWith<$Res>
    implements $ApiResponseCopyWith<$Res> {
  factory _$ApiResponseCopyWith(
          _ApiResponse value, $Res Function(_ApiResponse) then) =
      __$ApiResponseCopyWithImpl<$Res>;
  @override
  $Res call(
      {@JsonKey(name: 'status') String status,
      @JsonKey(name: 'message') String message});
}

class __$ApiResponseCopyWithImpl<$Res> extends _$ApiResponseCopyWithImpl<$Res>
    implements _$ApiResponseCopyWith<$Res> {
  __$ApiResponseCopyWithImpl(
      _ApiResponse _value, $Res Function(_ApiResponse) _then)
      : super(_value, (v) => _then(v as _ApiResponse));

  @override
  _ApiResponse get _value => super._value as _ApiResponse;

  @override
  $Res call({
    Object status = freezed,
    Object message = freezed,
  }) {
    return _then(_ApiResponse(
      status: status == freezed ? _value.status : status as String,
      message: message == freezed ? _value.message : message as String,
    ));
  }
}

@JsonSerializable()
class _$_ApiResponse extends _ApiResponse {
  const _$_ApiResponse(
      {@JsonKey(name: 'status') this.status,
      @JsonKey(name: 'message') this.message})
      : super._();

  factory _$_ApiResponse.fromJson(Map<String, dynamic> json) =>
      _$_$_ApiResponseFromJson(json);

  @override
  @JsonKey(name: 'status')
  final String status;
  @override
  @JsonKey(name: 'message')
  final String message;

  @override
  String toString() {
    return 'ApiResponse(status: $status, message: $message)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _ApiResponse &&
            (identical(other.status, status) ||
                const DeepCollectionEquality().equals(other.status, status)) &&
            (identical(other.message, message) ||
                const DeepCollectionEquality().equals(other.message, message)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(status) ^
      const DeepCollectionEquality().hash(message);

  @override
  _$ApiResponseCopyWith<_ApiResponse> get copyWith =>
      __$ApiResponseCopyWithImpl<_ApiResponse>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$_$_ApiResponseToJson(this);
  }
}

abstract class _ApiResponse extends ApiResponse {
  const _ApiResponse._() : super._();
  const factory _ApiResponse(
      {@JsonKey(name: 'status') String status,
      @JsonKey(name: 'message') String message}) = _$_ApiResponse;

  factory _ApiResponse.fromJson(Map<String, dynamic> json) =
      _$_ApiResponse.fromJson;

  @override
  @JsonKey(name: 'status')
  String get status;
  @override
  @JsonKey(name: 'message')
  String get message;
  @override
  _$ApiResponseCopyWith<_ApiResponse> get copyWith;
}
