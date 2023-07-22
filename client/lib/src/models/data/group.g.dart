// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'group.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_Group _$$_GroupFromJson(Map json) => _$_Group(
      id: json['id'] as String,
      name: json['name'] as String,
      color: colorFromInt(json['color'] as int?),
      photoUpdatedAt: json['photoUpdatedAt'] == null
          ? null
          : DateTime.parse(json['photoUpdatedAt'] as String),
      serviceId: json['serviceId'] as String?,
      service: json['service'] == null
          ? null
          : Service.fromJson(Map<String, Object?>.from(json['service'] as Map)),
      validity: dateRangeFromString(json['validity']),
      lastEdit: json['lastEdit'] == null
          ? null
          : LastRecordedByInfo.fromJson(
              Map<String, Object?>.from(json['lastEdit'] as Map)),
      adminUsers: adminUsersFromJson(json['adminUsers'] as List?),
      attendanceHistoryAggregate: analysisDataFromJson(
          json['attendanceHistoryAggregate'] as Map<String, dynamic>?),
      attendanceDaysConstraintsAggregate: analysisDataFromJson(
          json['attendanceDaysConstraintsAggregate'] as Map<String, dynamic>?),
    );

Map<String, dynamic> _$$_GroupToJson(_$_Group instance) => <String, dynamic>{
      'id': instance.id,
      'name': instance.name,
      'color': colorToInt(instance.color),
      'photoUpdatedAt': instance.photoUpdatedAt?.toIso8601String(),
      'serviceId': instance.serviceId,
      'service': instance.service?.toJson(),
      'validity': dateRangeToString(instance.validity),
      'lastEdit': instance.lastEdit?.toJson(),
      'adminUsers': adminUsersToJson(instance.adminUsers),
      'attendanceHistoryAggregate':
          analysisDataToJson(instance.attendanceHistoryAggregate),
      'attendanceDaysConstraintsAggregate':
          analysisDataToJson(instance.attendanceDaysConstraintsAggregate),
    };
