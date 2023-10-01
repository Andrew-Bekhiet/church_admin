DateTime timeFromString(dynamic data) => DateTime.parse(data);
String timeToString(DateTime time) =>
    time.toUtc().toIso8601String().split('Z').first;

String fromDartDateTimeToGraphQLtime(DateTime time) => timeToString(time);
DateTime fromGraphQLtimeToDartDateTime(dynamic data) => timeFromString(data);
