// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'last_recorded_by_info.dart';

// **************************************************************************
// ChurchAdminGenerator
// **************************************************************************

final _$LastRecordedByInfoFields = <String, FieldMetadata>{
  'time': FieldMetadata<DateTime>(
    name: 'time',
    label: 'الوقت',
    operators: Operator.comparitive.union({Operator.isNull}),
  ),
  'user': FieldMetadata<User>(
    name: 'user',
    label: 'بيانات الخادم',
  ),
};

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$LastRecordedByInfoImpl _$$LastRecordedByInfoImplFromJson(Map json) =>
    _$LastRecordedByInfoImpl(
      time: DateTime.parse(json['time'] as String),
      recordedBy: readRecordedBy(json, 'recordedBy') as String?,
      user: json['user'] == null
          ? null
          : User.fromJson(Map<String, Object?>.from(json['user'] as Map)),
    );

Map<String, dynamic> _$$LastRecordedByInfoImplToJson(
        _$LastRecordedByInfoImpl instance) =>
    <String, dynamic>{
      'time': instance.time.toIso8601String(),
      'recordedBy': instance.recordedBy,
      'user': instance.user?.toJson(),
    };
