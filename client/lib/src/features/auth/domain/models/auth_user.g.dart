// GENERATED CODE - DO NOT MODIFY BY HAND

// coverage:ignore-file
// ignore_for_file: type=lint

part of 'auth_user.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

AuthUser _$AuthUserFromJson(Map json) => AuthUser(
  uid: json['uid'] as String,
  email: json['email'] as String,
  emailVerified: json['emailVerified'] as bool,
  idToken: json['idToken'] as String,
  claims:
      (json['claims'] as Map?)?.map((k, e) => MapEntry(k as String, e)) ??
      const {},
);

Map<String, dynamic> _$AuthUserToJson(AuthUser instance) => <String, dynamic>{
  'uid': instance.uid,
  'email': instance.email,
  'emailVerified': instance.emailVerified,
  'idToken': instance.idToken,
  'claims': instance.claims,
};
