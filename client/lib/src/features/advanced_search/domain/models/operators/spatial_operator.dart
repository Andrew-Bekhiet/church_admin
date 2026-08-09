import 'package:church_admin/church_admin.dart';

enum SpatialOperator implements Operator<Polygon> {
  intersects;

  @override
  String get label => 'يتقاطع مع';

  @override
  String get serializationId => 'SpatialOperator.$name';

  @override
  bool get acceptsValue => true;

  const SpatialOperator();

  @override
  Json queryToJson(FieldMetadata field, Polygon filterValue) {
    return field.queryToJson({'_stIntersects': filterValue.asPostGISPolygon()});
  }

  @override
  Object serializeValue(Polygon value) {
    return value.asPostGISPolygon()!;
  }

  @override
  Polygon deserializeValue(Object? data) {
    if (data is Map<String, dynamic>) {
      return Polygon.fromJson(data);
    }
    throw ArgumentError('Cannot deserialize Spatial from $data');
  }
}
