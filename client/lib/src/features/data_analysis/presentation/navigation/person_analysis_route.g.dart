// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'person_analysis_route.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

PersonAnalysisExtra _$PersonAnalysisExtraFromJson(Map json) =>
    PersonAnalysisExtra(
      editOptionsBuilder: PersonAnalysisExtra._editOptionsBuilderFromJson(
          (json['editOptionsBuilder'] as num).toInt()),
      person: json['person'] == null
          ? null
          : Person.fromJson(Map<String, Object?>.from(json['person'] as Map)),
      user: json['user'] == null
          ? null
          : User.fromJson(Map<String, Object?>.from(json['user'] as Map)),
      options: json['options'] == null
          ? null
          : PersonAnalysisOptions.fromJson(
              Map<String, dynamic>.from(json['options'] as Map)),
    );

Map<String, dynamic> _$PersonAnalysisExtraToJson(
        PersonAnalysisExtra instance) =>
    <String, dynamic>{
      'person': instance.person?.toJson(),
      'user': instance.user?.toJson(),
      'options': instance.options?.toJson(),
      'editOptionsBuilder': PersonAnalysisExtra._editOptionsBuilderToJson(
          instance.editOptionsBuilder),
    };
