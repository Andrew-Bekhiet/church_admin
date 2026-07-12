import 'package:flutter/material.dart';

extension DateTimeRangeSingleDay on DateTimeRange {
  /// Range bounds are consumed inclusively, so only start == end covers a
  /// single day of data: the Today preset and same-day custom ranges. Two
  /// consecutive days (a duration of one day) are already multi-day.
  bool get isSingleDay => DateUtils.isSameDay(start, end);
}
