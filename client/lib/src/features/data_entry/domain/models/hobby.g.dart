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

_Hobby _$HobbyFromJson(Map json) => _Hobby(
      id: json['id'] as String,
      name: json['name'] as String,
      color: colorFromInt((json['color'] as num?)?.toInt()),
    );

Map<String, dynamic> _$HobbyToJson(_Hobby instance) => <String, dynamic>{
      'id': instance.id,
      'name': instance.name,
      'color': colorToInt(instance.color),
    };
