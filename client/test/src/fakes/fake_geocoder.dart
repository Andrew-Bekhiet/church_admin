import 'package:church_admin/church_admin.dart';

class FakeGeocoder implements Geocoder {
  Address? addressUnderEveryLocation;

  @override
  Future<Address?> addressAt(Point location) async => addressUnderEveryLocation;
}
