import 'package:church_admin/church_admin.dart';
import 'package:church_admin/src/features/user_management/presentation/widgets/edit_user_form.dart';
import 'package:flutter/material.dart';

class EditUserScreen extends StatefulWidget {
  final User user;
  final String userId;

  const EditUserScreen({
    required this.user,
    required this.userId,
    super.key,
  });

  @override
  State<EditUserScreen> createState() => _EditUserScreenState();
}

class _EditUserScreenState extends State<EditUserScreen> {
  late final EditObjectController<User> _controller;

  @override
  void initState() {
    super.initState();

    _controller = EditObjectController.update(
      onUpdate: (oldUser, newUser) async {
        await DatabaseService.I.userPermissions.updateUserPermissions(
          userId: newUser.uid,
          oldPermissions: oldUser.permissions,
          newPermissions: newUser.permissions.validated(),
          newAdminOn: newUser.adminOn ?? [],
          oldAdminOn: oldUser.adminOn ?? [],
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

        return EditUserForm(
          email: user.email ?? '',
          adminOn: user.adminOn ?? [],
          onAdminOnChanged: _onAdminOnChanged,
          onTogglePermission: _togglePermission,
          permissions: permissions,
        );
      },
    );
  }

  void _onAdminOnChanged(List<AdminOnData> newAdminOn) => setState(() {
    _controller.newObject = _controller.newObject.copyWith(
      adminOn: newAdminOn,
    );
  });

  void _togglePermission(UserPermission permission) {
    setState(() {
      _controller.newObject = _controller.newObject.copyWith(
        permissions: PermissionsSet.fromSet(
          !_controller.newObject.permissions.contains(permission)
              ? {..._controller.newObject.permissions, permission}
              : {
                  ..._controller.newObject.permissions.where(
                    (p) => p != permission,
                  ),
                },
        ),
      );
    });
  }
}
