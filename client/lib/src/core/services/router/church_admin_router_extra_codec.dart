import 'dart:convert';

import 'package:church_admin/church_admin.dart';

final Map<String, Object Function(Json)> fromJsonByTypeName = {
  'EditFamilyExtra': EditFamilyExtra.fromJson,
  'EditStoreExtra': EditStoreExtra.fromJson,
  'PersonAnalysisExtra': PersonAnalysisExtra.fromJson,
  'UserAnalysisExtra': UserAnalysisExtra.fromJson,
  'MeetingsAnalysisExtra': MeetingsAnalysisExtra.fromJson,
  'PersonEditIntent': PersonEditIntent.fromJson,
  'EditClassExtra': EditClassExtra.fromJson,
  'EditGroupExtra': EditGroupExtra.fromJson,
  'EditStreetExtra': EditStreetExtra.fromJson,
  'UserEditIntent': UserEditIntent.fromJson,
  'AdvancedQuery': AdvancedQuery.fromJson,
  for (final MapEntry(value: QueryableType(:name, :fromJson))
      in AdvancedQueriesMetadata().allQueryablesByType.entries)
    name: ?fromJson,
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
