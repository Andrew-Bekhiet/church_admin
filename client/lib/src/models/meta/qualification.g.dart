// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'qualification.dart';

// **************************************************************************
// ChurchAdminGenerator
// **************************************************************************

final _$QualificationFields = <String, FieldMetadata>{
  'id': FieldMetadata<Qualification>(
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

_$QualificationImpl _$$QualificationImplFromJson(Map json) =>
    _$QualificationImpl(
      id: json['id'] as String,
      name: json['name'] as String,
    );

Map<String, dynamic> _$$QualificationImplToJson(_$QualificationImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'name': instance.name,
    };
