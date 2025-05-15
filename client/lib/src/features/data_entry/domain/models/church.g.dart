// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'church.dart';

// **************************************************************************
// ChurchAdminGenerator
// **************************************************************************

final _$ChurchFields = <String, FieldMetadata>{
  'id': FieldMetadata<Church>(
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

_Church _$ChurchFromJson(Map json) => _Church(
      id: json['id'] as String,
      name: json['name'] as String,
    );

Map<String, dynamic> _$ChurchToJson(_Church instance) => <String, dynamic>{
      'id': instance.id,
      'name': instance.name,
    };
