import 'package:equatable/equatable.dart';
import 'package:flutter/material.dart';

sealed class DateTimeRangePreset with EquatableMixin {
  Duration get duration;

  DateTimeRange get range;

  @override
  List<Object?> get props => [range];
}

sealed class _PastDateTimeRangePreset extends DateTimeRangePreset {
  final DateTime today = DateUtils.dateOnly(DateTime.now());

  @override
  DateTimeRange get range => DateTimeRange(
    start: today.subtract(duration),
    end: today,
  );
}

final class TodayDateTimeRangePreset extends DateTimeRangePreset {
  final DateTime today = DateUtils.dateOnly(DateTime.now());

  @override
  Duration get duration => const Duration(days: 1);

  /// Range bounds are consumed inclusively (`_gte`/`_lte`), so today's data is
  /// the degenerate range [today, today].
  @override
  DateTimeRange get range => DateTimeRange(start: today, end: today);
}

final class PastMonthDateTimeRangePreset extends _PastDateTimeRangePreset {
  @override
  Duration get duration => const Duration(days: 30);
}

final class PastQuarterDateTimeRangePreset extends _PastDateTimeRangePreset {
  @override
  Duration get duration => const Duration(days: 90);
}

final class PastYearDateTimeRangePreset extends _PastDateTimeRangePreset {
  @override
  Duration get duration => const Duration(days: 365);
}

final class CustomDateTimeRangePreset extends DateTimeRangePreset {
  @override
  final DateTimeRange range;

  @override
  Duration get duration => range.duration;

  CustomDateTimeRangePreset({required this.range});
}
