import 'dart:async';

import 'package:church_admin/church_admin.dart';

class FakeGeocoder implements Geocoder {
  Address? addressUnderEveryLocation;
  final gatesByLocation = <Point, Completer<void>>{};
  Point? locationOfEveryAddress;
  Object? locationFailure;
  int locationRequestCount = 0;

  @override
  Future<Address?> addressAt(Point location) async {
    await gatesByLocation[location]?.future;

    return addressUnderEveryLocation;
  }

  @override
  Future<Point?> locationFromStreetAddress({
    required String houseCode,
    required Street street,
    required String countryIsoCode,
  }) async {
    locationRequestCount++;
    if (locationFailure case final failure?) throw failure;

    return locationOfEveryAddress;
  }
}
