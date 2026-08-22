// GENERATED CODE - DO NOT MODIFY BY HAND

// ignore_for_file: member_ordering

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
  isMultiFactorEnabled: json['isMultiFactorEnabled'] as bool? ?? false,
);

Map<String, dynamic> _$AuthUserToJson(AuthUser instance) => <String, dynamic>{
  'uid': instance.uid,
  'email': instance.email,
  'emailVerified': instance.emailVerified,
  'idToken': instance.idToken,
  'claims': instance.claims,
  'isMultiFactorEnabled': instance.isMultiFactorEnabled,
};
