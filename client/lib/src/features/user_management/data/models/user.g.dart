// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'user.dart';

// **************************************************************************
// QueryableFieldsGenerator
// **************************************************************************

class _UserFields {
  _UserFields();

  final FieldMetadata<String> uid = FieldMetadata<String>(
    parentType: User,
    name: 'uid',
    label: 'uid',
    isCodeOnly: false,
    operators: {...StringOperator.values},
  );

  final FieldMetadata<String> name = FieldMetadata<String>(
    parentType: User,
    name: 'name',
    label: 'الاسم',
    isCodeOnly: false,
    operators: {...StringOperator.values},
  );

  final FieldMetadata<String> email = FieldMetadata<String>(
    parentType: User,
    name: 'email',
    label: 'email',
    isCodeOnly: false,
    operators: {
      ...StringOperator.values,
      PrimitiveOperator.isNull,
      PrimitiveOperator.isNotNull
    },
  );

  final FieldMetadata<DateTime> photoUpdatedAt = FieldMetadata<DateTime>(
    parentType: User,
    name: 'photoUpdatedAt',
    label: 'أخر تحديث للصورة',
    isCodeOnly: false,
    operators: {
      ...DateTimeOperator.values,
      ...DateRangeOperator.values,
      PrimitiveOperator.isNull,
      PrimitiveOperator.isNotNull
    },
  );

  final FieldMetadata<AdminOnData> adminOn = FieldMetadata<AdminOnData>(
    parentType: User,
    name: 'adminOn',
    label: 'مسؤول عن',
    isCodeOnly: false,
    isOrderable: false,
  );

  final FieldMetadata<UsersPermissionsRel> permissionsRel =
      FieldMetadata<UsersPermissionsRel>(
    parentType: User,
    name: 'permissions',
    label: 'permissions',
    isCodeOnly: true,
    isOrderable: false,
  );

  late final FieldMetadata<UserPermission> permissions =
      permissionsRel.redirectTo(
    UsersPermissionsRelFields().permission,
    isExpandable: false,
  );

  final FieldMetadata<LastRecordedByInfo> lastEdit =
      FieldMetadata<LastRecordedByInfo>(
    parentType: User,
    name: 'lastEdit',
    label: 'أخر تحديث البيانات',
    isCodeOnly: false,
    operators: {
      ...MultiSelectOperator.values,
      PrimitiveOperator.isNull,
      PrimitiveOperator.isNotNull
    },
  );

  final FieldMetadata<Person> person = FieldMetadata<Person>(
    parentType: User,
    name: 'person',
    label: 'بيانات المخدوم',
    isCodeOnly: false,
    operators: {
      ...MultiSelectOperator.values,
      PrimitiveOperator.isNull,
      PrimitiveOperator.isNotNull
    },
  );

  late final List<FieldMetadata<Object>> allFields = [
    uid,
    name,
    email,
    photoUpdatedAt,
    adminOn,
    permissions,
    lastEdit,
    person
  ];
  late final Map<String, FieldMetadata<Object>> allFieldsByName = {
    'uid': uid,
    'name': name,
    'email': email,
    'photoUpdatedAt': photoUpdatedAt,
    'adminOn': adminOn,
    'permissions': permissions,
    'lastEdit': lastEdit,
    'person': person
  };
}

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

User _$UserFromJson(Map json) => User(
      uid: json['uid'] as String? ?? '',
      name: json['name'] as String? ?? '',
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

Map<String, dynamic> _$UserToJson(User instance) => <String, dynamic>{
      'uid': instance.uid,
      'name': instance.name,
      'email': instance.email,
      'photoUpdatedAt': instance.photoUpdatedAt?.toIso8601String(),
      'blurhash': instance.blurhash,
      'adminOn': instance.adminOn?.map((e) => e.toJson()).toList(),
      'permissions': permissionsSetToJson(instance.permissions),
      'authId': instance.authId,
      'lastEdit': instance.lastEdit?.toJson(),
      'person': instance.person?.toJson(),
      'servicesHistory':
          instance.servicesHistory?.map((e) => e.toJson()).toList(),
      'classesHistory':
          instance.classesHistory?.map((e) => e.toJson()).toList(),
      'groupsHistory': instance.groupsHistory?.map((e) => e.toJson()).toList(),
    };
