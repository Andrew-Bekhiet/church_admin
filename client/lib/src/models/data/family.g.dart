// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'family.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_Family _$$_FamilyFromJson(Map json) => _$_Family(
      id: json['id'] as String,
      name: json['name'] as String,
      address: json['address'] as String?,
      geolocation: pointFromJson(json['geolocation']),
      notes: json['notes'] as String?,
      color: colorFromInt(json['color'] as int?),
      photoUpdatedAt: json['photoUpdatedAt'] == null
          ? null
          : DateTime.parse(json['photoUpdatedAt'] as String),
      areas: (json['areas'] as List<dynamic>?)
          ?.map((e) => Area.fromJson(Map<String, Object?>.from(e as Map)))
          .toList(),
      streets: (json['streets'] as List<dynamic>?)
          ?.map((e) => Street.fromJson(Map<String, Object?>.from(e as Map)))
          .toList(),
      children: familyChildrenFromJson(json['children'] as List?),
      parents: familyParentsFromJson(json['parents'] as List?),
      lastEdit: json['lastEdit'] == null
          ? null
          : LastRecordedByInfo.fromJson(
              Map<String, Object?>.from(json['lastEdit'] as Map)),
    );

const _$$_FamilyFieldMap = <String, String>{
  'id': 'id',
  'name': 'name',
  'address': 'address',
  'geolocation': 'geolocation',
  'notes': 'notes',
  'color': 'color',
  'photoUpdatedAt': 'photoUpdatedAt',
  'areas': 'areas',
  'streets': 'streets',
  'children': 'children',
  'parents': 'parents',
  'lastEdit': 'lastEdit',
};

Map<String, dynamic> _$$_FamilyToJson(_$_Family instance) => <String, dynamic>{
      'id': instance.id,
      'name': instance.name,
      'address': instance.address,
      'geolocation': pointToJson(instance.geolocation),
      'notes': instance.notes,
      'color': colorToInt(instance.color),
      'photoUpdatedAt': instance.photoUpdatedAt?.toIso8601String(),
      'areas': instance.areas?.map((e) => e.toJson()).toList(),
      'streets': instance.streets?.map((e) => e.toJson()).toList(),
      'children': familyChildrenToJson(instance.children),
      'parents': familyParentsToJson(instance.parents),
      'lastEdit': instance.lastEdit?.toJson(),
    };
