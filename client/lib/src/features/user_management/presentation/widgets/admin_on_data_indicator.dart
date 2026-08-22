import 'package:church_admin/church_admin.dart';
import 'package:flutter/material.dart';

class AdminOnDataIndicator extends StatelessWidget {
  final AdminOnData adminOnData;
  const AdminOnDataIndicator({
    required this.adminOnData,
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisSize: MainAxisSize.min,
      spacing: 2,
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
            message: 'رؤية وتعديل عائلات المخدومين',
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
        if ((adminOnData.serviceAllowRecordAttendance ?? false) ||
            (adminOnData.groupAllowRecordAttendance ?? false))
          Tooltip(
            message: 'تسجيل الحضور لجميع المخدومين',
            child: Icon(UserPermission.recordAllAttendance.icon),
          ),
        if ((adminOnData.serviceAllowRecordServantsAttendance ?? false) ||
            (adminOnData.groupAllowRecordServantsAttendance ?? false))
          Tooltip(
            message: 'تسجيل الحضور لجميع الخدام',
            child: Icon(UserPermission.recordAllServantsAttendance.icon),
          ),
        Tooltip(
          message: 'رؤية البيانات',
          child: Icon(UserPermission.readAllData.icon),
        ),
      ],
    );
  }
}
