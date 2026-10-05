// GENERATED CODE - DO NOT MODIFY BY HAND

// coverage:ignore-file
// ignore_for_file: type=lint

part of 'address.dart';

// **************************************************************************
// QueryableFieldsGenerator
// **************************************************************************

class _AddressFields {
  _AddressFields();

  final FieldMetadata<Area> area = FieldMetadata<Area>(
    getValue: (obj) => obj is Address ? obj.area : null,
    parentType: Address,
    name: 'area',
    label: 'المنطقة',
    isCodeOnly: false,
    operators: {
      ...MultiSelectOperator.values,
      PrimitiveOperator.isNull,
      PrimitiveOperator.isNotNull,
    },
  );

  final FieldMetadata<String> houseCode = FieldMetadata<String>(
    getValue: (obj) => obj is Address ? obj.houseCode : null,
    parentType: Address,
    name: 'houseCode',
    label: 'رقم العمارة',
    isCodeOnly: false,
    operators: {
      ...StringOperator.values,
      PrimitiveOperator.isNull,
      PrimitiveOperator.isNotNull,
    },
  );

  final FieldMetadata<Street> street = FieldMetadata<Street>(
    getValue: (obj) => obj is Address ? obj.street : null,
    parentType: Address,
    name: 'street',
    label: 'الشارع',
    isCodeOnly: false,
    operators: {
      ...MultiSelectOperator.values,
      PrimitiveOperator.isNull,
      PrimitiveOperator.isNotNull,
    },
  );

  final FieldMetadata<String> substreetName = FieldMetadata<String>(
    getValue: (obj) => obj is Address ? obj.substreetName : null,
    parentType: Address,
    name: 'substreetName',
    label: 'الشارع الفرعي',
    isCodeOnly: false,
    operators: {
      ...StringOperator.values,
      PrimitiveOperator.isNull,
      PrimitiveOperator.isNotNull,
    },
  );

  final FieldMetadata<District> district = FieldMetadata<District>(
    getValue: (obj) => obj is Address ? obj.district : null,
    parentType: Address,
    name: 'district',
    label: 'الحي',
    isCodeOnly: false,
    operators: {
      ...MultiSelectOperator.values,
      PrimitiveOperator.isNull,
      PrimitiveOperator.isNotNull,
    },
  );

  final FieldMetadata<String> specialLandmark = FieldMetadata<String>(
    getValue: (obj) => obj is Address ? obj.specialLandmark : null,
    parentType: Address,
    name: 'specialLandmark',
    label: 'علامة مميزة',
    isCodeOnly: false,
    operators: {
      ...StringOperator.values,
      PrimitiveOperator.isNull,
      PrimitiveOperator.isNotNull,
    },
  );

  final FieldMetadata<int> storeyNumber = FieldMetadata<int>(
    getValue: (obj) => obj is Address ? obj.storeyNumber : null,
    parentType: Address,
    name: 'storeyNumber',
    label: 'رقم الدور',
    isCodeOnly: false,
    operators: {
      ...PrimitiveOperator.values,
      PrimitiveOperator.isNull,
      PrimitiveOperator.isNotNull,
    },
  );

  final FieldMetadata<int> apartmentNumber = FieldMetadata<int>(
    getValue: (obj) => obj is Address ? obj.apartmentNumber : null,
    parentType: Address,
    name: 'apartmentNumber',
    label: 'رقم الشقة',
    isCodeOnly: false,
    operators: {
      ...PrimitiveOperator.values,
      PrimitiveOperator.isNull,
      PrimitiveOperator.isNotNull,
    },
  );

  final FieldMetadata<String> fullAddressText = FieldMetadata<String>(
    getValue: (obj) => obj is Address ? obj.fullAddressText : null,
    parentType: Address,
    name: 'fullAddressText',
    label: 'العنوان الكامل',
    isCodeOnly: false,
    operators: {
      ...StringOperator.values,
      PrimitiveOperator.isNull,
      PrimitiveOperator.isNotNull,
    },
  );

