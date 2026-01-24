import 'package:church_admin/annotations.dart';
import 'package:church_admin/church_admin.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'user.freezed.dart';
part 'user.g.dart';

@freezed
@JsonSerializable()
@Queryable(
  classLabel: 'الخدام',
  ignoreFields: [
    'authId',
    'id',
    'blurhash',
    'canManageSomeUsers',
  ],
  regexIgnoreFields: [r'.+History$'],
  allowExtension: true,
)
class User extends ViewableWithIDAndImage
    with _$User
    implements SerializableExtra {
  @override
  @JsonKey(defaultValue: '')
  final String uid;

  @override
  @JsonKey(defaultValue: '')
  final String name;

  @override
  final String? email;

  @override
  final DateTime? photoUpdatedAt;

  @override
  final String? blurhash;

  @override
  final List<AdminOnData>? adminOn;

  @override
  @JsonKey(
    fromJson: permissionsSetFromJson,
    toJson: permissionsSetToJson,
  )
  @QueryableField(
    manyToManyRelSelectField: 'permission',
    manyToManyRelType: UsersPermissionsRel,
  )
  final PermissionsSet permissions;

  @override
  final String? authId;

  @override
  final LastRecordedByInfo? lastEdit;

  @override
  final Person? person;

  @override
  final List<AdminOnData>? servicesHistory;

  @override
  final List<AdminOnData>? classesHistory;

  @override
  final List<AdminOnData>? groupsHistory;

  @override
  @JsonKey(includeToJson: false)
  final bool currentUserCanManageThisUser;

  const User({
    required this.uid,
    required this.name,
    this.email,
    this.photoUpdatedAt,
    this.blurhash,
    this.adminOn,
    this.permissions = const PermissionsSet.empty(),
    this.authId,
    this.lastEdit,
    this.person,
    this.servicesHistory,
    this.classesHistory,
    this.groupsHistory,
    this.currentUserCanManageThisUser = false,
  });

  factory User.fromJson(Map<String, Object?> json) => _$UserFromJson(json);

  @override
  Map<String, dynamic> toJson() => _$UserToJson(this);

  @override
  ObjectImageInfo get imageInfo =>
      FunctionsObjectImageInfo('users', id, lastUpdatedTime: photoUpdatedAt);

  @override
  String get typeName => AdvancedQueriesMetadata().user.name;

  @override
  String get id => uid;

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

  bool get canManageSomeUsers =>
      permissions.manageAllUsers ||
      (adminOn?.any(
            (p) =>
                (p.areaAdminOnUsers ?? false) ||
                (p.serviceAdminOnUsers ?? false) ||
                (p.groupAdminOnUsers ?? false),
          ) ??
          false);
}

class UserFields extends _UserFields {
  UserFields();

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
}
