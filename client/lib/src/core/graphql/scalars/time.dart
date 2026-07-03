DateTime timeFromString(dynamic data) => DateTime.parse(data).toLocal();
String timeToString(DateTime time) =>
    time.toUtc().toIso8601String().split('Z').first;
