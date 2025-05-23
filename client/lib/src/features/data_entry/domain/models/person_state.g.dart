// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'person_state.dart';

// **************************************************************************
// ChurchAdminGenerator
// **************************************************************************

final _$PersonStateFields = <String, FieldMetadata>{
  'id': FieldMetadata<PersonState>(
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

_PersonState _$PersonStateFromJson(Map json) => _PersonState(
      id: json['id'] as String,
      name: json['name'] as String,
      color: colorFromInt((json['color'] as num?)?.toInt()),
    );

Map<String, dynamic> _$PersonStateToJson(_PersonState instance) =>
    <String, dynamic>{
      'id': instance.id,
      'name': instance.name,
      'color': colorToInt(instance.color),
    };
