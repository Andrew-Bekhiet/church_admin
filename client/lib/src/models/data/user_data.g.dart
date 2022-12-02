// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'user_data.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_UserData _$$_UserDataFromJson(Map json) => _$_UserData(
      uid: json['uid'] as String,
      permissions: permissionsSetFromJson(json['permissions']),
      email: json['email'] as String,
      firebaseAuthUid: json['firebaseAuthUid'] as String?,
      lastEdit: json['lastEdit'] == null
          ? null
          : LastRecordedByInfo.fromJson(
              Map<String, Object?>.from(json['lastEdit'] as Map)),
    );

Map<String, dynamic> _$$_UserDataToJson(_$_UserData instance) =>
    <String, dynamic>{
      'uid': instance.uid,
      'permissions': permissionsSetToJson(instance.permissions),
      'email': instance.email,
      'firebaseAuthUid': instance.firebaseAuthUid,
      'lastEdit': instance.lastEdit?.toJson(),
    };
