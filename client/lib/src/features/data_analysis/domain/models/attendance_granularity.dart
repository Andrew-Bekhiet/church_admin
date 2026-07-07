import 'package:church_admin/church_admin.dart';
import 'package:flutter/material.dart';

enum AttendanceGranularity {
  day,
  week,
  month;

  static AttendanceGranularity bestForDuration(Duration duration) =>
      switch (duration.inDays) {
        <= 7 => AttendanceGranularity.day,
        <= 90 => AttendanceGranularity.week,
        _ => AttendanceGranularity.month,
      };

  String get label => switch (this) {
    AttendanceGranularity.day => 'يوم',
    AttendanceGranularity.week => 'أسبوع',
    AttendanceGranularity.month => 'شهر',
  };

  DateTime bucketStart(DateTime day) => switch (this) {
    AttendanceGranularity.day => day.replaceTimeOfDay(
      const TimeOfDay(hour: 0, minute: 0),
    ),
    AttendanceGranularity.week =>
      day
          .subtract(
            Duration(days: day.weekday % DateTime.daysPerWeek),
          )
          .replaceTimeOfDay(
            const TimeOfDay(hour: 0, minute: 0),
          ),
    AttendanceGranularity.month => DateTime(day.year, day.month),
  };
}
