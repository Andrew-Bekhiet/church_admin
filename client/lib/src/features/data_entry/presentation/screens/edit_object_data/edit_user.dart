import 'package:church_admin/church_admin.dart';
import 'package:church_admin/src/features/data_entry/presentation/screens/edit_object_data/permission_check_widget.dart';
import 'package:flutter/material.dart';

class EditUser extends StatefulWidget {
  final User user;
  final String userId;

  const EditUser({
    required this.user,
    required this.userId,
    super.key,
  });

  @override
  State<EditUser> createState() => _EditUserState();
}

class _EditUserState extends State<EditUser> {
  late final EditObjectController<User> _controller;

  @override
  void initState() {
    super.initState();

    _controller = EditObjectController.update(
      onUpdate: (oldUser, newUser) async {
        await DatabaseService.I.users.updateUserPermissions(
          userId: newUser.uid,
          oldPermissions: oldUser.permissions,
          newPermissions: newUser.permissions.validated(),
        );

        return newUser;
      },
      toJson: (user) => user.toJson(),
      newObject: widget.user,
      initialObject: widget.user,
    );
  }

  @override
  Widget build(BuildContext context) {
    return EditObjectData<User>(
      getController: () => _controller,
      objectData: widget.user,
      // TODO: implement deleting user permanently
      canDelete: (_) => false,
      builder: (context, controller) {
        final user = controller.newObject;
        final permissions = user.permissions;

        return Column(
          children: [
            CopiablePropertyWidget(
              'البريد الاكتروني',
              user.email,
            ),
            const Divider(thickness: 1),
            Card(
              margin: const EdgeInsets.all(8),
              color: Theme.of(context).colorScheme.secondaryContainer,
              child: Padding(
                padding: const EdgeInsets.all(16),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Row(
                      children: [
                        Icon(
                          Icons.security,
                          color: Theme.of(context).primaryColor,
                        ),
                        const SizedBox(width: 8),
                        Text(
                          'الصلاحيات',
                          style: Theme.of(context).textTheme.titleMedium,
                        ),
                      ],
                    ),
                    const SizedBox(height: 16),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.stretch,
                      children: [
                        PermissionCheckWidget(
                          permission: UserPermission.approved,
                          permissions: permissions,
                          onToggle: _togglePermission,
                          subtitleText:
                              'يجب تفعيل الحساب للسماح للمستخدم بالدخول',
                        ),
                        const Divider(),
                        PermissionCheckWidget(
                          permission: UserPermission.manageAllUsers,
                          permissions: permissions,
                          onToggle: _togglePermission,
                          subtitleText: 'السماح بإضافة وتعديل وحذف المستخدمين',
                        ),
                        PermissionCheckWidget(
                          permission: UserPermission.writeAllData,
                          permissions: permissions,
                          onToggle: _togglePermission,
                          subtitleText: 'السماح بتعديل جميع بيانات التطبيق',
                        ),
                        PermissionCheckWidget(
                          permission: UserPermission.readAllData,
                          permissions: permissions,
                          onToggle: _togglePermission,
                          subtitleText: 'السماح برؤية جميع بيانات التطبيق',
                        ),
                        const Divider(),
                        PermissionCheckWidget(
                          permission: UserPermission.recordHistory,
                          permissions: permissions,
                          onToggle: _togglePermission,
                          subtitleText:
                              'السماح بتسجيل الحضور للخدام والمخدومين',
                        ),
                        PermissionCheckWidget(
                          permission: UserPermission.changeOldHistory,
                          permissions: permissions,
                          onToggle: _togglePermission,
                          subtitleText:
                              'السماح بتعديل سجلات الحضور لأي يوم سابق',
                        ),
                        PermissionCheckWidget(
                          permission: UserPermission.deleteData,
                          permissions: permissions,
                          onToggle: _togglePermission,
                          subtitleText:
                              'السماح بحذف البيانات اللتي يمكن تعديلها',
                        ),
                        PermissionCheckWidget(
                          permission: UserPermission.recoverDeleted,
                          permissions: permissions,
                          onToggle: _togglePermission,
                          subtitleText: 'السماح باسترجاع البيانات المحذوفة',
                        ),
                      ],
                    ),
                  ],
                ),
              ),
            ),
          ],
        );
      },
    );
  }

  void _togglePermission(UserPermission permission) {
    setState(() {
      if (!_controller.newObject.permissions.contains(permission)) {
        _controller.newObject = _controller.newObject.copyWith(
          permissions: PermissionsSet.fromSet(
            {..._controller.newObject.permissions, permission},
          ),
        );
      } else {
        _controller.newObject = _controller.newObject.copyWith(
          permissions: PermissionsSet.fromSet(
            {
              ..._controller.newObject.permissions.where(
                (p) => p != permission,
              ),
            },
          ),
        );
      }
    });
  }
}
