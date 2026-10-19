import 'package:church_admin/church_admin.dart';
import 'package:church_admin_annotations/church_admin_annotations.dart';
import 'package:collection/collection.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'admin_on_data.freezed.dart';
part 'admin_on_data.g.dart';

@freezed
@Queryable(label: 'صلاحيات الإدارة على البيانات')
@JsonSerializable()
class AdminOnData with _$AdminOnData implements ToJson {
  static const List<int Function(AdminOnData, AdminOnData)> _scopeOrder = [
    _byAreaName,
    _byServiceStudyYearFrom,
    _byServiceStudyYearTo,
    _byServiceStudyYear,
    _byServiceGenderBoysFirst,
    _byServiceName,
    _byGroupName,
  ];

  /// The scopes of one user in the order the screens list them.
  static List<AdminOnData>? sortedListFromJson(List<dynamic>? json) {
    final grants = json?.map(
      (grant) => AdminOnData.fromJson((grant as Map).cast<String, Object?>()),
    );

    return grants?.sorted(
      (a, b) => _scopeOrder
          .map((compare) => compare(a, b))
          .firstWhere((result) => result != 0, orElse: () => 0),
    );
  }

  static int _nullsLast<T extends Comparable<T>>(T? a, T? b) {
    if (a == null || b == null) {
      return (a == null ? 1 : 0) - (b == null ? 1 : 0);
    }

    return a.compareTo(b);
  }

  static int _byAreaName(AdminOnData a, AdminOnData b) =>
      _nullsLast(a.area?.name, b.area?.name);

  static int _byServiceStudyYearFrom(AdminOnData a, AdminOnData b) =>
      _nullsLast(
        a.service?.studyYearFrom?.order,
        b.service?.studyYearFrom?.order,
      );

  static int _byServiceStudyYearTo(AdminOnData a, AdminOnData b) =>
      _nullsLast(a.service?.studyYearTo?.order, b.service?.studyYearTo?.order);

  static int _byServiceStudyYear(AdminOnData a, AdminOnData b) => _nullsLast(
    a.serviceStudyYearData?.order,
    b.serviceStudyYearData?.order,
  );

  static int _genderRank(bool? gender) => switch (gender) {
    null => 0,
    true => 1,
    false => 2,
  };

  static int _byServiceGenderBoysFirst(AdminOnData a, AdminOnData b) =>
      _genderRank(a.serviceGender).compareTo(_genderRank(b.serviceGender));

  static int _byServiceName(AdminOnData a, AdminOnData b) =>
      _nullsLast(a.service?.name, b.service?.name);

  static int _byGroupName(AdminOnData a, AdminOnData b) =>
      _nullsLast(a.group?.name, b.group?.name);

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

  @JsonKey(name: 'studyYear')
  @QueryableField(label: 'السنة الدراسية', graphqlName: 'studyYear')
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

  Input_AdminOnInput toCommandInput() => Input_AdminOnInput(
    adminOnArea: area?.id,
    areaAllowEdit: areaAllowEdit,
    areaAllowExport: areaAllowExport,
    areaAdminOnUsers: areaAdminOnUsers,
    adminOnService: service?.id,
    serviceStudyYear: serviceStudyYearData?.order,
    serviceGender: serviceGender,
    serviceAllowEdit: serviceAllowEdit,
    serviceAllowExport: serviceAllowExport,
    serviceAllowRecordAttendance: serviceAllowRecordAttendance,
    serviceAllowRecordServantsAttendance: serviceAllowRecordServantsAttendance,
    serviceAdminOnUsers: serviceAdminOnUsers,
    serviceWriteRelatedFamilies: serviceWriteRelatedFamilies,
    adminOnGroup: group?.id,
    groupAllowEdit: groupAllowEdit,
    groupAllowExport: groupAllowExport,
    groupAllowRecordAttendance: groupAllowRecordAttendance,
    groupAllowRecordServantsAttendance: groupAllowRecordServantsAttendance,
    groupAdminOnUsers: groupAdminOnUsers,
    groupWriteRelatedFamilies: groupWriteRelatedFamilies,
  );

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
