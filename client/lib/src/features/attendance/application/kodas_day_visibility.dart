import 'package:flutter/material.dart' show DateUtils;

final class KodasDayVisibility {
  static final KodasDayVisibility I = KodasDayVisibility();

  final Map<DateTime, bool> _visibleByDay = {};

  bool? forDay(DateTime day) => _visibleByDay[DateUtils.dateOnly(day)];

  void setForDay(DateTime day, {required bool visible}) =>
      _visibleByDay[DateUtils.dateOnly(day)] = visible;
}
