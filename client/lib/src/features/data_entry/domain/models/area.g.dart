// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'area.dart';

// **************************************************************************
// QueryableFieldsGenerator
// **************************************************************************

class _AreaFields {
  _AreaFields();

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
      PrimitiveOperator.isNotNull
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
      PrimitiveOperator.isNotNull
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
      PrimitiveOperator.isNotNull
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
      PrimitiveOperator.isNotNull
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
      PrimitiveOperator.isNotNull
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
    adminUsers
  ];
  late final Map<String, FieldMetadata<Object>> allFieldsByName = {
    'id': id,
    'name': name,
    'bounds': bounds,
    'color': color,
    'photoUpdatedAt': photoUpdatedAt,
    'lastVisit': lastVisit,
    'lastEdit': lastEdit,
    'adminUsers': adminUsers
  };
}

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

Area _$AreaFromJson(Map json) => Area(
      id: json['id'] as String? ?? '',
      name: json['name'] as String? ?? '',
      bounds: polygonFromJson(json['bounds']),
      color: colorFromInt((json['color'] as num?)?.toInt()),
      photoUpdatedAt: json['photoUpdatedAt'] == null
          ? null
          : DateTime.parse(json['photoUpdatedAt'] as String),
      blurhash: json['blurhash'] as String?,
      lastVisit: json['lastVisit'] == null
          ? null
          : LastRecordedByInfo.fromJson(
              Map<String, Object?>.from(json['lastVisit'] as Map)),
      lastEdit: json['lastEdit'] == null
          ? null
          : LastRecordedByInfo.fromJson(
              Map<String, Object?>.from(json['lastEdit'] as Map)),
      adminUsers: adminUsersFromJson(json['adminUsers'] as List?),
    );

Map<String, dynamic> _$AreaToJson(Area instance) => <String, dynamic>{
      'id': instance.id,
      'name': instance.name,
      'bounds': polygonToJson(instance.bounds),
      'color': colorToInt(instance.color),
      'photoUpdatedAt': instance.photoUpdatedAt?.toIso8601String(),
      'blurhash': instance.blurhash,
      'lastVisit': instance.lastVisit?.toJson(),
      'lastEdit': instance.lastEdit?.toJson(),
      'adminUsers': adminUsersToJson(instance.adminUsers),
    };
