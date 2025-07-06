import 'package:church_admin/annotations.dart';
import 'package:church_admin/church_admin.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'admin_on_data.freezed.dart';
part 'admin_on_data.g.dart';

@freezed
@Queryable(classLabel: 'صلاحيات الإدارة على البيانات')
@JsonSerializable()
class AdminOnData with _$AdminOnData implements ToJson {
  @override
  final String permissionId;
  @override
  final Area? area;
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
  final bool? serviceAllowEdit;
  @override
  final bool? serviceAdminOnUsers;
  @override
  final List<Class> classes;
  @override
  final Group? group;
  @override
  final bool? groupAllowEdit;
  @override
  final bool? groupAdminOnUsers;
  @override
  final User? user;

  const AdminOnData({
    required this.permissionId,
    this.area,
    this.areaAllowEdit,
    this.areaAdminOnUsers,
    this.service,
    this.serviceStudyYearData,
    this.serviceGender,
    this.serviceAllowEdit,
    this.serviceAdminOnUsers,
    this.classes = const [],
    this.group,
    this.groupAllowEdit,
    this.groupAdminOnUsers,
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
