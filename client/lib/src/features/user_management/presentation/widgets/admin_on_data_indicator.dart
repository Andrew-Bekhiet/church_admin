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
        if (adminOnData.serviceAdminOnUsers ??
            adminOnData.groupAdminOnUsers ??
            adminOnData.areaAdminOnUsers ??
            false)
          Icon(UserPermission.manageAllUsers.icon),
        if (adminOnData.serviceWriteRelatedFamilies ??
            adminOnData.groupWriteRelatedFamilies ??
            false)
          Icon(ViewableObjectService.I.getDefaultIconFor<Family>()),
        if (adminOnData.serviceAllowEdit ??
            adminOnData.groupAllowEdit ??
            adminOnData.areaAllowEdit ??
            false)
          Icon(UserPermission.writeAllData.icon),
        Icon(UserPermission.readAllData.icon),
      ],
    );
  }
}
