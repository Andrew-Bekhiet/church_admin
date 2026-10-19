import 'package:church_admin/church_admin.dart';

class AshSpatialFilter {
  const AshSpatialFilter();

  Json translate(AshFieldPath path, Operator operator, Object? value) =>
      switch (operator) {
        SpatialOperator() => _calculation(path, 'withinPolygon', {
          'polygon': _polygonJson(
            AshOperatorValue.require<Polygon>(operator, value),
          ),
        }),
        PointSpatialOperator() => _calculation(path, 'containsPoint', {
          'point': AshOperatorValue.require<Point>(
            operator,
            value,
          ).toPostGISJson(),
        }),
        WithinDistanceOperator(:final meters) => _calculation(
          path,
          'withinDistance',
          {
            'from': AshOperatorValue.require<Point>(
              operator,
              value,
            ).toPostGISJson(),
            'meters': meters,
          },
        ),
        _ => throw UnsupportedError(
          'AshSpatialFilter cannot translate ${operator.serializationId}',
        ),
      };

  // The geometry attribute itself is not a filter field: the owning resource
  // exposes one boolean calculation per geometric test, so the leaf is dropped.
  Json _calculation(AshFieldPath path, String name, Json input) =>
      path.parent.wrap({
        name: {'input': input, 'eq': true},
      });

  Json _polygonJson(Polygon polygon) =>
      polygon.asPostGISPolygon() ??
      (throw ArgumentError.value(
        polygon,
        'polygon',
        'A spatial filter needs a polygon with coordinates',
      ));
}
