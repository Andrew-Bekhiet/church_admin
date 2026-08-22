// GENERATED CODE - DO NOT MODIFY BY HAND

// coverage:ignore-file
// ignore_for_file: type=lint

part of 'fcm_token.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

FcmToken _$FcmTokenFromJson(Map json) => FcmToken(
  uid: json['uid'] as String? ?? '',
  token: json['token'] as String? ?? '',
  createdAt: _$JsonConverterFromJson<String, DateTime>(
    json['createdAt'],
    const LocalDateTimeConverter().fromJson,
  ),
);

Map<String, dynamic> _$FcmTokenToJson(FcmToken instance) => <String, dynamic>{
  'uid': instance.uid,
  'token': instance.token,
  'createdAt': _$JsonConverterToJson<String, DateTime>(
    instance.createdAt,
    const LocalDateTimeConverter().toJson,
  ),
};

Value? _$JsonConverterFromJson<Json, Value>(
  Object? json,
  Value? Function(Json json) fromJson,
) => json == null ? null : fromJson(json as Json);

Json? _$JsonConverterToJson<Json, Value>(
  Value? value,
  Json? Function(Value value) toJson,
) => value == null ? null : toJson(value);
