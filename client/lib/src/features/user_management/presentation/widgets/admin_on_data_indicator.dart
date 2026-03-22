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
        if ((adminOnData.serviceAdminOnUsers ?? false) ||
            (adminOnData.groupAdminOnUsers ?? false) ||
            (adminOnData.areaAdminOnUsers ?? false))
          Tooltip(
            message: 'ادارة وتعديل المستخدمين',
            child: Icon(UserPermission.manageAllUsers.icon),
          ),
        if ((adminOnData.serviceWriteRelatedFamilies ?? false) ||
            (adminOnData.groupWriteRelatedFamilies ?? false))
          Tooltip(
            message: 'تعديل عائلات المخدومين',
            child: Icon(ViewableObjectService.I.getDefaultIconFor<Family>()),
          ),
        if ((adminOnData.serviceAllowEdit ?? false) ||
            (adminOnData.groupAllowEdit ?? false) ||
            (adminOnData.areaAllowEdit ?? false))
          Tooltip(
            message: 'تعديل البيانات',
            child: Icon(UserPermission.writeAllData.icon),
          ),
        if ((adminOnData.serviceAllowExport ?? false) ||
            (adminOnData.groupAllowExport ?? false) ||
            (adminOnData.areaAllowExport ?? false))
          Tooltip(
            message: 'تصدير البيانات',
            child: Icon(UserPermission.exportAllData.icon),
          ),
        Tooltip(
          message: 'رؤية البيانات',
          child: Icon(UserPermission.readAllData.icon),
        ),
      ],
    );
  }
}
