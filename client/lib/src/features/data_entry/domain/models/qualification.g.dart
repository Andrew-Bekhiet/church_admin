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

_Qualification _$QualificationFromJson(Map json) => _Qualification(
      id: json['id'] as String,
      name: json['name'] as String,
    );

Map<String, dynamic> _$QualificationToJson(_Qualification instance) =>
    <String, dynamic>{
      'id': instance.id,
      'name': instance.name,
    };
