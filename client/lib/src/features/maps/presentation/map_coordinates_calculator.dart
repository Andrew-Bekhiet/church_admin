import 'dart:math' as math;

import 'package:church_admin/church_admin.dart' hide Polygon;
import 'package:flutter/material.dart';
import 'package:flutter_map/flutter_map.dart';
import 'package:geolocator/geolocator.dart';
import 'package:latlong2/latlong.dart';

class MapCoordinatesCalculator {
  static LatLng central(Iterable<LatLng> geoCoordinates) {
    if (geoCoordinates.length == 1) {
      return geoCoordinates.single;
    }

    double x = 0;
    double y = 0;
    double z = 0;

    for (final geoCoordinate in geoCoordinates) {
      final latitude = geoCoordinate.latitude * math.pi / 180;
      final longitude = geoCoordinate.longitude * math.pi / 180;

      x += math.cos(latitude) * math.cos(longitude);
      y += math.cos(latitude) * math.sin(longitude);
      z += math.sin(latitude);
    }

    final total = geoCoordinates.length;

    x = x / total;
    y = y / total;
    z = z / total;

    final centralLongitude = math.atan2(y, x);
    final centralSquareRoot = math.sqrt(x * x + y * y);
    final centralLatitude = math.atan2(z, centralSquareRoot);

    return LatLng(
      centralLatitude * 180 / math.pi,
      centralLongitude * 180 / math.pi,
    );
  }

  static LatLng? ofGeolocated<T>(
    Iterable<T> items,
    Point? Function(T) geolocation,
  ) {
    final points = <LatLng>[
      for (final item in items)
        if (geolocation(item) case final point?)
          LatLng(point.latitude, point.longitude),
    ];

    if (points.isEmpty) {
      return null;
    }

    return central(points);
  }
}

LatLng getMapCenter({
  Set<Area> areas = const {},
  Set<Street> streets = const {},
  Set<Family> families = const {},
  Set<Store> stores = const {},
  Set<Person> persons = const {},
  Position? userLocation,
}) {
  if (userLocation != null) {
    return LatLng(
      userLocation.latitude,
      userLocation.longitude,
    );
  } else if (areas.where((o) => o.bounds != null).isNotEmpty) {
    return MapCoordinatesCalculator.central(
      areas
          .where((o) => o.bounds != null)
          .expand(
            (a) => a.bounds!.coordinates.map(
              (e) => LatLng(e.latitude, e.longitude),
            ),
          ),
    );
  } else if (streets.where((o) => o.line != null).isNotEmpty) {
    return MapCoordinatesCalculator.central(
      streets
          .where((o) => o.line != null)
          .expand(
            (s) => s.line!.coordinates.map(
              (e) => LatLng(e.latitude, e.longitude),
            ),
          ),
    );
  } else if (MapCoordinatesCalculator.ofGeolocated(
        families,
        (f) => f.geolocation,
      )
      case final center?) {
    return center;
  } else if (MapCoordinatesCalculator.ofGeolocated(
        stores,
        (s) => s.geolocation,
      )
      case final center?) {
    return center;
  } else if (MapCoordinatesCalculator.ofGeolocated(
        persons,
        (p) => p.geolocation,
      )
      case final center?) {
    return center;
  } else {
    return const LatLng(30.60109, 32.27371);
  }
}

Marker markerFromPoint(
  Point geolocation,
  Widget child, {
  Alignment? alignment,
}) {
  return Marker(
    height: 50,
    width: 50,
    alignment: alignment ?? Alignment.topCenter,
    child: child,
    point: LatLng(
      geolocation.latitude,
      geolocation.longitude,
    ),
  );
}
