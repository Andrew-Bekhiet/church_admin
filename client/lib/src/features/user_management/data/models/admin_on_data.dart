import 'package:church_admin/church_admin.dart';
import 'package:church_admin_annotations/church_admin_annotations.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'admin_on_data.freezed.dart';
part 'admin_on_data.g.dart';

@freezed
@Queryable(label: 'صلاحيات الإدارة على البيانات')
@JsonSerializable()
class AdminOnData with _$AdminOnData implements ToJson {
  final String permissionId;

  @QueryableField(label: 'المنطقة')
  final Area? area;

  @QueryableField(label: 'يمكنه تصدير بيانات المنطقة')
  final bool? areaAllowExport;

  @QueryableField(label: 'يمكنه تعديل المنطقة')
  final bool? areaAllowEdit;

  @QueryableField(label: 'مسؤول عن خدام المنطقة')
  final bool? areaAdminOnUsers;

  @QueryableField(label: 'الخدمة')
  final Service? service;

  @QueryableField(label: 'السنة الدراسية')
  final StudyYear? serviceStudyYearData;

  @QueryableField(label: 'نوع المخدومين المسؤول عنهم')
  final bool? serviceGender;

  @QueryableField(label: 'يمكنه تصدير بيانات الخدمة')
  final bool? serviceAllowExport;

  @QueryableField(label: 'يمكنه تعديل الخدمة')
  final bool? serviceAllowEdit;

  @QueryableField(label: 'يمكنه تسجيل الحضور للمخدومين بالخدمة')
  final bool? serviceAllowRecordAttendance;

  @QueryableField(label: 'يمكنه تسجيل الحضور للخدام بالخدمة')
  final bool? serviceAllowRecordServantsAttendance;

  @QueryableField(label: 'مسؤول عن خدام الخدمة')
  final bool? serviceAdminOnUsers;

  @QueryableField(label: 'يمكنه رؤية وتعديل عائلات المخدومين بالخدمة')
  final bool? serviceWriteRelatedFamilies;

  @QueryableField(label: 'الفصول')
  final List<Class> classes;

  @QueryableField(label: 'المجموعة')
  final Group? group;

  @QueryableField(label: 'يمكنه تصدير بيانات المجموعة')
  final bool? groupAllowExport;

  @QueryableField(label: 'يمكنه تعديل المجموعة')
  final bool? groupAllowEdit;

  @QueryableField(label: 'يمكنه تسجيل الحضور للمخدومين بالمجموعة')
  final bool? groupAllowRecordAttendance;

  @QueryableField(label: 'يمكنه تسجيل الحضور للخدام بالمجموعة')
  final bool? groupAllowRecordServantsAttendance;

  @QueryableField(label: 'مسؤول عن خدام المجموعة')
  final bool? groupAdminOnUsers;

  @QueryableField(label: 'يمكنه رؤية وتعديل عائلات المخدومين بالمجموعة')
  final bool? groupWriteRelatedFamilies;

  @QueryableField(label: 'بيانات الخادم')
  final User? user;

  const AdminOnData({
    required this.permissionId,
    this.classes = const [],
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
