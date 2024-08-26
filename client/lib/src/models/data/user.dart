// ignore_for_file: invalid_annotation_target

import 'package:church_admin/annotations.dart';
import 'package:church_admin/church_admin.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'user.freezed.dart';
part 'user.g.dart';

@freezed
@TypeMetadata(
  labelsOverrides: {'uid': '='},
  ignoreFields: [
    'email',
    'blurhash',
    'authId',
    'isMultiFactorEnrolled',
    'idToken',
    'emailVerified',
    'passwordKeyHash',
  ],
)
class User extends ViewableWithIDAndImage
    with _$User
    implements SerializableExtra {
  static Map<String, FieldMetadata> get fieldsMetadata => _$UserFields;

  static final QueryableType<User> queryableType = QueryableType<User>(
    name: 'User',
    label: 'الخدام',
    fieldsMetadata: fieldsMetadata,
    fromJson: User.fromJson,
  );

  factory User({
    required String uid,
    required String name,
    String? email,
    DateTime? photoUpdatedAt,
    String? blurhash,
    List<AdminOnData>? adminOn,
    @JsonKey(
      fromJson: permissionsSetFromJson,
      toJson: permissionsSetToJson,
    )
    @Default(PermissionsSet.empty())
    PermissionsSet permissions,
    String? authId,
    @JsonKey(includeIfNull: false) bool? isMultiFactorEnrolled,
    @JsonKey(includeIfNull: false) String? idToken,
    @JsonKey(includeIfNull: false) bool? emailVerified,
    @JsonKey(includeFromJson: false, includeToJson: false)
    String? passwordKeyHash,
    LastRecordedByInfo? lastEdit,
    Person? person,
    List<AdminOnData>? servicesHistory,
    List<AdminOnData>? classesHistory,
    List<AdminOnData>? groupsHistory,
  }) = _User;
  User._() : super();

  factory User.fromJson(Map<String, Object?> json) => _$UserFromJson(json);

  @override
  ObjectImageInfo get imageInfo =>
      FunctionsObjectImageInfo('users', id, lastUpdatedTime: photoUpdatedAt);

  @override
  String get typeName => User.queryableType.name;

  @override
  String get id => uid;

  bool canReadObject(ViewableWithID object) {
    if (permissions.readAllData) return true;

    switch (object) {
      case Area(id: final id):
        return adminOn?.any((a) => a.area?.id == id) ?? false;

      case Service(id: final id):
        return adminOn?.any((a) => a.service?.id == id) ?? false;

      case Group(id: final id):
        return adminOn?.any((a) => a.group?.id == id) ?? false;

      default:
        return false;
    }
  }

  bool canEditObject(ViewableWithID object) {
    if (permissions.writeAllData) return true;

    switch (object) {
      case Area(id: final id):
        return adminOn?.any(
              (a) => a.area?.id == id && (a.areaAllowEdit ?? false),
            ) ??
            false;

      case Service(id: final id):
        return adminOn?.any(
              (a) => a.service?.id == id && (a.serviceAllowEdit ?? false),
            ) ??
            false;

      case Group(id: final id):
        return adminOn?.any(
              (a) => a.group?.id == id && (a.groupAllowEdit ?? false),
            ) ??
            false;

      default:
        return false;
    }
  }

  bool canEditObjectUsers(ViewableWithID object) {
    if (permissions.manageAllUsers) return true;

    switch (object) {
      case Area(id: final id):
        return adminOn?.any(
              (a) => a.area?.id == id && (a.areaAdminOnUsers ?? false),
            ) ??
            false;

      case Service(id: final id):
        return adminOn?.any(
              (a) => a.service?.id == id && (a.serviceAdminOnUsers ?? false),
            ) ??
            false;

      case Group(id: final id):
        return adminOn?.any(
              (a) => a.group?.id == id && (a.groupAdminOnUsers ?? false),
            ) ??
            false;

      default:
        return false;
    }
  }

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
