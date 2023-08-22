// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'hobby.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_Hobby _$$_HobbyFromJson(Map json) => _$_Hobby(
      id: json['id'] as String,
      name: json['name'] as String,
      color: colorFromInt(json['color'] as int?),
    );

const _$$_HobbyFieldMap = <String, String>{
  'id': 'id',
  'name': 'name',
  'color': 'color',
};

Map<String, dynamic> _$$_HobbyToJson(_$_Hobby instance) => <String, dynamic>{
      'id': instance.id,
      'name': instance.name,
      'color': colorToInt(instance.color),
    };
