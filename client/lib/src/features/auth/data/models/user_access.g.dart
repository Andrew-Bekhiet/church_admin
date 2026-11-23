// GENERATED CODE - DO NOT MODIFY BY HAND

// coverage:ignore-file
// ignore_for_file: type=lint

part of 'user_access.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

UserAccess _$UserAccessFromJson(Map json) => UserAccess(
  uid: json['uid'] as String? ?? '',
  permissions:
      (json['permissions'] as List<dynamic>?)
          ?.map((e) => e as String)
          .toSet() ??
      {},
  adminOn:
      (json['adminOn'] as List<dynamic>?)?.map((e) => e as String).toSet() ??
      {},
);

Map<String, dynamic> _$UserAccessToJson(UserAccess instance) =>
    <String, dynamic>{
      'uid': instance.uid,
      'permissions': instance.permissions.toList(),
      'adminOn': instance.adminOn.toList(),
    };
