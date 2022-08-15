// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'user.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_User _$$_UserFromJson(Map<String, dynamic> json) => _$_User(
      uid: json['uid'] as String,
      name: json['name'] as String,
      photoUpdatedAt: json['photoUpdatedAt'] == null
          ? null
          : DateTime.parse(json['photoUpdatedAt'] as String),
      adminOn: (json['adminOn'] as List<dynamic>?)
          ?.map((e) => AdminOnData.fromJson(e as Map<String, dynamic>))
          .toList(),
      userData: json['userData'] == null
          ? null
          : UserData.fromJson(json['userData'] as Map<String, dynamic>),
      person: json['person'] == null
          ? null
          : Person.fromJson(json['person'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$$_UserToJson(_$_User instance) => <String, dynamic>{
      'uid': instance.uid,
      'name': instance.name,
      'photoUpdatedAt': instance.photoUpdatedAt?.toIso8601String(),
      'adminOn': instance.adminOn?.map((e) => e.toJson()).toList(),
      'userData': instance.userData?.toJson(),
      'person': instance.person?.toJson(),
    };
