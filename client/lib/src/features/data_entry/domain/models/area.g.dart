// GENERATED CODE - DO NOT MODIFY BY HAND

// coverage:ignore-file
// ignore_for_file: type=lint

part of 'area.dart';

// **************************************************************************
// QueryableFieldsGenerator
// **************************************************************************

class _AreaFields {
  final FieldMetadata<Area> id = FieldMetadata<Area>(
    getValue: (obj) => obj is Area ? obj.id : null,
    parentType: Area,
    name: 'id',
    label: '=',
    isCodeOnly: false,
    operators: {...MultiSelectOperator.values},
  );

  final FieldMetadata<String> name = FieldMetadata<String>(
    getValue: (obj) => obj is Area ? obj.name : null,
    parentType: Area,
    name: 'name',
    label: 'الاسم',
    isCodeOnly: false,
    operators: {...StringOperator.values},
  );

  final FieldMetadata<Polygon> bounds = FieldMetadata<Polygon>(
    getValue: (obj) => obj is Area ? obj.bounds : null,
    parentType: Area,
    name: 'bounds',
    label: 'الموقع',
    isCodeOnly: false,
    operators: {
      ...SpatialOperator.values,
      PrimitiveOperator.isNull,
      PrimitiveOperator.isNotNull,
    },
  );

  final FieldMetadata<Color> color = FieldMetadata<Color>(
    getValue: (obj) => obj is Area ? obj.color : null,
    parentType: Area,
    name: 'color',
    label: 'اللون',
    isCodeOnly: false,
    operators: {
      ...ColorOperator.values,
      PrimitiveOperator.isNull,
      PrimitiveOperator.isNotNull,
    },
  );

  final FieldMetadata<DateTime> photoUpdatedAt = FieldMetadata<DateTime>(
    getValue: (obj) => obj is Area ? obj.photoUpdatedAt : null,
    parentType: Area,
    name: 'photoUpdatedAt',
    label: 'أخر تحديث للصورة',
    isCodeOnly: false,
    operators: {
      ...DateTimeOperator.values,
      ...DateRangeOperator.values,
      PrimitiveOperator.isNull,
      PrimitiveOperator.isNotNull,
    },
  );

  final FieldMetadata<LastRecordedByInfo> lastVisit =
      FieldMetadata<LastRecordedByInfo>(
        getValue: (obj) => obj is Area ? obj.lastVisit : null,
        parentType: Area,
        name: 'lastVisit',
        label: 'أخر افتقاد',
        isCodeOnly: false,
        operators: {
          ...MultiSelectOperator.values,
          PrimitiveOperator.isNull,
          PrimitiveOperator.isNotNull,
        },
      );

  final FieldMetadata<LastRecordedByInfo> lastEdit =
      FieldMetadata<LastRecordedByInfo>(
        getValue: (obj) => obj is Area ? obj.lastEdit : null,
        parentType: Area,
        name: 'lastEdit',
        label: 'أخر تحديث البيانات',
        isCodeOnly: false,
        operators: {
          ...MultiSelectOperator.values,
          PrimitiveOperator.isNull,
          PrimitiveOperator.isNotNull,
        },
      );

  final FieldMetadata<AdminOnData> adminUsersRel = FieldMetadata<AdminOnData>(
    getValue: (obj) => obj is Area ? obj.adminUsers : null,
    parentType: Area,
    name: 'adminUsers',
    label: 'adminUsers',
    isCodeOnly: true,
    isOrderable: false,
  );

  late final FieldMetadata<User> adminUsers = adminUsersRel.redirectTo(
    AdminOnDataFields().user,
    isExpandable: false,
    isOrderable: false,
  );

  late final List<FieldMetadata<Object>> allFields = [
    id,
    name,
    bounds,
    color,
    photoUpdatedAt,
    lastVisit,
    lastEdit,
    adminUsers,
  ];
  late final Map<String, FieldMetadata<Object>> allFieldsByName = {
    'id': id,
    'name': name,
    'bounds': bounds,
    'color': color,
    'photoUpdatedAt': photoUpdatedAt,
    'lastVisit': lastVisit,
    'lastEdit': lastEdit,
    'adminUsers': adminUsers,
  };

  _AreaFields();
}

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

Area _$AreaFromJson(Map json) => Area(
  id: json['id'] as String? ?? '',
  name: json['name'] as String? ?? '',
  userCanEdit: json['userCanEdit'] as bool? ?? false,
  bounds: polygonFromJson(json['bounds']),
  color: colorFromInt((json['color'] as num?)?.toInt()),
  photoUpdatedAt: _$JsonConverterFromJson<String, DateTime>(
    json['photoUpdatedAt'],
    const LocalDateTimeConverter().fromJson,
  ),
  blurhash: json['blurhash'] as String?,
  lastVisit: json['lastVisit'] == null
      ? null
      : LastRecordedByInfo.fromJson(
          Map<String, Object?>.from(json['lastVisit'] as Map),
        ),
  lastEdit: json['lastEdit'] == null
      ? null
      : LastRecordedByInfo.fromJson(
          Map<String, Object?>.from(json['lastEdit'] as Map),
        ),
  adminUsers: adminUsersFromJson(json['adminUsers'] as List?),
);

Map<String, dynamic> _$AreaToJson(Area instance) => <String, dynamic>{
  'id': instance.id,
  'name': instance.name,
  'bounds': polygonToJson(instance.bounds),
  'color': colorToInt(instance.color),
  'photoUpdatedAt': _$JsonConverterToJson<String, DateTime>(
    instance.photoUpdatedAt,
    const LocalDateTimeConverter().toJson,
  ),
  'blurhash': instance.blurhash,
  'lastVisit': instance.lastVisit?.toJson(),
  'lastEdit': instance.lastEdit?.toJson(),
  'adminUsers': adminUsersToJson(instance.adminUsers),
};

Value? _$JsonConverterFromJson<Json, Value>(
  Object? json,
  Value? Function(Json json) fromJson,
) => json == null ? null : fromJson(json as Json);

Json? _$JsonConverterToJson<Json, Value>(
  Value? value,
  Json? Function(Value value) toJson,
) => value == null ? null : toJson(value);
