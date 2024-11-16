// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'hobby.dart';

// **************************************************************************
// ChurchAdminGenerator
// **************************************************************************

final _$HobbyFields = <String, FieldMetadata>{
  'id': FieldMetadata<Hobby>(
    name: 'id',
    label: '=',
  ),
  'name': FieldMetadata<String>(
    name: 'name',
    label: 'الاسم',
    operators:
        Operator.comparitive.union(Operator.textual).union({Operator.isNull}),
  ),
  'color': FieldMetadata<Color>(
    name: 'color',
    label: 'اللون',
    operators: Operator.comparitive.union({Operator.isNull}),
  ),
};

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$HobbyImpl _$$HobbyImplFromJson(Map json) => _$HobbyImpl(
      id: json['id'] as String,
      name: json['name'] as String,
      color: colorFromInt((json['color'] as num?)?.toInt()),
    );

Map<String, dynamic> _$$HobbyImplToJson(_$HobbyImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'name': instance.name,
      'color': colorToInt(instance.color),
    };
