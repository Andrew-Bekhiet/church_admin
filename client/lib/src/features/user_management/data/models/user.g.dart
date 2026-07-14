// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'user.dart';

// **************************************************************************
// QueryableFieldsGenerator
// **************************************************************************

class _UserFields {
  _UserFields();

  final FieldMetadata<String> uid = FieldMetadata<String>(
    getValue: (obj) => obj is User ? obj.uid : null,
    parentType: User,
    name: 'uid',
    label: 'uid',
    isCodeOnly: false,
    operators: {...StringOperator.values},
  );

  final FieldMetadata<String> name = FieldMetadata<String>(
    getValue: (obj) => obj is User ? obj.name : null,
    parentType: User,
    name: 'name',
    label: 'الاسم',
    isCodeOnly: false,
    operators: {...StringOperator.values},
  );

  final FieldMetadata<String> email = FieldMetadata<String>(
    getValue: (obj) => obj is User ? obj.email : null,
    parentType: User,
    name: 'email',
    label: 'email',
    isCodeOnly: false,
    operators: {
      ...StringOperator.values,
      PrimitiveOperator.isNull,
      PrimitiveOperator.isNotNull,
    },
  );

  final FieldMetadata<DateTime> photoUpdatedAt = FieldMetadata<DateTime>(
    getValue: (obj) => obj is User ? obj.photoUpdatedAt : null,
    parentType: User,
    name: 'photoUpdatedAt',
    label: 'أخر تحديث للصورة',
    isCodeOnly: false,
    operators: {
      ...DateTimeOperator.values,
      ...DateRangeOperator.values,
      PrimitiveOperator.isNull,
      PrimitiveOperator.isNotNull,
    },
  );

  final FieldMetadata<AdminOnData> adminOn = FieldMetadata<AdminOnData>(
    getValue: (obj) => obj is User ? obj.adminOn : null,
    parentType: User,
    name: 'adminOn',
    label: 'مسؤول عن',
    isCodeOnly: false,
    isOrderable: false,
  );

  final FieldMetadata<UsersPermissionsRel> permissionsRel =
      FieldMetadata<UsersPermissionsRel>(
        getValue: (obj) => obj is User ? obj.permissions : null,
        parentType: User,
        name: 'permissions',
        label: 'permissions',
        isCodeOnly: true,
        isOrderable: false,
      );

  late final FieldMetadata<UserPermission> permissions = permissionsRel
      .redirectTo(
        UsersPermissionsRelFields().permission,
        isExpandable: false,
        isOrderable: false,
      );

  final FieldMetadata<LastRecordedByInfo> lastEdit =
      FieldMetadata<LastRecordedByInfo>(
        getValue: (obj) => obj is User ? obj.lastEdit : null,
        parentType: User,
        name: 'lastEdit',
        label: 'أخر تحديث البيانات',
        isCodeOnly: false,
        operators: {
          ...MultiSelectOperator.values,
          PrimitiveOperator.isNull,
          PrimitiveOperator.isNotNull,
        },
      );

  final FieldMetadata<Person> person = FieldMetadata<Person>(
    getValue: (obj) => obj is User ? obj.person : null,
    parentType: User,
    name: 'person',
    label: 'بيانات المخدوم',
    isCodeOnly: false,
    operators: {
      ...MultiSelectOperator.values,
      PrimitiveOperator.isNull,
      PrimitiveOperator.isNotNull,
    },
  );

  final FieldMetadata<bool> currentUserCanManageThisUser = FieldMetadata<bool>(
    getValue: (obj) => obj is User ? obj.currentUserCanManageThisUser : null,
    parentType: User,
    name: 'currentUserCanManageThisUser',
    label: 'currentUserCanManageThisUser',
    isCodeOnly: false,
    operators: {...BooleanOperator.values},
  );

