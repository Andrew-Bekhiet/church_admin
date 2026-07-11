import 'package:church_admin/church_admin.dart';

extension AttendanceRateFormat on double? {
  String get asPercentLabel {
    final rate = this;
    return rate == null ? '—' : '${(rate * 100).toStringAsFixed(0)}%';
  }
}

extension ClassAttendanceRateDisplay on ClassAttendanceRate {
  String get displayName {
    final genderLabel = switch (gender) {
      null => null,
      true => 'بنين',
      false => 'بنات',
    };

    final parts = [studyYearName, genderLabel].nonNulls;

    return parts.isEmpty ? 'غير محدد' : parts.join(' - ');
  }

  String get ratePercentLabel => rate.asPercentLabel;
}
