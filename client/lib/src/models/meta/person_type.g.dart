// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'person_type.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_PersonType _$$_PersonTypeFromJson(Map json) => _$_PersonType(
      id: json['id'] as String,
      name: json['name'] as String,
      color: colorFromInt(json['color'] as int?),
    );

Map<String, dynamic> _$$_PersonTypeToJson(_$_PersonType instance) =>
    <String, dynamic>{
      'id': instance.id,
      'name': instance.name,
      'color': colorToInt(instance.color),
    };
