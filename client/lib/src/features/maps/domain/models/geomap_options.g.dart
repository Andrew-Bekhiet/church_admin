// GENERATED CODE - DO NOT MODIFY BY HAND

// coverage:ignore-file
// ignore_for_file: type=lint

part of 'geomap_options.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

GeomapOptions _$GeomapOptionsFromJson(Map json) => GeomapOptions(
  layers:
      (json['layers'] as List<dynamic>?)
          ?.map((e) => $enumDecode(_$GeoMapLayerEnumMap, e))
          .toSet() ??
      const {
        GeoMapLayer.areas,
        GeoMapLayer.streets,
        GeoMapLayer.families,
        GeoMapLayer.persons,
      },
  selectedAreas:
      (json['selectedAreas'] as List<dynamic>?)
          ?.map((e) => Area.fromJson(Map<String, Object?>.from(e as Map)))
          .toSet() ??
      const {},
  selectedStreets:
      (json['selectedStreets'] as List<dynamic>?)
          ?.map((e) => Street.fromJson(Map<String, Object?>.from(e as Map)))
          .toSet() ??
      const {},
  selectedFamilies:
      (json['selectedFamilies'] as List<dynamic>?)
          ?.map((e) => Family.fromJson(Map<String, Object?>.from(e as Map)))
          .toSet() ??
      const {},
  selectedStores:
      (json['selectedStores'] as List<dynamic>?)
          ?.map((e) => Store.fromJson(Map<String, Object?>.from(e as Map)))
          .toSet() ??
      const {},
  selectedServices:
      (json['selectedServices'] as List<dynamic>?)
          ?.map((e) => Service.fromJson(Map<String, Object?>.from(e as Map)))
          .toSet() ??
      const {},
  selectedClasses:
      (json['selectedClasses'] as List<dynamic>?)
          ?.map((e) => Class.fromJson(Map<String, Object?>.from(e as Map)))
          .toSet() ??
      const {},
  selectedGroups:
      (json['selectedGroups'] as List<dynamic>?)
          ?.map((e) => Group.fromJson(Map<String, Object?>.from(e as Map)))
          .toSet() ??
      const {},
);

Map<String, dynamic> _$GeomapOptionsToJson(
  GeomapOptions instance,
) => <String, dynamic>{
  'layers': instance.layers.map((e) => _$GeoMapLayerEnumMap[e]!).toList(),
  'selectedAreas': instance.selectedAreas.map((e) => e.toJson()).toList(),
  'selectedStreets': instance.selectedStreets.map((e) => e.toJson()).toList(),
  'selectedFamilies': instance.selectedFamilies.map((e) => e.toJson()).toList(),
  'selectedStores': instance.selectedStores.map((e) => e.toJson()).toList(),
  'selectedServices': instance.selectedServices.map((e) => e.toJson()).toList(),
  'selectedClasses': instance.selectedClasses.map((e) => e.toJson()).toList(),
  'selectedGroups': instance.selectedGroups.map((e) => e.toJson()).toList(),
};

const _$GeoMapLayerEnumMap = {
  GeoMapLayer.areas: 'areas',
  GeoMapLayer.streets: 'streets',
  GeoMapLayer.families: 'families',
  GeoMapLayer.stores: 'stores',
  GeoMapLayer.persons: 'persons',
};
