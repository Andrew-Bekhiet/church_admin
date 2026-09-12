import 'package:church_admin/church_admin.dart';
import 'package:flutter/material.dart';

class ManageUserListItem extends StatelessWidget {
  final User user;

  const ManageUserListItem(this.user, {super.key});

  @override
  Widget build(BuildContext context) {
    final permissions = user.permissions.permissions;
    final onlyApproved = user.permissions.approved && permissions.length == 1;

    return ViewableObjectWidget(
      user,
      subtitle: onlyApproved
          ? null
          : Row(
              mainAxisSize: MainAxisSize.min,
              children: [
                for (final permission in permissions)
                  if (permission != UserPermission.approved)
                    Tooltip(
                      message: permission.label,
                      child: Icon(permission.icon, size: 20),
                    ),
              ],
            ),
    );
  }
}
