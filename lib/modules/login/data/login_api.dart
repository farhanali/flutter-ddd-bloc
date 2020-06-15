import 'package:chopper/chopper.dart';

import '../domain/user.dart';
import 'type_convertor.dart';

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
