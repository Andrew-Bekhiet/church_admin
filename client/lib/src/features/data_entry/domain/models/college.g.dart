// GENERATED CODE - DO NOT MODIFY BY HAND

// ignore_for_file: member_ordering

part of 'college.dart';

// **************************************************************************
// QueryableFieldsGenerator
// **************************************************************************

class CollegeFields {
  static final CollegeFields _instance = CollegeFields._();
  factory CollegeFields() => _instance;
  CollegeFields._();

  final FieldMetadata<College> id = FieldMetadata<College>(
    getValue: (obj) => obj is College ? obj.id : null,
    parentType: College,
    name: 'id',
    label: '=',
    isCodeOnly: false,
    operators: {...MultiSelectOperator.values},
  );

  final FieldMetadata<String> name = FieldMetadata<String>(
    getValue: (obj) => obj is College ? obj.name : null,
    parentType: College,
    name: 'name',
    label: 'الاسم',
    isCodeOnly: false,
    operators: {...StringOperator.values},
  );

  late final List<FieldMetadata<Object>> allFields = [id, name];
  late final Map<String, FieldMetadata<Object>> allFieldsByName = {
    'id': id,
    'name': name,
  };
}

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

College _$CollegeFromJson(Map json) => College(
  id: json['id'] as String? ?? '',
  name: json['name'] as String? ?? '',
  universityId: json['universityId'] as String?,
);

Map<String, dynamic> _$CollegeToJson(College instance) => <String, dynamic>{
  'id': instance.id,
  'name': instance.name,
  'universityId': instance.universityId,
};
