// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'areas_streets.dart';

// **************************************************************************
// QueryableFieldsGenerator
// **************************************************************************

class AreasStreetsFields {
  static final AreasStreetsFields _instance = AreasStreetsFields._();
  factory AreasStreetsFields() => _instance;
  AreasStreetsFields._();

  final FieldMetadata<Area> area = FieldMetadata<Area>(
    parentType: AreasStreets,
    name: 'area',
    label: 'المنطقة',
    isCodeOnly: false,
    operators: {...MultiSelectOperator.values},
  );

  final FieldMetadata<Street> street = FieldMetadata<Street>(
    parentType: AreasStreets,
    name: 'street',
    label: 'الشارع',
    isCodeOnly: false,
    operators: {...MultiSelectOperator.values},
  );

  final FieldMetadata<String> areaId = FieldMetadata<String>(
    parentType: AreasStreets,
    name: 'areaId',
    label: 'areaId',
    isCodeOnly: false,
    operators: {...StringOperator.values},
  );

  final FieldMetadata<String> streetId = FieldMetadata<String>(
    parentType: AreasStreets,
    name: 'streetId',
    label: 'streetId',
    isCodeOnly: false,
    operators: {...StringOperator.values},
  );

  late final List<FieldMetadata<Object>> allFields = [
    area,
    street,
    areaId,
    streetId
  ];
  late final Map<String, FieldMetadata<Object>> allFieldsByName = {
    'area': area,
    'street': street,
    'areaId': areaId,
    'streetId': streetId
  };
}

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

AreasStreets _$AreasStreetsFromJson(Map json) => AreasStreets(
      area: Area.fromJson(Map<String, Object?>.from(json['area'] as Map)),
      street: Street.fromJson(Map<String, Object?>.from(json['street'] as Map)),
      areaId: json['areaId'] as String,
      streetId: json['streetId'] as String,
    );

Map<String, dynamic> _$AreasStreetsToJson(AreasStreets instance) =>
    <String, dynamic>{
      'area': instance.area.toJson(),
      'street': instance.street.toJson(),
      'areaId': instance.areaId,
      'streetId': instance.streetId,
    };
