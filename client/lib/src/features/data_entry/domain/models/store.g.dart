// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'store.dart';

// **************************************************************************
// QueryableFieldsGenerator
// **************************************************************************

class _StoreFields {
  _StoreFields();

  final FieldMetadata<Store> id = FieldMetadata<Store>(
    getValue: (obj) => obj is Store ? obj.id : null,
    parentType: Store,
    name: 'id',
    label: '=',
    isCodeOnly: false,
    operators: {...MultiSelectOperator.values},
  );

  final FieldMetadata<String> name = FieldMetadata<String>(
    getValue: (obj) => obj is Store ? obj.name : null,
    parentType: Store,
    name: 'name',
    label: 'الاسم',
    isCodeOnly: false,
    operators: {...StringOperator.values},
  );

  final FieldMetadata<Address> address = FieldMetadata<Address>(
    getValue: (obj) => obj is Store ? obj.address : null,
    parentType: Store,
    name: 'address',
    label: 'العنوان',
    isCodeOnly: false,
  );

  final FieldMetadata<Family> family = FieldMetadata<Family>(
    getValue: (obj) => obj is Store ? obj.family : null,
    parentType: Store,
    name: 'family',
    label: 'العائلة',
    isCodeOnly: false,
    operators: {
      ...MultiSelectOperator.values,
      PrimitiveOperator.isNull,
      PrimitiveOperator.isNotNull
    },
  );

  final FieldMetadata<Color> color = FieldMetadata<Color>(
    getValue: (obj) => obj is Store ? obj.color : null,
    parentType: Store,
    name: 'color',
    label: 'اللون',
    isCodeOnly: false,
    operators: {
      ...ColorOperator.values,
      PrimitiveOperator.isNull,
      PrimitiveOperator.isNotNull
    },
  );

  final FieldMetadata<LastRecordedByInfo> lastEdit =
      FieldMetadata<LastRecordedByInfo>(
    getValue: (obj) => obj is Store ? obj.lastEdit : null,
    parentType: Store,
    name: 'lastEdit',
    label: 'أخر تحديث البيانات',
    isCodeOnly: false,
    operators: {
      ...MultiSelectOperator.values,
      PrimitiveOperator.isNull,
      PrimitiveOperator.isNotNull
    },
  );

  final FieldMetadata<DateTime> photoUpdatedAt = FieldMetadata<DateTime>(
    getValue: (obj) => obj is Store ? obj.photoUpdatedAt : null,
    parentType: Store,
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

  final FieldMetadata<Point> geolocation = FieldMetadata<Point>(
    getValue: (obj) => obj is Store ? obj.geolocation : null,
    parentType: Store,
    name: 'geolocation',
    label: 'الموقع',
    isCodeOnly: false,
    operators: {
      ...SpatialOperator.values,
      PrimitiveOperator.isNull,
      PrimitiveOperator.isNotNull
    },
  );

  late final List<FieldMetadata<Object>> allFields = [
    id,
    name,
    address,
    family,
    color,
    lastEdit,
    photoUpdatedAt,
    geolocation
  ];
  late final Map<String, FieldMetadata<Object>> allFieldsByName = {
    'id': id,
    'name': name,
    'address': address,
    'family': family,
    'color': color,
    'lastEdit': lastEdit,
    'photoUpdatedAt': photoUpdatedAt,
    'geolocation': geolocation
  };
}

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

Store _$StoreFromJson(Map json) => Store(
      id: json['id'] as String? ?? '',
      name: json['name'] as String? ?? '',
      address: json['address'] == null
          ? null
          : Address.fromJson(Map<String, Object?>.from(json['address'] as Map)),
      family: json['family'] == null
          ? null
          : Family.fromJson(Map<String, Object?>.from(json['family'] as Map)),
      familyId: json['adminFamily'] as String?,
      color: colorFromInt((json['color'] as num?)?.toInt()),
      lastEdit: json['lastEdit'] == null
          ? null
          : LastRecordedByInfo.fromJson(
              Map<String, Object?>.from(json['lastEdit'] as Map)),
      photoUpdatedAt: json['photoUpdatedAt'] == null
          ? null
          : DateTime.parse(json['photoUpdatedAt'] as String),
      blurhash: json['blurhash'] as String?,
    );

Map<String, dynamic> _$StoreToJson(Store instance) => <String, dynamic>{
      'id': instance.id,
      'name': instance.name,
      'address': instance.address?.toJson(),
      'family': instance.family?.toJson(),
      'adminFamily': instance.familyId,
      'color': colorToInt(instance.color),
      'lastEdit': instance.lastEdit?.toJson(),
      'photoUpdatedAt': instance.photoUpdatedAt?.toIso8601String(),
      'blurhash': instance.blurhash,
    };
