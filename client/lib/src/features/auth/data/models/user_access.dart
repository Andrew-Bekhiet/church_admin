import 'dart:convert';

import 'package:church_admin/church_admin.dart';
import 'package:church_admin/src/core/services/database/gql_definintions/user_permissions/user_permissions_update_helper.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'user_access.freezed.dart';
part 'user_access.g.dart';

/// What decides which rows the server lets a user read: their account,
/// permissions, and admin-on scopes as the server stores them.
@freezed
@JsonSerializable()
class UserAccess with _$UserAccess {
  @JsonKey(defaultValue: '')
  final String uid;

  @JsonKey(defaultValue: <String>{})
  final Set<String> permissions;

  @JsonKey(defaultValue: <String>{})
  final Set<String> adminOn;

  const UserAccess({
    required this.uid,
    required this.permissions,
    required this.adminOn,
  });

  factory UserAccess.of(User user) => UserAccess(
    uid: user.uid,
    permissions: {for (final permission in user.permissions) permission.name},
    adminOn: {
      for (final scope in user.adminOn ?? const <AdminOnData>[])
        jsonEncode(
          UserPermissionsUpdateHelper.adminOnInsertInputFrom(
            null,
            scope,
          ).toJson(),
        ),
    },
  );

  factory UserAccess.fromJson(Map<String, dynamic> json) =>
      _$UserAccessFromJson(json);

  Map<String, dynamic> toJson() => _$UserAccessToJson(this);
}
