// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'father.dart';

// **************************************************************************
// ChurchAdminGenerator
// **************************************************************************

final _$FatherFields = <String, FieldMetadata>{
  'id': FieldMetadata<Father>(
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

_$FatherImpl _$$FatherImplFromJson(Map json) => _$FatherImpl(
      id: json['id'] as String,
      name: json['name'] as String,
      churchId: json['churchId'] as String?,
    );

Map<String, dynamic> _$$FatherImplToJson(_$FatherImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'name': instance.name,
      'churchId': instance.churchId,
    };
