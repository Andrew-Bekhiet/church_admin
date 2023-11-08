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

_$ShammasLevelImpl _$$ShammasLevelImplFromJson(Map json) => _$ShammasLevelImpl(
      order: json['order'] as int,
      name: json['name'] as String,
      id: json['id'] as String,
    );

Map<String, dynamic> _$$ShammasLevelImplToJson(_$ShammasLevelImpl instance) =>
    <String, dynamic>{
      'order': instance.order,
      'name': instance.name,
      'id': instance.id,
    };
