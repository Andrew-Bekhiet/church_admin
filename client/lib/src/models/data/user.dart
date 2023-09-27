// ignore_for_file: invalid_annotation_target

import 'package:church_admin/church_admin.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'user.freezed.dart';
part 'user.g.dart';

@freezed
class User extends ViewableWithIDAndImage with _$User implements ToJson {
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
  String get id => uid;

  bool canReadObject(ViewableWithID object) {
    if (permissions.readAllData) return true;

    switch (object) {
      case Area _:
        return adminOn!.any((a) => a.area?.id == object.id);

      case Service _:
        return adminOn!.any((a) => a.service?.id == object.id);

      case Group _:
        return adminOn!.any((a) => a.group?.id == object.id);

      default:
        return false;
    }
  }

  bool canEditObject(ViewableWithID object) {
    if (permissions.writeAllData) return true;

    switch (object) {
      case Area _:
        return adminOn!.any(
          (a) => a.area?.id == object.id && (a.areaAllowEdit ?? false),
        );

      case Service _:
        return adminOn!.any(
          (a) => a.service?.id == object.id && (a.serviceAllowEdit ?? false),
        );

      case Group _:
        return adminOn!.any(
          (a) => a.group?.id == object.id && (a.groupAllowEdit ?? false),
        );

      default:
        return false;
    }
  }

  bool canEditObjectUsers(ViewableWithID object) {
    if (permissions.manageAllUsers) return true;

    switch (object) {
      case Area _:
        return adminOn!.any(
          (a) => a.area?.id == object.id && (a.areaAdminOnUsers ?? false),
        );

      case Service _:
        return adminOn!.any(
          (a) => a.service?.id == object.id && (a.serviceAdminOnUsers ?? false),
        );

      case Group _:
        return adminOn!.any(
          (a) => a.group?.id == object.id && (a.groupAdminOnUsers ?? false),
        );

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
