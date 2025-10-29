import 'package:church_admin/church_admin.dart';
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
          newPermissions: newUser.permissions,
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
      builder: (context, controller) {
        final user = controller.newObject;
        final permissions = user.permissions;

        return SingleChildScrollView(
          child: Column(
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
                          CheckboxListTile(
                            value: permissions.approved,
                            onChanged: (_) =>
                                _togglePermission(UserPermission.approved),
                            secondary: Icon(UserPermission.approved.icon),
                            title: Text(UserPermission.approved.label),
                            subtitle: const Text(
                              'يجب تفعيل الحساب للسماح للمستخدم بالدخول',
                            ),
                          ),
                          const Divider(),
                          CheckboxListTile(
                            value: permissions.manageAllUsers,
                            onChanged: (_) => _togglePermission(
                              UserPermission.manageAllUsers,
                            ),
                            secondary: Icon(UserPermission.manageAllUsers.icon),
                            title: Text(UserPermission.manageAllUsers.label),
                            subtitle: const Text(
                              'السماح بإضافة وتعديل وحذف المستخدمين',
                            ),
                          ),
                          CheckboxListTile(
                            value: permissions.readAllData,
                            onChanged: (_) =>
                                _togglePermission(UserPermission.readAllData),
                            secondary: Icon(UserPermission.readAllData.icon),
                            title: Text(UserPermission.readAllData.label),
                            subtitle: const Text(
                              'السماح برؤية جميع بيانات التطبيق',
                            ),
                          ),
                          CheckboxListTile(
                            value: permissions.writeAllData,
                            onChanged: (_) =>
                                _togglePermission(UserPermission.writeAllData),
                            secondary: Icon(UserPermission.writeAllData.icon),
                            title: Text(UserPermission.writeAllData.label),
                            subtitle: const Text(
                              'السماح بتعديل جميع بيانات التطبيق',
                            ),
                          ),
                          const Divider(),
                          CheckboxListTile(
                            value: permissions.recordHistory,
                            onChanged: (_) =>
                                _togglePermission(UserPermission.recordHistory),
                            secondary: Icon(UserPermission.recordHistory.icon),
                            title: Text(UserPermission.recordHistory.label),
                            subtitle: const Text(
                              'السماح بتسجيل الحضور اليومي للخدام',
                            ),
                          ),
                          CheckboxListTile(
                            value: permissions.changeOldHistory,
                            onChanged: (_) => _togglePermission(
                              UserPermission.changeOldHistory,
                            ),
                            secondary:
                                Icon(UserPermission.changeOldHistory.icon),
                            title: Text(UserPermission.changeOldHistory.label),
                            subtitle: const Text(
                              'السماح بتعديل سجلات الحضور لأي يوم سابق',
                            ),
                          ),
                          CheckboxListTile(
                            value: permissions.deleteData,
                            onChanged: (_) =>
                                _togglePermission(UserPermission.deleteData),
                            secondary: Icon(UserPermission.deleteData.icon),
                            title: Text(UserPermission.deleteData.label),
                            subtitle: const Text(
                              'السماح بحذف بيانات التطبيق',
                            ),
                          ),
                          CheckboxListTile(
                            value: permissions.recoverDeleted,
                            onChanged: (_) => _togglePermission(
                              UserPermission.recoverDeleted,
                            ),
                            secondary: Icon(UserPermission.recoverDeleted.icon),
                            title: Text(UserPermission.recoverDeleted.label),
                            subtitle: const Text(
                              'السماح باسترجاع البيانات المحذوفة',
                            ),
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
              ),
              const SizedBox(height: 60),
            ],
          ),
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
              ..._controller.newObject.permissions.where((p) => p != permission)
            },
          ),
        );
      }
    });
  }
}
