// GENERATED CODE - DO NOT MODIFY BY HAND

// coverage:ignore-file
// ignore_for_file: type=lint

part of 'invitation.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

Invitation _$InvitationFromJson(Map json) => Invitation(
  id: json['id'] as String,
  userUid: json['userUid'] as String,
  code: json['code'] as String,
  createdAt: const LocalDateTimeConverter().fromJson(
    json['createdAt'] as String,
  ),
  expiresAt: const LocalDateTimeConverter().fromJson(
    json['expiresAt'] as String,
  ),
  claimedAt: _$JsonConverterFromJson<String, DateTime>(
    json['claimedAt'],
    const LocalDateTimeConverter().fromJson,
  ),
);

Map<String, dynamic> _$InvitationToJson(Invitation instance) =>
    <String, dynamic>{
      'id': instance.id,
      'userUid': instance.userUid,
      'code': instance.code,
      'createdAt': const LocalDateTimeConverter().toJson(instance.createdAt),
      'expiresAt': const LocalDateTimeConverter().toJson(instance.expiresAt),
      'claimedAt': _$JsonConverterToJson<String, DateTime>(
        instance.claimedAt,
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
