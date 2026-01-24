// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'notification_setting.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

NotificationSetting _$NotificationSettingFromJson(Map json) =>
    NotificationSetting(
      hours: (json['hours'] as num).toInt(),
      minutes: (json['minutes'] as num).toInt(),
      intervalInDays: (json['intervalInDays'] as num).toInt(),
    );

Map<String, dynamic> _$NotificationSettingToJson(
  NotificationSetting instance,
) => <String, dynamic>{
  'hours': instance.hours,
  'minutes': instance.minutes,
  'intervalInDays': instance.intervalInDays,
};
