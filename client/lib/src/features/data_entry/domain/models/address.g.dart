// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'address.dart';

// **************************************************************************
// QueryableFieldsGenerator
// **************************************************************************

class AddressFields {
  static final AddressFields _instance = AddressFields._();
  factory AddressFields() => _instance;
  AddressFields._();

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

  final FieldMetadata<int> houseNumber = FieldMetadata<int>(
    getValue: (obj) => obj is Address ? obj.houseNumber : null,
    parentType: Address,
    name: 'houseNumber',
    label: 'رقم العمارة',
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
    district,
    area,
    street,
    substreetName,
    geolocation,
    storeyNumber,
    houseNumber,
    apartmentNumber,
    specialLandmark,
    family,
    store,
  ];
  late final Map<String, FieldMetadata<Object>> allFieldsByName = {
    'district': district,
    'area': area,
    'street': street,
    'substreetName': substreetName,
    'geolocation': geolocation,
    'storeyNumber': storeyNumber,
    'houseNumber': houseNumber,
    'apartmentNumber': apartmentNumber,
    'specialLandmark': specialLandmark,
    'family': family,
    'store': store,
  };
}

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

Address _$AddressFromJson(Map json) => Address(
  id: json['id'] as String?,
  countryIsoCode: json['countryIsoCode'] as String? ?? 'EG',
  district: json['district'] == null
      ? null
      : District.fromJson(Map<String, Object?>.from(json['district'] as Map)),
  area: json['area'] == null
      ? null
      : Area.fromJson(Map<String, Object?>.from(json['area'] as Map)),
  street: json['street'] == null
      ? null
      : Street.fromJson(Map<String, Object?>.from(json['street'] as Map)),
  substreetName: json['substreetName'] as String?,
  geolocation: pointFromJson(json['geolocation']),
  storeyNumber: (json['storeyNumber'] as num?)?.toInt(),
  houseNumber: (json['houseNumber'] as num?)?.toInt(),
  apartmentNumber: (json['apartmentNumber'] as num?)?.toInt(),
  specialLandmark: json['specialLandmark'] as String?,
  family: json['family'] == null
      ? null
      : Family.fromJson(Map<String, Object?>.from(json['family'] as Map)),
  store: json['store'] == null
      ? null
      : Store.fromJson(Map<String, Object?>.from(json['store'] as Map)),
);

Map<String, dynamic> _$AddressToJson(Address instance) => <String, dynamic>{
  'id': instance.id,
  'countryIsoCode': instance.countryIsoCode,
  'district': instance.district?.toJson(),
  'area': instance.area?.toJson(),
  'street': instance.street?.toJson(),
  'substreetName': instance.substreetName,
  'geolocation': pointToJson(instance.geolocation),
  'storeyNumber': instance.storeyNumber,
  'houseNumber': instance.houseNumber,
  'apartmentNumber': instance.apartmentNumber,
  'specialLandmark': instance.specialLandmark,
  'family': instance.family?.toJson(),
  'store': instance.store?.toJson(),
};
