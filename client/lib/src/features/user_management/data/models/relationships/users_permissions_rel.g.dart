// GENERATED CODE - DO NOT MODIFY BY HAND

// coverage:ignore-file
// ignore_for_file: type=lint

part of 'users_permissions_rel.dart';

// **************************************************************************
// QueryableFieldsGenerator
// **************************************************************************

class UsersPermissionsRelFields {
  factory UsersPermissionsRelFields() => _instance;

  UsersPermissionsRelFields._();

  static final UsersPermissionsRelFields _instance =
      UsersPermissionsRelFields._();

  final FieldMetadata<String> uid = FieldMetadata<String>(
    getValue: (obj) => obj is UsersPermissionsRel ? obj.uid : null,
    parentType: UsersPermissionsRel,
    name: 'uid',
    label: 'uid',
    isCodeOnly: false,
    operators: {...StringOperator.values},
  );

  final FieldMetadata<User> user = FieldMetadata<User>(
    getValue: (obj) => obj is UsersPermissionsRel ? obj.user : null,
    parentType: UsersPermissionsRel,
    name: 'user',
    label: 'بيانات الخادم',
    isCodeOnly: false,
    operators: {...MultiSelectOperator.values},
  );

  final FieldMetadata<UserPermission> permission =
      FieldMetadata<UserPermission>(
        getValue: (obj) => obj is UsersPermissionsRel ? obj.permission : null,
        parentType: UsersPermissionsRel,
        name: 'permission',
        label: 'الصلاحية',
        isCodeOnly: false,
        operators: {...MultiSelectOperator.values},
      );

  late final List<FieldMetadata<Object>> allFields = [uid, user, permission];

  late final Map<String, FieldMetadata<Object>> allFieldsByName = {
    'uid': uid,
    'user': user,
    'permission': permission,
  };
}

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

UsersPermissionsRel _$UsersPermissionsRelFromJson(Map json) =>
    UsersPermissionsRel(
      uid: json['uid'] as String,
      user: User.fromJson(Map<String, Object?>.from(json['user'] as Map)),
      permission: $enumDecode(_$UserPermissionEnumMap, json['permission']),
    );

Map<String, dynamic> _$UsersPermissionsRelToJson(
  UsersPermissionsRel instance,
) => <String, dynamic>{
  'uid': instance.uid,
  'user': instance.user.toJson(),
  'permission': _$UserPermissionEnumMap[instance.permission]!,
};

const _$UserPermissionEnumMap = {
  UserPermission.approved: 'approved',
  UserPermission.manageAllUsers: 'manageAllUsers',
  UserPermission.onboardUsers: 'onboardUsers',
  UserPermission.readAllData: 'readAllData',
  UserPermission.writeAllData: 'writeAllData',
  UserPermission.exportAllData: 'exportAllData',
  UserPermission.recordAllAttendance: 'recordAllAttendance',
  UserPermission.recordAllServantsAttendance: 'recordAllServantsAttendance',
  UserPermission.deleteData: 'deleteData',
  UserPermission.recoverDeleted: 'recoverDeleted',
};
