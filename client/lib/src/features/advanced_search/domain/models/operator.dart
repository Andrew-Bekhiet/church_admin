import 'package:church_admin/church_admin.dart';

export 'operators/birthday_operator.dart';
export 'operators/boolean_operator.dart';
export 'operators/color_operator.dart';
export 'operators/date_range_operator.dart';
export 'operators/date_time_operator.dart';
export 'operators/logical_operator.dart';
export 'operators/multi_select_operator.dart';
export 'operators/phone_operator.dart';
export 'operators/primitive_operator.dart';
export 'operators/spatial_operator.dart';
export 'operators/string_operator.dart';

abstract interface class Operator<V> {
  /// A unique identifier for the operator type and its value.
  /// Used for serialization and deserialization.
  ///
  /// Example values: "LogicalOperator.and", "StringOperator.contains"
  String get serializationId;

  /// A human-readable label for the operator.
  String get label;

  bool get acceptsValue => true;

  /// Serializes the operator value.
  ///
  /// Example:
  /// - `StringOperator.contains().serializeValue('test')` -> {'_ilike': '%test%'}
  /// - `PrimitiveOperator.lt().serializeValue(5)` -> {'_lt': 5}
  /// - `LogicalOperator.and().serializeValue([filter1, filter2]) -> {'_and': [filter1.toSearchJson(), filter2.toSearchJson()]}`
  ///
  /// The returned Json should be compatible with the backend's expected format.
  Json queryToJson(FieldMetadata field, V filterValue);

  /// Serializes the filter value to a Json object.
  Object? serializeValue(V value);

  /// Deserializes a Json object to the operator's value type.
  V deserializeValue(Object? data);
}
