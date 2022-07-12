DateTime dateFromString(dynamic data) => DateTime.parse(data);
String dateToString(DateTime date) =>
    date.toUtc().toIso8601String().split('T')[0];


String fromDartDateTimeToGraphQLdate(DateTime date) => dateToString(date);
DateTime fromGraphQLdateToDartDateTime(dynamic data) => dateFromString(data);
