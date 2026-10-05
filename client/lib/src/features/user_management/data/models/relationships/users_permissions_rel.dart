import 'package:church_admin/church_admin.dart';
import 'package:church_admin_annotations/church_admin_annotations.dart';
import 'package:json_annotation/json_annotation.dart';

part 'users_permissions_rel.g.dart';

@Queryable(label: 'صلاحيات المستخدم')
@JsonSerializable()
class UsersPermissionsRel {
  @QueryableField(label: 'uid')
  final String uid;
  @QueryableField(label: 'بيانات الخادم')
  final User user;
  @QueryableField(label: 'الصلاحية')
  final UserPermission permission;

  const UsersPermissionsRel({
    required this.uid,
    required this.user,
    required this.permission,
  });

  factory UsersPermissionsRel.fromJson(Map<String, dynamic> json) =>
      _$UsersPermissionsRelFromJson(json);
}
