import 'package:church_admin/church_admin.dart';
import 'package:flutter/material.dart';

class AdminOnDataIndicator extends StatelessWidget {
  const AdminOnDataIndicator({
    required this.adminOnData,
    super.key,
  });

  final AdminOnData adminOnData;

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisSize: MainAxisSize.min,
      children: [
        if (adminOnData.groupAdminOnUsers ?? false)
          Icon(UserPermission.manageAllUsers.icon),
        if (adminOnData.groupAllowEdit ?? false)
          Icon(UserPermission.readAllData.icon),
        Icon(UserPermission.writeAllData.icon),
      ],
    );
  }
}
