part of 'spatial.dart';

class Polygon with EquatableMixin implements Spatial {
  final List<Point> coordinates;

  const Polygon(this.coordinates);

  Polygon.fromJson(Json json)
      : this(
          (json['coordinates'][0] as List)
              .map((p) => Point(p[1], p[0]))
              .toList(),
        );

  Json? asPostGISPolygon() {
    if (coordinates.isEmpty) return null;
    return {
      'type': 'Polygon',
      'coordinates': [
        coordinates.map((p) => [p.longitude, p.latitude]).toList()
          ..add([coordinates.first.longitude, coordinates.first.latitude]),
      ],
    };
  }

  @override
  List<Object?> get props => coordinates;
}

Json? polygonToJson(Polygon? data) => data?.asPostGISPolygon();
Polygon? polygonFromJson(dynamic data) => data == null
    ? null
    : Polygon.fromJson(data is Json ? data : data.cast<String, dynamic>());
