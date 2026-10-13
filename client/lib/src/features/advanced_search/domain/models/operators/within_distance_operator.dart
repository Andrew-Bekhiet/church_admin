import 'package:church_admin/church_admin.dart';

class WithinDistanceOperator implements Operator<Point> {
  final double meters;

  @override
  String get label => 'على بعد $meters متر من';

  @override
  String get serializationId => 'WithinDistanceOperator.$meters';

  @override
  bool get acceptsValue => true;

  @override
  int get hashCode => meters.hashCode;

  const WithinDistanceOperator(this.meters);

  @override
  Json queryToJson(FieldMetadata field, Point filterValue) {
    return field.queryToJson({
      '_stDWithin': {'distance': meters, 'from': filterValue.toPostGISJson()},
    });
  }

  @override
  Object serializeValue(Point value) =>
      PointSpatialOperator.intersects.serializeValue(value);

  @override
  Point deserializeValue(Object? data) =>
      PointSpatialOperator.intersects.deserializeValue(data);

  @override
  bool operator ==(Object other) =>
      other is WithinDistanceOperator && other.meters == meters;
}
