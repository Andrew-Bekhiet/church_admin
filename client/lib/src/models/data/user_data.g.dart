// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'user_data.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_UserData _$$_UserDataFromJson(Map<String, dynamic> json) => _$_UserData(
      uid: json['uid'] as String,
      permissions: permissionsSetFromJson(json['permissions']),
      email: json['email'] as String,
      firebaseAuthUid: json['firebaseAuthUid'] as String?,
      lastEdit: json['lastEdit'] == null
          ? null
          : LastRecordedByInfo.fromJson(
              json['lastEdit'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$$_UserDataToJson(_$_UserData instance) =>
    <String, dynamic>{
      'uid': instance.uid,
      'permissions': permissionsSetToJson(instance.permissions),
      'email': instance.email,
      'firebaseAuthUid': instance.firebaseAuthUid,
      'lastEdit': instance.lastEdit?.toJson(),
    };
