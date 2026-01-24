import 'dart:math' as math;

import 'package:church_admin/church_admin.dart' hide Polygon;
import 'package:flutter/material.dart';
import 'package:flutter_map/flutter_map.dart' hide Coords;
import 'package:geolocator/geolocator.dart';
import 'package:latlong2/latlong.dart';

LatLng getCentralGeoCoordinate(Iterable<LatLng> geoCoordinates) {
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

LatLng getMapCenter({
  Position? userLocation,
  Set<Area> areas = const {},
  Set<Street> streets = const {},
  Set<Family> families = const {},
  Set<Store> stores = const {},
  Set<Person> persons = const {},
}) {
  if (userLocation != null) {
    return LatLng(
      userLocation.latitude,
      userLocation.longitude,
    );
  } else if (areas.where((o) => o.bounds != null).isNotEmpty) {
    return getCentralGeoCoordinate(
      areas
          .where((o) => o.bounds != null)
          .expand(
            (a) => a.bounds!.coordinates.map(
              (e) => LatLng(e.latitude, e.longitude),
            ),
          ),
    );
  } else if (streets.where((o) => o.line != null).isNotEmpty) {
    return getCentralGeoCoordinate(
      streets
          .where((o) => o.line != null)
          .expand(
            (s) => s.line!.coordinates.map(
              (e) => LatLng(e.latitude, e.longitude),
            ),
          ),
    );
  } else if (families.where((o) => o.geolocation != null).isNotEmpty) {
    return getCentralGeoCoordinate(
      families
          .where((o) => o.geolocation != null)
          .map(
            (f) => LatLng(f.geolocation!.latitude, f.geolocation!.longitude),
          ),
    );
  } else if (stores.where((o) => o.geolocation != null).isNotEmpty) {
    return getCentralGeoCoordinate(
      stores
          .where((o) => o.geolocation != null)
          .map(
            (s) => LatLng(s.geolocation!.latitude, s.geolocation!.longitude),
          ),
    );
  } else if (persons.where((o) => o.geolocation != null).isNotEmpty) {
    return getCentralGeoCoordinate(
      persons
          .where((o) => o.geolocation != null)
          .map(
            (p) => LatLng(p.geolocation!.latitude, p.geolocation!.longitude),
          ),
    );
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
