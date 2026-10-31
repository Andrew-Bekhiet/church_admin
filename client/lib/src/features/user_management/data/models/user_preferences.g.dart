// GENERATED CODE - DO NOT MODIFY BY HAND

// coverage:ignore-file
// ignore_for_file: type=lint

part of 'user_preferences.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

UserPreferences _$UserPreferencesFromJson(Map json) => UserPreferences(
  uid: json['uid'] as String? ?? '',
  orderByPreferences:
      (json['orderByPreferences'] as Map?)?.map(
        (k, e) => MapEntry(k as String, e),
      ) ??
      {},
  secondLinePreferences:
      (json['secondLinePreferences'] as Map?)?.map(
        (k, e) => MapEntry(k as String, e),
      ) ??
      {},
  themeChoice: json['darkTheme'] == null
      ? ThemeChoice.system
      : const StoredDarkThemeConverter().fromJson(json['darkTheme'] as bool?),
  greatFeastTheme: json['greatFeastTheme'] as bool? ?? true,
  lastHomeMode: $enumDecodeNullable(_$HomeModeEnumMap, json['lastHomeMode']),
  lastWhatsappMessageText: json['lastWhatsappMessageText'] as String?,
  updatedAt: _$JsonConverterFromJson<String, DateTime>(
    json['updatedAt'],
    const LocalDateTimeConverter().fromJson,
  ),
);

Map<String, dynamic> _$UserPreferencesToJson(
  UserPreferences instance,
) => <String, dynamic>{
  'uid': instance.uid,
  'orderByPreferences': instance.orderByPreferences,
  'secondLinePreferences': instance.secondLinePreferences,
  'darkTheme': const StoredDarkThemeConverter().toJson(instance.themeChoice),
  'greatFeastTheme': instance.greatFeastTheme,
  'lastHomeMode': _$HomeModeEnumMap[instance.lastHomeMode],
  'lastWhatsappMessageText': instance.lastWhatsappMessageText,
  'updatedAt': _$JsonConverterToJson<String, DateTime>(
    instance.updatedAt,
    const LocalDateTimeConverter().toJson,
  ),
};

const _$HomeModeEnumMap = {
  HomeMode.sundaySchool: 'sundaySchool',
  HomeMode.churchData: 'churchData',
};

Value? _$JsonConverterFromJson<Json, Value>(
  Object? json,
  Value? Function(Json json) fromJson,
) => json == null ? null : fromJson(json as Json);

Json? _$JsonConverterToJson<Json, Value>(
  Value? value,
  Json? Function(Value value) toJson,
) => value == null ? null : toJson(value);
