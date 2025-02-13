// Derived from NodaTime (Apache 2.0 License)
// https://github.com/nodatime/nodatime

import 'package:flutter/material.dart';

extension GetCopticDate on DateTime {
  ({int year, int month, int day}) toCopticDate() {
    final DateTime gregorianDate = DateUtils.dateOnly(this);
    // Constants
    const daysInMonth = 30;
    const copticEpochOffset =
        -615558; // Days between Coptic epoch and Unix epoch

    // Convert Gregorian date to days since Unix epoch
    final unixEpoch = DateTime(1970);
    final daysSinceEpoch = ((gregorianDate.millisecondsSinceEpoch -
                unixEpoch.millisecondsSinceEpoch) /
            (1000 * 60 * 60 * 24))
        .round();

    // Convert to Coptic calendar
    // First get the year
    final approximateYear =
        ((daysSinceEpoch - copticEpochOffset) / 365.25).floor() + 1;

    // Find the exact year
    var year = approximateYear;
    var startOfYear = _calculateStartOfYearDays(year);
    while (startOfYear > daysSinceEpoch) {
      year--;
      startOfYear = _calculateStartOfYearDays(year);
    }

    // Calculate day of year
    final dayOfYear = daysSinceEpoch - startOfYear + 1;

    // Convert to month and day
    final month = (dayOfYear / daysInMonth).ceil();
    final day = ((dayOfYear - 1) % daysInMonth) + 1;

    // Handle the last month special case
    if (month == 13) {
      final maxDay = _isLeapYear(year) ? 6 : 5;
      if (day > maxDay) {
        return (
          year: year + 1,
          month: 1,
          day: day - maxDay,
        );
      }
    }

    return (year: year, month: month, day: day);
  }
}

bool _isLeapYear(int year) {
  return (year & 3) == 3;
}

int _calculateStartOfYearDays(int year) {
  // Calculate days relative to 1687 Coptic (aligned with Unix epoch)
  final relativeYear = year - 1687;
  int leapYears;

  if (relativeYear <= 0) {
    leapYears = (relativeYear + 3) >> 2;
  } else {
    leapYears = relativeYear >> 2;
    if (!_isLeapYear(year)) {
      leapYears++;
    }
  }

  final ret = relativeYear * 365 + leapYears;
  return ret +
      (365 - 112); // Adjust for difference between 1687-01-01 and 1686-04-23
}
