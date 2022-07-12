// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'user.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_User _$$_UserFromJson(Map<String, dynamic> json) => _$_User(
      uid: json['uid'] as String,
      permissions: permissionsSetFromJson(json['permissions']),
      email: json['email'] as String,
      firebaseAuthUID: json['firebase_auth_uid'] as String,
      photoUpdatedAt: json['photo_updated_at'] == null
          ? null
          : DateTime.parse(json['photo_updated_at'] as String),
    );

Map<String, dynamic> _$$_UserToJson(_$_User instance) => <String, dynamic>{
      'uid': instance.uid,
      'permissions': permissionsSetToJson(instance.permissions),
      'email': instance.email,
      'firebase_auth_uid': instance.firebaseAuthUID,
      'photo_updated_at': instance.photoUpdatedAt?.toIso8601String(),
    };
