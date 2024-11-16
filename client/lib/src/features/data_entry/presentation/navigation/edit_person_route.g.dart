// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'edit_person_route.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

EditPersonExtra _$EditPersonExtraFromJson(Map json) => EditPersonExtra(
      person: json['person'] == null
          ? null
          : Person.fromJson(Map<String, Object?>.from(json['person'] as Map)),
      family: json['family'] == null
          ? null
          : Family.fromJson(Map<String, Object?>.from(json['family'] as Map)),
      service: json['service'] == null
          ? null
          : Service.fromJson(Map<String, Object?>.from(json['service'] as Map)),
      group: json['group'] == null
          ? null
          : Group.fromJson(Map<String, Object?>.from(json['group'] as Map)),
      studyYear: json['studyYear'] == null
          ? null
          : StudyYear.fromJson(
              Map<String, Object?>.from(json['studyYear'] as Map)),
      gender: json['gender'] as bool?,
    );

Map<String, dynamic> _$EditPersonExtraToJson(EditPersonExtra instance) =>
    <String, dynamic>{
      'person': instance.person?.toJson(),
      'family': instance.family?.toJson(),
      'service': instance.service?.toJson(),
      'group': instance.group?.toJson(),
      'studyYear': instance.studyYear?.toJson(),
      'gender': instance.gender,
    };
