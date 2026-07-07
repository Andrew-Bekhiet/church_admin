import 'dart:collection';

import 'package:church_admin/church_admin.dart';
import 'package:collection/collection.dart';

extension MeetingDayAggregation on Iterable<MeetingDay> {
  List<MeetingDay> get mergedByDay => mergedByBucket((day) => day);

  int get totalAttendances => fold(0, (sum, day) => sum + day.totalCount);

  MeetingDay? get peakDayByCount => maxBy(this, (day) => day.totalCount);

  List<MeetingDay> mergedByBucket(DateTime Function(DateTime) bucketOf) {
    final byBucket = SplayTreeMap<DateTime, MeetingDay>();

    for (final day in this) {
      final bucket = bucketOf(day.day);
      byBucket.update(
        bucket,
        (existing) => existing + day,
        ifAbsent: () => day.copyWith(day: bucket),
      );
    }

    return byBucket.values.toList();
  }

  List<MeetingDay> rollupBy(AttendanceGranularity granularity) =>
      switch (granularity) {
        AttendanceGranularity.day => sorted((a, b) => a.day.compareTo(b.day)),
        AttendanceGranularity.week ||
        AttendanceGranularity.month => mergedByBucket(granularity.bucketStart),
      };
}
