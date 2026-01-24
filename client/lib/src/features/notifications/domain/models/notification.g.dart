// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'notification.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

Notification _$NotificationFromJson(Map json) => Notification(
  id: json['id'] as String,
  title: json['title'] as String,
  body: json['body'] as String,
  sentTime: DateTime.parse(json['sentTime'] as String),
  senderUID: json['senderUID'] as String,
  imageURL: json['imageURL'] as String?,
  type:
      $enumDecodeNullable(_$NotificationTypeEnumMap, json['type']) ??
      NotificationType.remote,
  additionalData: (json['additionalData'] as Map?)?.map(
    (k, e) => MapEntry(k as String, e),
  ),
);

Map<String, dynamic> _$NotificationToJson(Notification instance) =>
    <String, dynamic>{
      'id': instance.id,
      'title': instance.title,
      'body': instance.body,
      'sentTime': instance.sentTime.toIso8601String(),
      'senderUID': instance.senderUID,
      'imageURL': instance.imageURL,
      'type': _$NotificationTypeEnumMap[instance.type]!,
      'additionalData': instance.additionalData,
    };

const _$NotificationTypeEnumMap = {
  NotificationType.local: 'local',
  NotificationType.remote: 'remote',
  NotificationType.manualPushRemote: 'manualPushRemote',
  NotificationType.triggerShorebirdUpdate: 'triggerShorebirdUpdate',
};
