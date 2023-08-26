// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'tag.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_Tag _$$_TagFromJson(Map json) => _$_Tag(
      id: json['id'] as String,
      name: json['name'] as String,
      color: colorFromInt(json['color'] as int?),
    );

Map<String, dynamic> _$$_TagToJson(_$_Tag instance) => <String, dynamic>{
      'id': instance.id,
      'name': instance.name,
      'color': colorToInt(instance.color),
    };
