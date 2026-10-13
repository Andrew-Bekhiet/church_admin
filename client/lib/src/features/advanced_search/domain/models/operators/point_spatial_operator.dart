import 'package:church_admin/church_admin.dart';

enum PointSpatialOperator implements Operator<Point> {
  intersects;

  @override
  String get label => 'يتقاطع مع';

  @override
  String get serializationId => 'PointSpatialOperator.$name';

  @override
  bool get acceptsValue => true;

  const PointSpatialOperator();

  @override
  Json queryToJson(FieldMetadata field, Point filterValue) {
    return field.queryToJson({'_stIntersects': filterValue.toPostGISJson()});
  }

  @override
  Object serializeValue(Point value) {
    return value.toPostGISJson();
  }

  @override
  Point deserializeValue(Object? data) {
    if (data is Map<String, dynamic>) {
      return Point.fromJson(data);
    }
    throw ArgumentError('Cannot deserialize Point from $data');
  }
}
