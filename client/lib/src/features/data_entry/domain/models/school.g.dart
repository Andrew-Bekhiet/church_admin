// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'school.dart';

// **************************************************************************
// QueryableFieldsGenerator
// **************************************************************************

class SchoolFields {
  static final SchoolFields _instance = SchoolFields._();
  factory SchoolFields() => _instance;
  SchoolFields._();

  final FieldMetadata<School> id = FieldMetadata<School>(
    getValue: (obj) => obj is School ? obj.id : null,
    parentType: School,
    name: 'id',
    label: '=',
    isCodeOnly: false,
    operators: {...MultiSelectOperator.values},
  );

  final FieldMetadata<String> name = FieldMetadata<String>(
    getValue: (obj) => obj is School ? obj.name : null,
    parentType: School,
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

School _$SchoolFromJson(Map json) => School(
      id: json['id'] as String? ?? '',
      name: json['name'] as String? ?? '',
    );

Map<String, dynamic> _$SchoolToJson(School instance) => <String, dynamic>{
      'id': instance.id,
      'name': instance.name,
    };
