// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'job.dart';

// **************************************************************************
// ChurchAdminGenerator
// **************************************************************************

final _$JobFields = <String, FieldMetadata>{
  'id': FieldMetadata<Job>(
    name: 'id',
    label: '=',
  ),
  'name': FieldMetadata<String>(
    name: 'name',
    label: 'الاسم',
    operators:
        Operator.comparitive.union(Operator.textual).union({Operator.isNull}),
  ),
};

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_Job _$JobFromJson(Map json) => _Job(
      id: json['id'] as String,
      name: json['name'] as String,
    );

Map<String, dynamic> _$JobToJson(_Job instance) => <String, dynamic>{
      'id': instance.id,
      'name': instance.name,
    };
