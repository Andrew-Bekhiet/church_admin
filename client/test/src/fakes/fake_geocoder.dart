import 'dart:async';

import 'package:church_admin/church_admin.dart';

class FakeGeocoder implements Geocoder {
  Address? addressUnderEveryLocation;
  final gatesByLocation = <Point, Completer<void>>{};
  Point? locationOfEveryAddress;
  Object? locationFailure;

  @override
  Future<Address?> addressAt(Point location) async {
    await gatesByLocation[location]?.future;

    return addressUnderEveryLocation;
  }

  @override
  Future<Point?> locationOf(Address address) async {
    if (locationFailure case final failure?) throw failure;

    return locationOfEveryAddress;
  }
}
