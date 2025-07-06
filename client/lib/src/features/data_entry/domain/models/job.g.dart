// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'job.dart';

// **************************************************************************
// QueryableFieldsGenerator
// **************************************************************************

class JobFields {
  static final JobFields _instance = JobFields._();
  factory JobFields() => _instance;
  JobFields._();

  final FieldMetadata<Job> id = FieldMetadata<Job>(
    parentType: Job,
    name: 'id',
    label: '=',
    isCodeOnly: false,
    operators: {...MultiSelectOperator.values},
  );

  final FieldMetadata<String> name = FieldMetadata<String>(
    parentType: Job,
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

Job _$JobFromJson(Map json) => Job(
      id: json['id'] as String? ?? '',
      name: json['name'] as String? ?? '',
    );

Map<String, dynamic> _$JobToJson(Job instance) => <String, dynamic>{
      'id': instance.id,
      'name': instance.name,
    };
