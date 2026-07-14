// GENERATED CODE - DO NOT MODIFY BY HAND

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
  darkTheme: json['darkTheme'] as bool?,
  greatFeastTheme: json['greatFeastTheme'] as bool? ?? true,
  lastHomeMode: $enumDecodeNullable(_$HomeModeEnumMap, json['lastHomeMode']),
  updatedAt: _$JsonConverterFromJson<String, DateTime>(
    json['updatedAt'],
    const LocalDateTimeConverter().fromJson,
  ),
);

Map<String, dynamic> _$UserPreferencesToJson(UserPreferences instance) =>
    <String, dynamic>{
      'uid': instance.uid,
      'orderByPreferences': instance.orderByPreferences,
      'darkTheme': instance.darkTheme,
      'greatFeastTheme': instance.greatFeastTheme,
      'lastHomeMode': _$HomeModeEnumMap[instance.lastHomeMode],
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
