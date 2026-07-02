DateTime tstzFromString(dynamic data) => DateTime.parse(data).toLocal();
String tstzToString(DateTime date) => date.toUtc().toIso8601String();
