import 'package:clock/clock.dart';

enum LiturgySeason {
  holyWeek,
  pentecost;

  static LiturgySeason? current() {
    final now = clock.now();

    final resurrectionDay = getRessurectionDate(now.year);
    final palmSundayEnd = resurrectionDay
        .subtract(const Duration(days: 7))
        .add(const Duration(hours: 15));
    final holyWeekeEnd =
        resurrectionDay.subtract(const Duration(days: 1, hours: 3));
    final pentecostEnd = resurrectionDay.add(const Duration(days: 50));

    if (now.isBetween(palmSundayEnd, holyWeekeEnd)) {
      return LiturgySeason.holyWeek;
    } else if (now.isBetween(
      resurrectionDay,
      pentecostEnd,
    )) {
      return LiturgySeason.pentecost;
    }

    return null;
  }
}

DateTime getRessurectionDate([int? year]) {
  year ??= DateTime.now().year;
  final int a = year % 4;
  final int b = year % 7;
  final int c = year % 19;
  final int d = (19 * c + 15) % 30;
  final int e = (2 * a + 4 * b - d + 34) % 7;

  return DateTime(year, (d + e + 114) ~/ 31, ((d + e + 114) % 31) + 14);
}

extension DateBetween on DateTime {
  bool isBetween(DateTime start, DateTime end) {
    return isAfter(start) && isBefore(end);
  }
}
