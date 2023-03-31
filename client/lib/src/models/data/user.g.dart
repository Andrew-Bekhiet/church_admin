// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'user.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_User _$$_UserFromJson(Map json) => _$_User(
      uid: json['uid'] as String,
      name: json['name'] as String,
      email: json['email'] as String?,
      photoUpdatedAt: json['photoUpdatedAt'] == null
          ? null
          : DateTime.parse(json['photoUpdatedAt'] as String),
      adminOn: (json['adminOn'] as List<dynamic>?)
          ?.map(
              (e) => AdminOnData.fromJson(Map<String, Object?>.from(e as Map)))
          .toList(),
      permissions: json['permissions'] == null
          ? const PermissionsSet.empty()
          : permissionsSetFromJson(json['permissions']),
      authId: json['authId'] as String?,
      password: json['password'] as String?,
      idToken: json['idToken'] as String?,
      lastEdit: json['lastEdit'] == null
          ? null
          : LastRecordedByInfo.fromJson(
              Map<String, Object?>.from(json['lastEdit'] as Map)),
      person: json['person'] == null
          ? null
          : Person.fromJson(Map<String, Object?>.from(json['person'] as Map)),
      servicesHistory: (json['servicesHistory'] as List<dynamic>?)
          ?.map(
              (e) => AdminOnData.fromJson(Map<String, Object?>.from(e as Map)))
          .toList(),
      classesHistory: (json['classesHistory'] as List<dynamic>?)
          ?.map(
              (e) => AdminOnData.fromJson(Map<String, Object?>.from(e as Map)))
          .toList(),
      groupsHistory: (json['groupsHistory'] as List<dynamic>?)
          ?.map(
              (e) => AdminOnData.fromJson(Map<String, Object?>.from(e as Map)))
          .toList(),
    );

Map<String, dynamic> _$$_UserToJson(_$_User instance) {
  final val = <String, dynamic>{
    'uid': instance.uid,
    'name': instance.name,
    'email': instance.email,
    'photoUpdatedAt': instance.photoUpdatedAt?.toIso8601String(),
    'adminOn': instance.adminOn?.map((e) => e.toJson()).toList(),
    'permissions': permissionsSetToJson(instance.permissions),
    'authId': instance.authId,
  };

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('password', instance.password);
  writeNotNull('idToken', instance.idToken);
  val['lastEdit'] = instance.lastEdit?.toJson();
  val['person'] = instance.person?.toJson();
  val['servicesHistory'] =
      instance.servicesHistory?.map((e) => e.toJson()).toList();
  val['classesHistory'] =
      instance.classesHistory?.map((e) => e.toJson()).toList();
  val['groupsHistory'] =
      instance.groupsHistory?.map((e) => e.toJson()).toList();
  return val;
}
