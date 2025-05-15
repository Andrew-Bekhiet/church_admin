// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'school.dart';

// **************************************************************************
// ChurchAdminGenerator
// **************************************************************************

final _$SchoolFields = <String, FieldMetadata>{
  'id': FieldMetadata<School>(
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

_School _$SchoolFromJson(Map json) => _School(
      id: json['id'] as String,
      name: json['name'] as String,
    );

Map<String, dynamic> _$SchoolToJson(_School instance) => <String, dynamic>{
      'id': instance.id,
      'name': instance.name,
    };
