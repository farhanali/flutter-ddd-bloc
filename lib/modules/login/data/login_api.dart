import 'package:chopper/chopper.dart';
import 'package:injectable/injectable.dart';

import '../../../common/api/api_client.dart';
import '../../../common/api/type_convertor.dart';
import '../domain/user.dart';

part 'login_api.chopper.dart';

@injectable
@ChopperApi(baseUrl: '/login')
abstract class LoginApi extends ChopperService {
  @Post()
  Future<Response<User>> login(@Body() Map<String, dynamic> body);

  @factoryMethod
  static LoginApi create(ApiClient apiClient) {
    final ChopperClient client = apiClient.create(
      services: [_$LoginApi()],
      converter: TypeConverter({User: (jsonData) => User.fromJson(jsonData)}),
    );

    return _$LoginApi(client);
  }
}
