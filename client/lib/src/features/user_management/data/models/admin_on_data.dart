import 'package:church_admin/annotations.dart';
import 'package:church_admin/church_admin.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'admin_on_data.freezed.dart';
part 'admin_on_data.g.dart';

@freezed
@Queryable(
  classLabel: 'صلاحيات الإدارة على البيانات',
  labelsOverrides: {
    'serviceWriteRelatedFamilies': 'يمكنه رؤية وتعديل عائلات المخدومين بالخدمة',
    'groupWriteRelatedFamilies': 'يمكنه رؤية وتعديل عائلات المخدومين بالمجموعة',
    'serviceAllowRecordAttendance': 'يمكنه تسجيل الحضور للمخدومين بالخدمة',
    'serviceAllowRecordServantsAttendance': 'يمكنه تسجيل الحضور للخدام بالخدمة',
    'groupAllowRecordAttendance': 'يمكنه تسجيل الحضور للمخدومين بالمجموعة',
    'groupAllowRecordServantsAttendance': 'يمكنه تسجيل الحضور للخدام بالمجموعة',
    'areaAllowExport': 'يمكنه تصدير بيانات المنطقة',
    'serviceAllowExport': 'يمكنه تصدير بيانات الخدمة',
    'groupAllowExport': 'يمكنه تصدير بيانات المجموعة',
  },
)
@JsonSerializable()
class AdminOnData with _$AdminOnData implements ToJson {
  @override
  final String permissionId;

  @override
  final Area? area;

  @override
  final bool? areaAllowExport;

  @override
  final bool? areaAllowEdit;

  @override
  final bool? areaAdminOnUsers;

  @override
  final Service? service;

  @override
  final StudyYear? serviceStudyYearData;

  @override
  final bool? serviceGender;

  @override
  final bool? serviceAllowExport;

  @override
  final bool? serviceAllowEdit;

  @override
  final bool? serviceAllowRecordAttendance;

  @override
  final bool? serviceAllowRecordServantsAttendance;

  @override
  final bool? serviceAdminOnUsers;

  @override
  final bool? serviceWriteRelatedFamilies;

  @override
  final List<Class> classes;

  @override
  final Group? group;

  @override
  final bool? groupAllowExport;

  @override
  final bool? groupAllowEdit;

  @override
  final bool? groupAllowRecordAttendance;

  @override
  final bool? groupAllowRecordServantsAttendance;

  @override
  final bool? groupAdminOnUsers;

  @override
  final bool? groupWriteRelatedFamilies;

  @override
  final User? user;

  const AdminOnData({
    required this.permissionId,
    this.area,
    this.areaAllowExport,
    this.areaAllowEdit,
    this.areaAdminOnUsers,
    this.service,
    this.serviceStudyYearData,
    this.serviceGender,
    this.serviceAllowExport,
    this.serviceAllowEdit,
    this.serviceAllowRecordAttendance,
    this.serviceAllowRecordServantsAttendance,
    this.serviceAdminOnUsers,
    this.serviceWriteRelatedFamilies,
    this.classes = const [],
    this.group,
    this.groupAllowExport,
    this.groupAllowEdit,
    this.groupAllowRecordAttendance,
    this.groupAllowRecordServantsAttendance,
    this.groupAdminOnUsers,
    this.groupWriteRelatedFamilies,
    this.user,
  });

  factory AdminOnData.fromJson(Map<String, Object?> json) =>
      _$AdminOnDataFromJson(json);

  @override
  Map<String, dynamic> toJson() => _$AdminOnDataToJson(this);

  String describeServicePermission() {
    if (serviceGender == null && serviceStudyYearData == null) {
      return '(جميع البيانات داخل الخدمة)';
    } else if (serviceGender != null && serviceStudyYearData == null) {
      return serviceGender!
          ? '(جميع البنين في الخدمة)'
          : '(جميع البنات داخل الخدمة)';
    } else if (serviceGender != null) {
      return '(${serviceStudyYearData!.name}${serviceGender! ? ' بنين' : ' بنات'})';
    } else {
      return '(جميع بيانات ${serviceStudyYearData!.name})';
    }
  }
}
