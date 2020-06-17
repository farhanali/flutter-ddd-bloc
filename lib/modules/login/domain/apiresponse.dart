import 'package:freezed_annotation/freezed_annotation.dart';

part 'apiresponse.freezed.dart';
part 'apiresponse.g.dart';

@freezed
abstract class ApiResponse implements _$ApiResponse {
  const ApiResponse._();
  const factory ApiResponse({
    @JsonKey(name: 'status') String status,
    @JsonKey(name: 'message') String message,
  }) = _ApiResponse;

  factory ApiResponse.fromJson(Map<String, dynamic> json) => _$ApiResponseFromJson(json);
}
