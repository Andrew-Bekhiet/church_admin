import 'package:clock/clock.dart';
import 'package:flutter/material.dart';
import 'package:timeago/timeago.dart';

extension DateTimeExtensions on DateTime {
  String toDurationString({bool appendSince = true, DateTime? now}) {
    if (appendSince) {
      return format(this, locale: 'ar', clock: now ?? clock.now());
    }

    return format(
      this,
      locale: 'ar',
      clock: now ?? clock.now(),
    ).replaceAll('منذ ', '');
  }

  DateTime truncateToDay() {
    return DateTime(year, month, day);
  }

  DateTime replaceTimeOfDay(TimeOfDay time) {
    return DateTime(
      year,
      month,
      day,
      time.hour,
      time.minute,
      second,
      millisecond,
      microsecond,
    );
  }

  DateTime replaceTime(DateTime time) {
    return DateTime(
      year,
      month,
      day,
      time.hour,
      time.minute,
      time.second,
      time.millisecond,
      time.microsecond,
    );
  }

  DateTime replaceDate(DateTime date) {
    return DateTime(
      date.year,
      date.month,
      date.day,
      hour,
      minute,
      second,
      millisecond,
      microsecond,
    );
  }
}
