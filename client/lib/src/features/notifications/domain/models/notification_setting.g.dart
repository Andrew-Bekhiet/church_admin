// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'notification_setting.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_NotificationSetting _$NotificationSettingFromJson(Map json) =>
    _NotificationSetting(
      hours: (json['hours'] as num).toInt(),
      minutes: (json['minutes'] as num).toInt(),
      intervalInDays: (json['intervalInDays'] as num).toInt(),
    );

Map<String, dynamic> _$NotificationSettingToJson(
        _NotificationSetting instance) =>
    <String, dynamic>{
      'hours': instance.hours,
      'minutes': instance.minutes,
      'intervalInDays': instance.intervalInDays,
    };
