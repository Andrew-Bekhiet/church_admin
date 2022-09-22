import 'package:church_admin/graphql/scalars.dart';
import 'package:equatable/equatable.dart';

import 'point.dart';

class Line with EquatableMixin {
  final List<Point> coordinates;

  Line(this.coordinates);

  Line.fromJson(Json json)
      : this(
          (json['coordinates'] as List).map((p) => Point(p[1], p[0])).toList(),
        );

  Json? asPostGISLineString() {
    if (coordinates.isEmpty) return null;
    return {
      'type': 'LineString',
      'coordinates': coordinates.map((p) => [p.longitude, p.latitude]).toList()
        ..add([coordinates.first.longitude, coordinates.first.latitude])
    };
  }

  @override
  List<Object?> get props => coordinates;
}

Json? lineToJson(Line? data) => data?.asPostGISLineString();
Line? lineFromJson(dynamic data) => data == null ? null : Line.fromJson(data);
