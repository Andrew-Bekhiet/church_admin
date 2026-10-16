import 'dart:convert';

import 'package:church_admin/church_admin.dart';

class ChurchAdminRouterExtraDecoder
    extends Converter<List?, SerializableExtra?> {
  const ChurchAdminRouterExtraDecoder();

  @override
  SerializableExtra? convert(List? input) {
    if (input == null) {
      return null;
    }

    final [typeName, json] = input;

    final result = fromJsonByTypeName[typeName]?.call(json);

    if (result == null) {
      throw Exception('Failed to decode $input with typeName $typeName');
    }

    return result as SerializableExtra?;
  }
}
