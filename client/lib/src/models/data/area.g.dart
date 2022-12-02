// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'area.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_Area _$$_AreaFromJson(Map json) => _$_Area(
      id: json['id'] as String,
      name: json['name'] as String,
      bounds: polygonFromJson(json['bounds']),
      color: colorFromInt(json['color'] as int?),
      photoUpdatedAt: json['photoUpdatedAt'] == null
          ? null
          : DateTime.parse(json['photoUpdatedAt'] as String),
    );

Map<String, dynamic> _$$_AreaToJson(_$_Area instance) => <String, dynamic>{
      'id': instance.id,
      'name': instance.name,
      'bounds': polygonToJson(instance.bounds),
      'color': colorToInt(instance.color),
      'photoUpdatedAt': instance.photoUpdatedAt?.toIso8601String(),
    };
