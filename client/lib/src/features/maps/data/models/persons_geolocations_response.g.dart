// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'persons_geolocations_response.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

PersonsGeolocationsResponse _$PersonsGeolocationsResponseFromJson(Map json) =>
    PersonsGeolocationsResponse(
      areas: (json['areas'] as List<dynamic>?)
              ?.map((e) => Area.fromJson(Map<String, Object?>.from(e as Map)))
              .toSet() ??
          const {},
      streets: (json['streets'] as List<dynamic>?)
              ?.map((e) => Street.fromJson(Map<String, Object?>.from(e as Map)))
              .toSet() ??
          const {},
      families: (json['families'] as List<dynamic>?)
              ?.map((e) => Family.fromJson(Map<String, Object?>.from(e as Map)))
              .toSet() ??
          const {},
      stores: (json['stores'] as List<dynamic>?)
              ?.map((e) => Store.fromJson(Map<String, Object?>.from(e as Map)))
              .toSet() ??
          const {},
      persons: (json['persons'] as List<dynamic>?)
              ?.map((e) => Person.fromJson(Map<String, Object?>.from(e as Map)))
              .toSet() ??
          const {},
    );

Map<String, dynamic> _$PersonsGeolocationsResponseToJson(
        PersonsGeolocationsResponse instance) =>
    <String, dynamic>{
      'areas': instance.areas.map((e) => e.toJson()).toList(),
      'streets': instance.streets.map((e) => e.toJson()).toList(),
      'families': instance.families.map((e) => e.toJson()).toList(),
      'stores': instance.stores.map((e) => e.toJson()).toList(),
      'persons': instance.persons.map((e) => e.toJson()).toList(),
    };
