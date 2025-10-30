// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'district.dart';

// **************************************************************************
// QueryableFieldsGenerator
// **************************************************************************

class DistrictFields {
  static final DistrictFields _instance = DistrictFields._();
  factory DistrictFields() => _instance;
  DistrictFields._();

  final FieldMetadata<District> id = FieldMetadata<District>(
    getValue: (obj) => obj is District ? obj.id : null,
    parentType: District,
    name: 'id',
    label: '=',
    isCodeOnly: false,
    operators: {...MultiSelectOperator.values},
  );

  final FieldMetadata<String> name = FieldMetadata<String>(
    getValue: (obj) => obj is District ? obj.name : null,
    parentType: District,
    name: 'name',
    label: 'الاسم',
    isCodeOnly: false,
    operators: {...StringOperator.values},
  );

  late final List<FieldMetadata<Object>> allFields = [id, name];
  late final Map<String, FieldMetadata<Object>> allFieldsByName = {
    'id': id,
    'name': name
  };
}

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

District _$DistrictFromJson(Map json) => District(
      id: json['id'] as String? ?? '',
      name: json['name'] as String? ?? '',
    );

Map<String, dynamic> _$DistrictToJson(District instance) => <String, dynamic>{
      'id': instance.id,
      'name': instance.name,
    };
