// GENERATED CODE - DO NOT MODIFY BY HAND

// coverage:ignore-file
// ignore_for_file: type=lint

part of 'job.dart';

// **************************************************************************
// QueryableFieldsGenerator
// **************************************************************************

class JobFields {
  factory JobFields() => _instance;

  JobFields._();

  static final JobFields _instance = JobFields._();

  final FieldMetadata<Job> id = FieldMetadata<Job>(
    getValue: (obj) => obj is Job ? obj.id : null,
    parentType: Job,
    name: 'id',
    label: '=',
    isCodeOnly: false,
    operators: {...MultiSelectOperator.values},
  );

  final FieldMetadata<String> name = FieldMetadata<String>(
    getValue: (obj) => obj is Job ? obj.name : null,
    parentType: Job,
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

Job _$JobFromJson(Map json) =>
    Job(id: json['id'] as String? ?? '', name: json['name'] as String? ?? '');

Map<String, dynamic> _$JobToJson(Job instance) => <String, dynamic>{
  'id': instance.id,
  'name': instance.name,
};
