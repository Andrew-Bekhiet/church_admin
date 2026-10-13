import 'dart:async';

import 'package:church_admin/church_admin.dart';

class FakeGeocoder implements Geocoder {
  Address? addressUnderEveryLocation;
  final gatesByLocation = <Point, Completer<void>>{};

  @override
  Future<Address?> addressAt(Point location) async {
    await gatesByLocation[location]?.future;

    return addressUnderEveryLocation;
  }
}
