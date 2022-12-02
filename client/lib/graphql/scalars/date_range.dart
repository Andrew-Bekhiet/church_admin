import 'package:flutter/material.dart';

import './date.dart' as date;

export 'package:flutter/material.dart' show DateTimeRange;

DateTimeRange dateRangeFromString(dynamic data) {
  final stringData = (data as String).split(',');

  DateTime start = date.dateFromString(stringData.first.substring(1));
  DateTime end = date.dateFromString(
    stringData[1].substring(0, stringData[1].length - 1),
  );

  if (stringData.first.startsWith('(')) {
    start = start.add(const Duration(days: 1));
  }
  if (stringData[1].endsWith(')')) {
    end = end.subtract(const Duration(days: 1));
  }

  return DateTimeRange(start: start, end: end);
}

String dateRangeToString(DateTimeRange range) =>
    '[${date.dateToString(range.start)},${date.dateToString(range.end)}]';
