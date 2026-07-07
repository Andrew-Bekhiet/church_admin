DateTime dateFromString(dynamic rawData) {
  final data = rawData as String;
  final datePart = data.split('T').first;
  final [rawYear, rawMonth, rawDay] = datePart.split('-');

  return DateTime(
    int.parse(rawYear),
    int.parse(rawMonth),
    int.parse(rawDay),
  );
}

String dateToString(DateTime date) => date.toIso8601String().split('T').first;
