// GENERATED CODE - DO NOT MODIFY BY HAND

// coverage:ignore-file
// ignore_for_file: type=lint

part of 'edit_street_extra.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

EditStreetExtra _$EditStreetExtraFromJson(Map json) => EditStreetExtra(
  street: json['street'] == null
      ? null
      : Street.fromJson(Map<String, Object?>.from(json['street'] as Map)),
  area: json['area'] == null
      ? null
      : Area.fromJson(Map<String, Object?>.from(json['area'] as Map)),
);

Map<String, dynamic> _$EditStreetExtraToJson(EditStreetExtra instance) =>
    <String, dynamic>{
      'street': instance.street?.toJson(),
      'area': instance.area?.toJson(),
    };
