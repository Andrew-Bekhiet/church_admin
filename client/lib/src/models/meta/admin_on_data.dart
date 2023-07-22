// ignore_for_file: invalid_annotation_target

import 'package:church_admin/church_admin.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'admin_on_data.freezed.dart';
part 'admin_on_data.g.dart';

@freezed
class AdminOnData with _$AdminOnData {
  const factory AdminOnData({
    required String permissionId,
    Area? area,
    bool? areaAllowEdit,
    bool? areaAdminOnUsers,
    Service? service,
    StudyYear? serviceStudyYearData,
    bool? serviceGender,
    bool? serviceAllowEdit,
    bool? serviceAdminOnUsers,
    @Default([]) List<Class> classes,
    Group? group,
    bool? groupAllowEdit,
    bool? groupAdminOnUsers,
  }) = _AdminOnData;

  const AdminOnData._();

  factory AdminOnData.fromJson(Map<String, Object?> json) =>
      _$AdminOnDataFromJson(json);

  String describeServicePermission() {
    if (serviceGender == null && serviceStudyYearData == null) {
      return '(جميع البيانات داخل الخدمة)';
    } else if (serviceGender != null && serviceStudyYearData == null) {
      return serviceGender!
          ? '(جميع البنين في الخدمة)'
          : '(جميع البنات داخل الخدمة)';
    } else if (serviceGender != null) {
      return '(' +
          serviceStudyYearData!.name +
          (serviceGender! ? ' بنين' : ' بنات') +
          ')';
    } else {
      return '(جميع بيانات ' + serviceStudyYearData!.name + ')';
    }
  }
}
