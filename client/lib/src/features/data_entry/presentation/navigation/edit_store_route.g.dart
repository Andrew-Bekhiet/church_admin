// GENERATED CODE - DO NOT MODIFY BY HAND

// coverage:ignore-file
// ignore_for_file: type=lint

part of 'edit_store_route.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

EditStoreExtra _$EditStoreExtraFromJson(Map json) => EditStoreExtra(
  area: json['area'] == null
      ? null
      : Area.fromJson(Map<String, Object?>.from(json['area'] as Map)),
  street: json['street'] == null
      ? null
      : Street.fromJson(Map<String, Object?>.from(json['street'] as Map)),
  store: json['store'] == null
      ? null
      : Store.fromJson(Map<String, Object?>.from(json['store'] as Map)),
  family: json['family'] == null
      ? null
      : Family.fromJson(Map<String, Object?>.from(json['family'] as Map)),
);

Map<String, dynamic> _$EditStoreExtraToJson(EditStoreExtra instance) =>
    <String, dynamic>{
      'area': instance.area?.toJson(),
      'street': instance.street?.toJson(),
      'store': instance.store?.toJson(),
      'family': instance.family?.toJson(),
    };
