import 'package:church_admin/church_admin.dart';
import 'package:church_admin_annotations/church_admin_annotations.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'user.freezed.dart';
part 'user.g.dart';

@freezed
@JsonSerializable()
@Queryable(label: 'الخدام', keyField: 'uid', extensible: true)
class User extends ViewableWithIDAndImage
    with _$User
    implements SerializableExtra {
  @JsonKey(defaultValue: '')
  @QueryableField(label: 'معرف المستخدم', codeOnly: true)
  final String uid;

  @override
  @JsonKey(defaultValue: '')
  @QueryableField(label: 'الاسم')
  final String name;

  @QueryableField(label: 'البريد الإلكتروني', codeOnly: true)
  final String? email;

  @LocalDateTimeConverter()
  @QueryableField(label: 'أخر تحديث للصورة')
  final DateTime? photoUpdatedAt;

  @override
  final String? blurhash;

  @QueryableField(label: 'مسؤول عن')
  final List<AdminOnData>? adminOn;

  @JsonKey(fromJson: permissionsSetFromJson, toJson: permissionsSetToJson)
  @QueryableField.manyToMany(through: UsersPermissionsRel, select: 'permission')
  final PermissionsSet permissions;

  final String? authId;

  @QueryableField(label: 'أخر تحديث البيانات')
  final LastRecordedByInfo? lastEdit;

  @QueryableField(label: 'بيانات المخدوم')
  final Person? person;

  final UserPreferences? preferences;

  @JsonKey(defaultValue: <FcmToken>[])
  final List<FcmToken> fcmTokens;

  final List<AdminOnData>? servicesHistory;

  final List<AdminOnData>? classesHistory;

  final List<AdminOnData>? groupsHistory;

  final Invitation? invitation;

  @JsonKey(includeToJson: false)
  @QueryableField(label: 'currentUserCanManageThisUser', codeOnly: true)
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
