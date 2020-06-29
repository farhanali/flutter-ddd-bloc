import 'package:chopper/chopper.dart';
import 'package:injectable/injectable.dart';

import 'api_config.dart';

@singleton
class ApiClient {
  final ApiConfig _config;

  ApiClient(this._config);

  ChopperClient create({
    String baseUrl,
    Converter converter,
    ErrorConverter errorConverter,
    Iterable<dynamic> interceptors,
    Iterable<ChopperService> services = const [],
  }) {
    return ChopperClient(
      baseUrl: baseUrl ?? _config.baseUrl,
      converter: converter ?? _config.converter,
      errorConverter: errorConverter ?? _config.errorConverter,
      interceptors: interceptors ?? _config.interceptors,
      services: services,
    );
  }
}
