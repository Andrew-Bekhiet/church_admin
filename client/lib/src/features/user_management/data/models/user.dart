import 'package:church_admin/church_admin.dart';
import 'package:church_admin_annotations/church_admin_annotations.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'user.freezed.dart';
part 'user.g.dart';

@freezed
@JsonSerializable()
@Queryable(label: 'الخدام', extensible: true)
class User extends ViewableWithIDAndImage
    with _$User
    implements SerializableExtra {
  @override
  @JsonKey(defaultValue: '')
  @QueryableField(label: 'uid')
  final String uid;

  @override
  @JsonKey(defaultValue: '')
  @QueryableField(label: 'الاسم')
  final String name;

  @override
  @QueryableField(label: 'email')
  final String? email;

  @override
  @LocalDateTimeConverter()
  @QueryableField(label: 'أخر تحديث للصورة')
  final DateTime? photoUpdatedAt;

  @override
  final String? blurhash;

  @override
  @QueryableField(label: 'مسؤول عن')
  final List<AdminOnData>? adminOn;

  @override
  @JsonKey(fromJson: permissionsSetFromJson, toJson: permissionsSetToJson)
  @QueryableField.manyToMany(through: UsersPermissionsRel, select: 'permission')
  final PermissionsSet permissions;

  @override
  final String? authId;

  @override
  @QueryableField(label: 'أخر تحديث البيانات')
  final LastRecordedByInfo? lastEdit;

  @override
  @QueryableField(label: 'بيانات المخدوم')
  final Person? person;

  @override
  final UserPreferences? preferences;

  @override
  @JsonKey(defaultValue: <FcmToken>[])
  final List<FcmToken> fcmTokens;

  @override
  final List<AdminOnData>? servicesHistory;

  @override
  final List<AdminOnData>? classesHistory;

  @override
  final List<AdminOnData>? groupsHistory;

  @override
  final Invitation? invitation;

  @override
  @JsonKey(includeToJson: false)
  @QueryableField(label: 'currentUserCanManageThisUser')
  final bool currentUserCanManageThisUser;

  @override
  ObjectImageInfo get imageInfo =>
      FunctionsObjectImageInfo('users', id, lastUpdatedTime: photoUpdatedAt);

  @override
  String get typeName => AdvancedQueriesMetadata().user.name;

  @override
  String get id => uid;

  bool get canManageSomeUsers =>
      permissions.manageAllUsers ||
      permissions.onboardUsers ||
      (adminOn?.any(
            (p) =>
                (p.areaAdminOnUsers ?? false) ||
                (p.serviceAdminOnUsers ?? false) ||
                (p.groupAdminOnUsers ?? false),
          ) ??
          false);

  const User({
    required this.uid,
    required this.name,
    this.permissions = const PermissionsSet.empty(),
    this.fcmTokens = const [],
    this.currentUserCanManageThisUser = false,
    this.email,
    this.photoUpdatedAt,
    this.blurhash,
    this.adminOn,
    this.authId,
    this.lastEdit,
    this.person,
    this.preferences,
    this.servicesHistory,
    this.classesHistory,
    this.groupsHistory,
    this.invitation,
  });

  factory User.fromJson(Map<String, Object?> json) => _$UserFromJson(json);

  @override
  Map<String, dynamic> toJson() => _$UserToJson(this);

  bool canEditObject(ViewableWithID object) {
    if (permissions.writeAllData) return true;

    return switch (object) {
      Area(:final userCanEdit) ||
      Street(:final userCanEdit) ||
      Store(:final userCanEdit) ||
      Family(:final userCanEdit) ||
      Service(:final userCanEdit) ||
      Group(:final userCanEdit) ||
      Class(:final userCanEdit) ||
      Person(:final userCanEdit) => userCanEdit,
      User(:final currentUserCanManageThisUser, :final uid) =>
        currentUserCanManageThisUser && this.uid != uid,
      _ => false,
    };
  }

  bool canDeleteObject(ViewableWithID object) => permissions.deleteData;
}

class UserFields extends _UserFields {
  FieldMetadata<String> get authId => FieldMetadata<String>(
    parentType: User,
    name: 'authId',
    label: 'معرف حساب Firebase',
    operators: {...StringOperator.values},
    isCodeOnly: true,
    getValue: (obj) => obj is User ? obj.authId : null,
  );

  @override
  FieldMetadata<String> get uid => FieldMetadata<String>(
    parentType: User,
    name: 'uid',
    label: 'معرف المستخدم',
    operators: {...StringOperator.values},
    isCodeOnly: true,
    getValue: (obj) => obj is User ? obj.uid : null,
  );

  @override
  FieldMetadata<String> get email => FieldMetadata<String>(
    parentType: User,
    name: 'email',
    label: 'البريد الإلكتروني',
    operators: {...StringOperator.values},
    isCodeOnly: true,
    getValue: (obj) => obj is User ? obj.email : null,
  );

  @override
  FieldMetadata<bool> get currentUserCanManageThisUser => FieldMetadata(
    parentType: super.currentUserCanManageThisUser.parentType,
    name: 'currentUserCanManageThisUser',
    label: super.currentUserCanManageThisUser.label,
    isOrderable: super.currentUserCanManageThisUser.isOrderable,
    operators: super.currentUserCanManageThisUser.operators,
    getValue: super.currentUserCanManageThisUser.getValue,
    isCodeOnly: true,
  );

  FieldMetadata<AggregateData> get permissionsAggregate => FieldMetadata(
    parentType: User,
    name: 'permissionsAggregate',
    label: 'permissionsAggregate',
    isCodeOnly: true,
    isOrderable: false,
    operators: {...MultiSelectOperator.values},
    getValue: (obj) => obj is User ? obj.permissions : null,
  );

  @override
  List<FieldMetadata<Object>> get allFields => [
    ...super.allFields,
    permissionsAggregate,
  ];

  @override
  Map<String, FieldMetadata<Object>> get allFieldsByName {
    return {
      ...super.allFieldsByName,
      permissionsAggregate.name: permissionsAggregate,
    };
  }

  UserFields();
}
