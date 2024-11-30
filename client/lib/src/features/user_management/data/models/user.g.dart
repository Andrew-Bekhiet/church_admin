// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'user.dart';

// **************************************************************************
// ChurchAdminGenerator
// **************************************************************************

final _$UserFields = <String, FieldMetadata>{
  'uid': FieldMetadata<String>(
    name: 'uid',
    label: '=',
    operators:
        Operator.comparitive.union(Operator.textual).union({Operator.isNull}),
  ),
  'name': FieldMetadata<String>(
    name: 'name',
    label: 'الاسم',
    operators:
        Operator.comparitive.union(Operator.textual).union({Operator.isNull}),
  ),
  'photoUpdatedAt': FieldMetadata<DateTime>(
    name: 'photoUpdatedAt',
    label: 'أخر تحديث للصورة',
    operators: Operator.comparitive.union({Operator.isNull}),
  ),
  'adminOn': FieldMetadata<AdminOnData>(
    name: 'adminOn',
    label: 'مسؤول عن',
    isOrderable: false,
  ),
  'permissions': FieldMetadata<PermissionsSet>(
    name: 'permissions',
    label: 'الصلاحيات',
  ),
  'lastEdit': FieldMetadata<LastRecordedByInfo>(
    name: 'lastEdit',
    label: 'أخر تحديث البيانات',
  ),
  'person': FieldMetadata<Person>(
    name: 'person',
    label: 'بيانات المخدوم',
  ),
  'servicesHistory': FieldMetadata<AdminOnData>(
    name: 'servicesHistory',
    label: 'servicesHistory',
    isOrderable: false,
  ),
  'classesHistory': FieldMetadata<AdminOnData>(
    name: 'classesHistory',
    label: 'classesHistory',
    isOrderable: false,
  ),
  'groupsHistory': FieldMetadata<AdminOnData>(
    name: 'groupsHistory',
    label: 'groupsHistory',
    isOrderable: false,
  ),
};

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$UserImpl _$$UserImplFromJson(Map json) => _$UserImpl(
      uid: json['uid'] as String,
      name: json['name'] as String,
      email: json['email'] as String?,
      photoUpdatedAt: json['photoUpdatedAt'] == null
          ? null
          : DateTime.parse(json['photoUpdatedAt'] as String),
      blurhash: json['blurhash'] as String?,
      adminOn: (json['adminOn'] as List<dynamic>?)
          ?.map(
              (e) => AdminOnData.fromJson(Map<String, Object?>.from(e as Map)))
          .toList(),
      permissions: json['permissions'] == null
          ? const PermissionsSet.empty()
          : permissionsSetFromJson(json['permissions']),
      authId: json['authId'] as String?,
      isMultiFactorEnrolled: json['isMultiFactorEnrolled'] as bool?,
      idToken: json['idToken'] as String?,
      emailVerified: json['emailVerified'] as bool?,
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

Map<String, dynamic> _$$UserImplToJson(_$UserImpl instance) =>
    <String, dynamic>{
      'uid': instance.uid,
      'name': instance.name,
      'email': instance.email,
      'photoUpdatedAt': instance.photoUpdatedAt?.toIso8601String(),
      'blurhash': instance.blurhash,
      'adminOn': instance.adminOn?.map((e) => e.toJson()).toList(),
      'permissions': permissionsSetToJson(instance.permissions),
      'authId': instance.authId,
      if (instance.isMultiFactorEnrolled case final value?)
        'isMultiFactorEnrolled': value,
      if (instance.idToken case final value?) 'idToken': value,
      if (instance.emailVerified case final value?) 'emailVerified': value,
      'lastEdit': instance.lastEdit?.toJson(),
      'person': instance.person?.toJson(),
      'servicesHistory':
          instance.servicesHistory?.map((e) => e.toJson()).toList(),
      'classesHistory':
          instance.classesHistory?.map((e) => e.toJson()).toList(),
      'groupsHistory': instance.groupsHistory?.map((e) => e.toJson()).toList(),
    };
