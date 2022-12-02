// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'person_state.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_PersonState _$$_PersonStateFromJson(Map json) => _$_PersonState(
      id: json['id'] as String,
      name: json['name'] as String,
      color: colorFromInt(json['color'] as int?),
    );

Map<String, dynamic> _$$_PersonStateToJson(_$_PersonState instance) =>
    <String, dynamic>{
      'id': instance.id,
      'name': instance.name,
      'color': colorToInt(instance.color),
    };
