DateTime dateFromString(dynamic data) {
  final parsed = DateTime.parse(data);

  return parsed.isUtc
      ? parsed
      : DateTime.utc(
          parsed.year,
          parsed.month,
          parsed.day,
          parsed.hour,
          parsed.minute,
          parsed.second,
          parsed.millisecond,
          parsed.microsecond,
        );
}

String dateToString(DateTime date) => date.toIso8601String().split('T').first;
