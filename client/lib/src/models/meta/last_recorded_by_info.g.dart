// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'last_recorded_by_info.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_LastRecordedByInfo _$$_LastRecordedByInfoFromJson(Map json) =>
    _$_LastRecordedByInfo(
      time: DateTime.parse(json['time'] as String),
      recordedBy: readRecordedBy(json, 'recordedBy') as String?,
      user: json['user'] == null
          ? null
          : User.fromJson(Map<String, Object?>.from(json['user'] as Map)),
    );

Map<String, dynamic> _$$_LastRecordedByInfoToJson(
        _$_LastRecordedByInfo instance) =>
    <String, dynamic>{
      'time': instance.time.toIso8601String(),
      'recordedBy': instance.recordedBy,
      'user': instance.user?.toJson(),
    };
