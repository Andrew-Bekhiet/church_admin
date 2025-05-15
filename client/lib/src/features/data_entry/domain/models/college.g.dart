// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'college.dart';

// **************************************************************************
// ChurchAdminGenerator
// **************************************************************************

final _$CollegeFields = <String, FieldMetadata>{
  'id': FieldMetadata<College>(
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

_College _$CollegeFromJson(Map json) => _College(
      id: json['id'] as String,
      name: json['name'] as String,
      universityId: json['universityId'] as String?,
    );

Map<String, dynamic> _$CollegeToJson(_College instance) => <String, dynamic>{
      'id': instance.id,
      'name': instance.name,
      'universityId': instance.universityId,
    };
