// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'shammas_level.dart';

// **************************************************************************
// ChurchAdminGenerator
// **************************************************************************

final _$ShammasLevelFields = <String, FieldMetadata>{
  'order': FieldMetadata<int>(
    name: 'order',
    label: 'الترتيب',
    operators: Operator.comparitive,
  ),
  'name': FieldMetadata<String>(
    name: 'name',
    label: 'الاسم',
    operators:
        Operator.comparitive.union(Operator.textual).union({Operator.isNull}),
  ),
  'id': FieldMetadata<ShammasLevel>(
    name: 'id',
    label: '=',
  ),
};

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_ShammasLevel _$ShammasLevelFromJson(Map json) => _ShammasLevel(
      order: (json['order'] as num).toInt(),
      name: json['name'] as String,
      id: json['id'] as String,
    );

Map<String, dynamic> _$ShammasLevelToJson(_ShammasLevel instance) =>
    <String, dynamic>{
      'order': instance.order,
      'name': instance.name,
      'id': instance.id,
    };
