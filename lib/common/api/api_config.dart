import 'package:chopper/chopper.dart';
import 'package:injectable/injectable.dart';

abstract class ApiConfig {
  String get baseUrl;
  Converter get converter;
  ErrorConverter get errorConverter;
  Iterable<dynamic> get interceptors;
}

@Singleton(as: ApiConfig, env: Environment.dev)
class ApiConfigDev implements ApiConfig {
  @override
  String get baseUrl => 'https://fluttermock.getsandbox.com:443';

  @override
  Converter get converter => const JsonConverter();

  @override
  ErrorConverter get errorConverter => const JsonConverter();

  @override
  Iterable get interceptors => [HttpLoggingInterceptor()];
}

@Singleton(as: ApiConfig, env: Environment.test)
class ApiConfigTest extends ApiConfigDev {
  @override
  String get baseUrl => 'https://fluttermock.getsandbox.com:443';
}

@Singleton(as: ApiConfig, env: Environment.prod)
class ApiConfigProd extends ApiConfigDev {
  @override
  String get baseUrl => 'https://fluttermock.getsandbox.com:443';
}
