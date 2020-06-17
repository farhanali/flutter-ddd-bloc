import 'dart:convert';

import 'package:chopper/chopper.dart';

class TypeConverter extends JsonConverter {
  final Map<Type, Function> typeToJsonFactoryMap;

  const TypeConverter(this.typeToJsonFactoryMap);

  @override
  Response<BodyType> convertResponse<BodyType, InnerType>(Response response) {
    return response.copyWith(
      body: _fromJson<BodyType, InnerType>(
          response.body.toString(), typeToJsonFactoryMap[InnerType]),
    );
  }

  T _fromJson<T, InnerType>(String jsonData, Function jsonParser) {
    var jsonMap = json.decode(jsonData);

    if (jsonMap is List) {
      return jsonMap
          .map((item) => jsonParser(item as Map<String, dynamic>) as InnerType)
          .toList() as T;
    }

    return jsonParser(jsonMap);
  }
}
