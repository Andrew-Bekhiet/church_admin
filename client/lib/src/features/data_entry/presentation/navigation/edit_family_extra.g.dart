// GENERATED CODE - DO NOT MODIFY BY HAND

// coverage:ignore-file
// ignore_for_file: type=lint

part of 'edit_family_extra.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

EditFamilyExtra _$EditFamilyExtraFromJson(Map json) => EditFamilyExtra(
  family: json['family'] == null
      ? null
      : Family.fromJson(Map<String, Object?>.from(json['family'] as Map)),
  street: json['street'] == null
      ? null
      : Street.fromJson(Map<String, Object?>.from(json['street'] as Map)),
  area: json['area'] == null
      ? null
      : Area.fromJson(Map<String, Object?>.from(json['area'] as Map)),
  children: (json['children'] as List<dynamic>?)
      ?.map((e) => Family.fromJson(Map<String, Object?>.from(e as Map)))
      .toSet(),
  parents: (json['parents'] as List<dynamic>?)
      ?.map((e) => Family.fromJson(Map<String, Object?>.from(e as Map)))
      .toSet(),
);

Map<String, dynamic> _$EditFamilyExtraToJson(EditFamilyExtra instance) =>
    <String, dynamic>{
      'family': instance.family?.toJson(),
      'street': instance.street?.toJson(),
      'area': instance.area?.toJson(),
      'children': instance.children?.map((e) => e.toJson()).toList(),
      'parents': instance.parents?.map((e) => e.toJson()).toList(),
    };
