export 'operators/birthday_operator.dart';
export 'operators/boolean_operator.dart';
export 'operators/color_operator.dart';
export 'operators/date_range_operator.dart';
export 'operators/date_time_operator.dart';
export 'operators/logical_operator.dart';
export 'operators/multi_select_operator.dart';
export 'operators/phone_operator.dart';
export 'operators/point_spatial_operator.dart';
export 'operators/primitive_operator.dart';
export 'operators/spatial_operator.dart';
export 'operators/string_operator.dart';
export 'operators/within_distance_operator.dart';

abstract interface class Operator<V> {
  /// A unique identifier for the operator type and its value.
  /// Used for serialization and deserialization.
  ///
  /// Example values: "LogicalOperator.and", "StringOperator.contains"
  String get serializationId;

  /// A human-readable label for the operator.
  String get label;

  bool get acceptsValue => true;

  /// Serializes the filter value to a Json object.
  Object? serializeValue(V value);

  /// Deserializes a Json object to the operator's value type.
  V deserializeValue(Object? data);
}