  late final List<FieldMetadata<Object>> allFields = [
    uid,
    name,
    email,
    photoUpdatedAt,
    adminOn,
    permissions,
    lastEdit,
    person,
    currentUserCanManageThisUser,
  ];
  late final Map<String, FieldMetadata<Object>> allFieldsByName = {
    'uid': uid,
    'name': name,
    'email': email,
    'photoUpdatedAt': photoUpdatedAt,
    'adminOn': adminOn,
    'permissions': permissions,
    'lastEdit': lastEdit,
    'person': person,
    'currentUserCanManageThisUser': currentUserCanManageThisUser,
  };
}

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

User _$UserFromJson(Map json) => User(
  uid: json['uid'] as String? ?? '',
  name: json['name'] as String? ?? '',
  email: json['email'] as String?,
  photoUpdatedAt: _$JsonConverterFromJson<String, DateTime>(
    json['photoUpdatedAt'],
    const LocalDateTimeConverter().fromJson,
  ),
  blurhash: json['blurhash'] as String?,
  adminOn: (json['adminOn'] as List<dynamic>?)
      ?.map((e) => AdminOnData.fromJson(Map<String, Object?>.from(e as Map)))
      .toList(),
  permissions: json['permissions'] == null
      ? const PermissionsSet.empty()
      : permissionsSetFromJson(json['permissions']),
  authId: json['authId'] as String?,
  lastEdit: json['lastEdit'] == null
      ? null
      : LastRecordedByInfo.fromJson(
          Map<String, Object?>.from(json['lastEdit'] as Map),
        ),
  person: json['person'] == null
      ? null
      : Person.fromJson(Map<String, Object?>.from(json['person'] as Map)),
  preferences: json['preferences'] == null
      ? null
      : UserPreferences.fromJson(
          Map<String, Object?>.from(json['preferences'] as Map),
        ),
  fcmTokens:
      (json['fcmTokens'] as List<dynamic>?)
          ?.map((e) => FcmToken.fromJson(Map<String, Object?>.from(e as Map)))
          .toList() ??
      [],
  servicesHistory: (json['servicesHistory'] as List<dynamic>?)
      ?.map((e) => AdminOnData.fromJson(Map<String, Object?>.from(e as Map)))
      .toList(),
  classesHistory: (json['classesHistory'] as List<dynamic>?)
      ?.map((e) => AdminOnData.fromJson(Map<String, Object?>.from(e as Map)))
      .toList(),
  groupsHistory: (json['groupsHistory'] as List<dynamic>?)
      ?.map((e) => AdminOnData.fromJson(Map<String, Object?>.from(e as Map)))
      .toList(),
  currentUserCanManageThisUser:
      json['currentUserCanManageThisUser'] as bool? ?? false,
);

Map<String, dynamic> _$UserToJson(User instance) => <String, dynamic>{
  'uid': instance.uid,
  'name': instance.name,
  'email': instance.email,
  'photoUpdatedAt': _$JsonConverterToJson<String, DateTime>(
    instance.photoUpdatedAt,
    const LocalDateTimeConverter().toJson,
  ),
  'blurhash': instance.blurhash,
  'adminOn': instance.adminOn?.map((e) => e.toJson()).toList(),
  'permissions': permissionsSetToJson(instance.permissions),
  'authId': instance.authId,
  'lastEdit': instance.lastEdit?.toJson(),
  'person': instance.person?.toJson(),
  'preferences': instance.preferences?.toJson(),
  'fcmTokens': instance.fcmTokens.map((e) => e.toJson()).toList(),
  'servicesHistory': instance.servicesHistory?.map((e) => e.toJson()).toList(),
  'classesHistory': instance.classesHistory?.map((e) => e.toJson()).toList(),
  'groupsHistory': instance.groupsHistory?.map((e) => e.toJson()).toList(),
};

Value? _$JsonConverterFromJson<Json, Value>(
  Object? json,
  Value? Function(Json json) fromJson,
) => json == null ? null : fromJson(json as Json);

Json? _$JsonConverterToJson<Json, Value>(
  Value? value,
  Json? Function(Value value) toJson,
) => value == null ? null : toJson(value);