  final FieldMetadata<Point> geolocation = FieldMetadata<Point>(
    getValue: (obj) => obj is Address ? obj.geolocation : null,
    parentType: Address,
    name: 'geolocation',
    label: 'الموقع',
    isCodeOnly: false,
    operators: {
      ...SpatialOperator.values,
      PrimitiveOperator.isNull,
      PrimitiveOperator.isNotNull,
    },
  );

  final FieldMetadata<Family> family = FieldMetadata<Family>(
    getValue: (obj) => obj is Address ? obj.family : null,
    parentType: Address,
    name: 'family',
    label: 'العائلة',
    isCodeOnly: false,
    operators: {
      ...MultiSelectOperator.values,
      PrimitiveOperator.isNull,
      PrimitiveOperator.isNotNull,
    },
  );

  final FieldMetadata<Store> store = FieldMetadata<Store>(
    getValue: (obj) => obj is Address ? obj.store : null,
    parentType: Address,
    name: 'store',
    label: 'المتجر',
    isCodeOnly: false,
    operators: {
      ...MultiSelectOperator.values,
      PrimitiveOperator.isNull,
      PrimitiveOperator.isNotNull,
    },
  );

  late final List<FieldMetadata<Object>> allFields = [
    area,
    houseCode,
    street,
    substreetName,
    district,
    specialLandmark,
    storeyNumber,
    apartmentNumber,
    fullAddressText,
    geolocation,
    family,
    store,
  ];

  late final Map<String, FieldMetadata<Object>> allFieldsByName = {
    'area': area,
    'houseCode': houseCode,
    'street': street,
    'substreetName': substreetName,
    'district': district,
    'specialLandmark': specialLandmark,
    'storeyNumber': storeyNumber,
    'apartmentNumber': apartmentNumber,
    'fullAddressText': fullAddressText,
    'geolocation': geolocation,
    'family': family,
    'store': store,
  };
}

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

Address _$AddressFromJson(Map json) => Address(
  countryIsoCode: json['countryIsoCode'] as String? ?? 'EG',
  id: json['id'] as String?,
  area: json['area'] == null
      ? null
      : Area.fromJson(Map<String, Object?>.from(json['area'] as Map)),
  houseCode: json['houseCode'] as String?,
  street: json['street'] == null
      ? null
      : Street.fromJson(Map<String, Object?>.from(json['street'] as Map)),
  substreetName: json['substreetName'] as String?,
  district: json['district'] == null
      ? null
      : District.fromJson(Map<String, Object?>.from(json['district'] as Map)),
  specialLandmark: json['specialLandmark'] as String?,
  storeyNumber: (json['storeyNumber'] as num?)?.toInt(),
  apartmentNumber: (json['apartmentNumber'] as num?)?.toInt(),
  fullAddressText: json['fullAddressText'] as String?,
  geolocation: pointFromJson(json['geolocation']),
  family: json['family'] == null
      ? null
      : Family.fromJson(Map<String, Object?>.from(json['family'] as Map)),
  store: json['store'] == null
      ? null
      : Store.fromJson(Map<String, Object?>.from(json['store'] as Map)),
);

Map<String, dynamic> _$AddressToJson(Address instance) => <String, dynamic>{
  'id': instance.id,
  'area': instance.area?.toJson(),
  'countryIsoCode': instance.countryIsoCode,
  'houseCode': instance.houseCode,
  'street': instance.street?.toJson(),
  'substreetName': instance.substreetName,
  'district': instance.district?.toJson(),
  'specialLandmark': instance.specialLandmark,
  'storeyNumber': instance.storeyNumber,
  'apartmentNumber': instance.apartmentNumber,
  'fullAddressText': instance.fullAddressText,
  'geolocation': pointToJson(instance.geolocation),
  'family': instance.family?.toJson(),
  'store': instance.store?.toJson(),
};
