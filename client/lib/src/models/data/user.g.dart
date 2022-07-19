// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'user.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_User _$$_UserFromJson(Map<String, dynamic> json) => _$_User(
      uid: json['uid'] as String,
      permissions: permissionsSetFromJson(json['permissions']),
      email: json['email'] as String,
      firebaseAuthUID: json['firebaseAuthUID'] as String,
      photoUpdatedAt: json['photoUpdatedAt'] == null
          ? null
          : DateTime.parse(json['photoUpdatedAt'] as String),
    );

Map<String, dynamic> _$$_UserToJson(_$_User instance) => <String, dynamic>{
      'uid': instance.uid,
      'permissions': permissionsSetToJson(instance.permissions),
      'email': instance.email,
      'firebaseAuthUID': instance.firebaseAuthUID,
      'photoUpdatedAt': instance.photoUpdatedAt?.toIso8601String(),
    };
