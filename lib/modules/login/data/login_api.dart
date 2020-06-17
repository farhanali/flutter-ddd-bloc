import 'package:chopper/chopper.dart';

import '../../../common/api/type_convertor.dart';
import '../domain/user.dart';
import '../domain/apiresponse.dart';

part 'login_api.chopper.dart';

@ChopperApi(baseUrl: '/login')
abstract class LoginApi extends ChopperService {
  @Post()
  Future<Response<User>> login(@Body() Map<String, dynamic> body);

  static LoginApi create() {
    final client = ChopperClient(
      baseUrl: 'https://fluttermock.getsandbox.com:443',
      services: [
        _$LoginApi(),
      ],
      converter: TypeConverter({User: (jsonData) => User.fromJson(jsonData)}),
      interceptors: [HttpLoggingInterceptor()],
    );

    return _$LoginApi(client);
  }
}

@ChopperApi(baseUrl: '/register')
abstract class RegisterApi extends ChopperService {
  @Post()
  Future<Response<ApiResponse>> register(@Body() Map<String, dynamic> body);

  static RegisterApi create() {
    final client = ChopperClient(
      baseUrl: 'https://fluttermock.getsandbox.com:443',
      services: [
        _$RegisterApi(),
      ],
      converter: TypeConverter({ApiResponse: (jsonData) => ApiResponse.fromJson(jsonData)}),
      interceptors: [HttpLoggingInterceptor()],
    );

    return _$RegisterApi(client);
  }
}
