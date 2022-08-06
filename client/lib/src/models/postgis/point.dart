import 'package:church_admin/graphql/scalars.dart';

class Point {
  final double latitude;
  final double longitude;

  Point(this.latitude, this.longitude);
  Point.fromJson(Json json)
      : this(json['coordinates'][1], json['coordinates'][0]);

  Json toPostGISJson() {
    return {
      'type': 'Point',
      'coordinates': [longitude, latitude]
    };
  }
}

Json? pointToJson(Point? data) => data?.toPostGISJson();
Point? pointFromJson(dynamic data) => data == null
    ? null
    : Point.fromJson(data is Json ? data : data.cast<String, dynamic>());
