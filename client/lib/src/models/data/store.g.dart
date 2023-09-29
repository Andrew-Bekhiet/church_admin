// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'store.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_Store _$$_StoreFromJson(Map json) => _$_Store(
      id: json['id'] as String,
      name: json['name'] as String,
      family: json['family'] == null
          ? null
          : Family.fromJson(Map<String, Object?>.from(json['family'] as Map)),
      address: json['address'] as String?,
      familyId: json['adminFamily'] as String?,
      geolocation: pointFromJson(json['geolocation']),
      color: colorFromInt(json['color'] as int?),
      areas: (json['areas'] as List<dynamic>?)
          ?.map((e) => Area.fromJson(Map<String, Object?>.from(e as Map)))
          .toList(),
      streets: (json['streets'] as List<dynamic>?)
          ?.map((e) => Street.fromJson(Map<String, Object?>.from(e as Map)))
          .toList(),
      lastEdit: json['lastEdit'] == null
          ? null
          : LastRecordedByInfo.fromJson(
              Map<String, Object?>.from(json['lastEdit'] as Map)),
      photoUpdatedAt: json['photoUpdatedAt'] == null
          ? null
          : DateTime.parse(json['photoUpdatedAt'] as String),
      blurhash: json['blurhash'] as String?,
    );

Map<String, dynamic> _$$_StoreToJson(_$_Store instance) => <String, dynamic>{
      'id': instance.id,
      'name': instance.name,
      'family': instance.family?.toJson(),
      'address': instance.address,
      'adminFamily': instance.familyId,
      'geolocation': pointToJson(instance.geolocation),
      'color': colorToInt(instance.color),
      'areas': instance.areas?.map((e) => e.toJson()).toList(),
      'streets': instance.streets?.map((e) => e.toJson()).toList(),
      'lastEdit': instance.lastEdit?.toJson(),
      'photoUpdatedAt': instance.photoUpdatedAt?.toIso8601String(),
      'blurhash': instance.blurhash,
    };
