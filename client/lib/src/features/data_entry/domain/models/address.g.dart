// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'address.dart';

// **************************************************************************
// ChurchAdminGenerator
// **************************************************************************

final _$AddressFields = <String, FieldMetadata>{
  'id': FieldMetadata<Address>(
    name: 'id',
    label: '=',
  ),
  'countryIsoCode': FieldMetadata<String>(
    name: 'countryIsoCode',
    label: 'countryIsoCode',
    operators:
        Operator.comparitive.union(Operator.textual).union({Operator.isNull}),
  ),
  'district': FieldMetadata<District>(
    name: 'district',
    label: 'district',
  ),
  'area': FieldMetadata<Area>(
    name: 'area',
    label: 'area',
  ),
  'street': FieldMetadata<Street>(
    name: 'street',
    label: 'street',
  ),
  'substreetName': FieldMetadata<String>(
    name: 'substreetName',
    label: 'substreetName',
    operators:
        Operator.comparitive.union(Operator.textual).union({Operator.isNull}),
  ),
  'geolocation': FieldMetadata<Point>(
    name: 'geolocation',
    label: 'الموقع',
    operators: Operator.spatial,
  ),
  'storeyNumber': FieldMetadata<int>(
    name: 'storeyNumber',
    label: 'storeyNumber',
    operators: Operator.comparitive,
  ),
  'houseNumber': FieldMetadata<int>(
    name: 'houseNumber',
    label: 'houseNumber',
    operators: Operator.comparitive,
  ),
  'apartmentNumber': FieldMetadata<int>(
    name: 'apartmentNumber',
    label: 'apartmentNumber',
    operators: Operator.comparitive,
  ),
  'specialLandmark': FieldMetadata<String>(
    name: 'specialLandmark',
    label: 'specialLandmark',
    operators:
        Operator.comparitive.union(Operator.textual).union({Operator.isNull}),
  ),
  'family': FieldMetadata<Family>(
    name: 'family',
    label: 'العائلة',
  ),
  'store': FieldMetadata<Store>(
    name: 'store',
    label: 'المتجر',
  ),
};

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$AddressImpl _$$AddressImplFromJson(Map json) => _$AddressImpl(
      id: json['id'] as String?,
      countryIsoCode: json['countryIsoCode'] as String? ?? 'EG',
      district: json['district'] == null
          ? null
          : District.fromJson(
              Map<String, Object?>.from(json['district'] as Map)),
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

Map<String, dynamic> _$$AddressImplToJson(_$AddressImpl instance) =>
    <String, dynamic>{
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
