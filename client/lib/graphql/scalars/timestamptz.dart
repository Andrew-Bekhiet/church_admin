DateTime tstzFromString(dynamic data) => DateTime.parse(data);
String tstzToString(DateTime date) =>
    date.toUtc().toIso8601String().split('T')[0];

String fromDartDateTimeToGraphQLtimestamptz(DateTime date) =>
    tstzToString(date);
DateTime fromGraphQLtimestamptzToDartDateTime(dynamic data) =>
    tstzFromString(data);

String fromDartDateTimeToGraphQLtimestamp(DateTime date) => tstzToString(date);
DateTime fromGraphQLtimestampToDartDateTime(dynamic data) =>
    tstzFromString(data);
