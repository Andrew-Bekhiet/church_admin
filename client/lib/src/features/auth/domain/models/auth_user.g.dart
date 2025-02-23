// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'auth_user.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$AuthUserImpl _$$AuthUserImplFromJson(Map json) => _$AuthUserImpl(
      uid: json['uid'] as String,
      email: json['email'] as String,
      emailVerified: json['emailVerified'] as bool,
      idToken: json['idToken'] as String,
      claims: (json['claims'] as Map?)?.map(
            (k, e) => MapEntry(k as String, e),
          ) ??
          {},
      isMultiFactorEnabled: json['isMultiFactorEnabled'] as bool? ?? false,
    );

Map<String, dynamic> _$$AuthUserImplToJson(_$AuthUserImpl instance) =>
    <String, dynamic>{
      'uid': instance.uid,
      'email': instance.email,
      'emailVerified': instance.emailVerified,
      'idToken': instance.idToken,
      'claims': instance.claims,
      'isMultiFactorEnabled': instance.isMultiFactorEnabled,
    };
