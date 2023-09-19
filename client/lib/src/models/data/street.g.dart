// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'street.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_Street _$$_StreetFromJson(Map json) => _$_Street(
      id: json['id'] as String,
      name: json['name'] as String,
      line: lineFromJson(json['line']),
      color: colorFromInt(json['color'] as int?),
      photoUpdatedAt: json['photoUpdatedAt'] == null
          ? null
          : DateTime.parse(json['photoUpdatedAt'] as String),
      blurhash: json['blurhash'] as String?,
      areas: (json['areas'] as List<dynamic>?)
          ?.map((e) => Area.fromJson(Map<String, Object?>.from(e as Map)))
          .toList(),
      lastEdit: json['lastEdit'] == null
          ? null
          : LastRecordedByInfo.fromJson(
              Map<String, Object?>.from(json['lastEdit'] as Map)),
    );

Map<String, dynamic> _$$_StreetToJson(_$_Street instance) => <String, dynamic>{
      'id': instance.id,
      'name': instance.name,
      'line': lineToJson(instance.line),
      'color': colorToInt(instance.color),
      'photoUpdatedAt': instance.photoUpdatedAt?.toIso8601String(),
      'blurhash': instance.blurhash,
      'areas': instance.areas?.map((e) => e.toJson()).toList(),
      'lastEdit': instance.lastEdit?.toJson(),
    };
