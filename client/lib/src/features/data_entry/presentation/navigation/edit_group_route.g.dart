// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'edit_group_route.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

EditGroupExtra _$EditGroupExtraFromJson(Map json) => EditGroupExtra(
      group: json['group'] == null
          ? null
          : Group.fromJson(Map<String, Object?>.from(json['group'] as Map)),
      service: json['service'] == null
          ? null
          : Service.fromJson(Map<String, Object?>.from(json['service'] as Map)),
    );

Map<String, dynamic> _$EditGroupExtraToJson(EditGroupExtra instance) =>
    <String, dynamic>{
      'group': instance.group?.toJson(),
      'service': instance.service?.toJson(),
    };
