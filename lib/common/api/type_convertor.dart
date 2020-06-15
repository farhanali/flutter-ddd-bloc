import 'dart:convert';

import 'package:chopper/chopper.dart';

class TypeConverter extends JsonConverter {
  final Map<Type, Function> typeToJsonFactoryMap;

  TypeConverter(this.typeToJsonFactoryMap);

  @override
  Response<BodyType> convertResponse<BodyType, InnerType>(Response response) {
    return response.copyWith(
      body: fromJson<BodyType, InnerType>(
          response.body, typeToJsonFactoryMap[InnerType]),
    );
  }

  T fromJson<T, InnerType>(String jsonData, Function jsonParser) {
    var jsonMap = json.decode(jsonData);

    if (jsonMap is List) {
      return jsonMap
          .map((item) => jsonParser(item as Map<String, dynamic>) as InnerType)
          .toList() as T;
    }

    return jsonParser(jsonMap);
  }
}