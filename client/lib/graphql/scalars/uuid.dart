import 'package:uuid/uuid.dart';

String uuidToString(UuidValue data) => data.toString();
UuidValue stringToUuid(dynamic data) =>
    UuidValue(data, true, ValidationMode.nonStrict);
