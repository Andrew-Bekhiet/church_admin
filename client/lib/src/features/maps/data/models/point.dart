part of 'spatial.dart';

class Point extends Spatial {
  static Point? tryParse(Object? latitude, Object? longitude) {
    double? coordinate(Object? value) => switch (value) {
      final num number => number.toDouble(),
      final String text => double.tryParse(text),
      _ => null,
    };

    return switch ((coordinate(latitude), coordinate(longitude))) {
      (final parsedLatitude?, final parsedLongitude?)
          when parsedLatitude.isFinite && parsedLongitude.isFinite =>
        Point(parsedLatitude, parsedLongitude),
      _ => null,
    };
  }

  final double latitude;
  final double longitude;

  @override
  List<Object?> get props => [longitude, latitude];

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
  String toString() => '$latitude, $longitude';
}

Json? pointToJson(Point? data) => data?.toPostGISJson();
Point? pointFromJson(dynamic data) => data == null
    ? null
    : Point.fromJson(data is Json ? data : data.cast<String, dynamic>());
