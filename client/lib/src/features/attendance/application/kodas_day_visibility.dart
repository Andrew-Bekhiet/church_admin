import 'package:flutter/material.dart' show DateUtils;

final class KodasDayVisibility {
  static final KodasDayVisibility I = KodasDayVisibility._();

  final Set<DateTime> _hiddenDays = {};

  KodasDayVisibility._();

  bool isKodasVisibleFor(DateTime day) =>
      !_hiddenDays.contains(DateUtils.dateOnly(day));

  void setIsVisibleFor(DateTime day, {required bool visible}) {
    final dayOnly = DateUtils.dateOnly(day);
    if (visible) {
      _hiddenDays.remove(dayOnly);
    } else {
      _hiddenDays.add(dayOnly);
    }
  }
}
