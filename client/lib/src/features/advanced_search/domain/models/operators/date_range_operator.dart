import 'package:church_admin/church_admin.dart';

enum DateRangeOperator implements Operator<DateTimeRange> {
  isBetween;

  @override
  String get label => 'بين تاريخين';

  @override
  String get serializationId => 'DateRangeOperator.$name';

  @override
  bool get acceptsValue => true;

  @override
  Object serializeValue(DateTimeRange value) {
    return {
      'start': dateToString(value.start),
      'end': dateToString(value.end),
    };
  }

  @override
  DateTimeRange deserializeValue(Object? data) {
    if (data case {'start': final String start, 'end': final String end}) {
      return DateTimeRange(
        start: dateFromString(start),
        end: dateFromString(end),
      );
    } else {
      throw ArgumentError('Cannot deserialize DateTimeRange from $data');
    }
  }
}
