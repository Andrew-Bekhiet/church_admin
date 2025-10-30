part of 'spatial.dart';

class Point with EquatableMixin implements Spatial {
  final double latitude;
  final double longitude;

  const Point(this.latitude, this.longitude);
  Point.fromJson(Json json)
      : this(json['coordinates'][1], json['coordinates'][0]);

  Json toPostGISJson() {
    return {
      'type': 'Point',
      'coordinates': [longitude, latitude],
    };
  }

  String asWKT() => 'POINT($longitude $latitude)';

  @override
  List<Object?> get props => [longitude, latitude];

  @override
  String toString() => '$latitude, $longitude';
}

Json? pointToJson(Point? data) => data?.toPostGISJson();
Point? pointFromJson(dynamic data) => data == null
    ? null
    : Point.fromJson(data is Json ? data : data.cast<String, dynamic>());
