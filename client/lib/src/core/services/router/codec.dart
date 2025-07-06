import 'dart:convert';

import 'package:church_admin/church_admin.dart';

final Map<String, Object Function(Json)> fromJsonByTypeName = {
  'EditFamilyExtra': EditFamilyExtra.fromJson,
  'EditStoreExtra': EditStoreExtra.fromJson,
  'PersonAnalysisExtra': PersonAnalysisExtra.fromJson,
  'EditPersonExtra': EditPersonExtra.fromJson,
  'EditClassExtra': EditClassExtra.fromJson,
  'EditGroupExtra': EditGroupExtra.fromJson,
  'AdvancedQuery': AdvancedQuery.fromJson,
  ...AdvancedQueriesMetadata()
      .allQueryablesByType
      .map((k, v) => MapEntry(v.name, v.fromJson)),
};

class ChurchAdminRouterExtraCodec extends Codec<SerializableExtra?, List?> {
  @override
  Converter<List?, SerializableExtra?> get decoder =>
      const ChurchAdminRouterExtraDecoder();

  @override
  Converter<SerializableExtra?, List?> get encoder =>
      const ChurchAdminRouterExtraEncoder();
}

class ChurchAdminRouterExtraEncoder
    extends Converter<SerializableExtra?, List?> {
  const ChurchAdminRouterExtraEncoder();

  @override
  List? convert(SerializableExtra? input) {
    if (input == null) {
      return null;
    }

    return [
      input.typeName,
      input.toJson(),
    ];
  }
}

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
