import 'package:church_admin/church_admin.dart';

abstract interface class Geocoder {
  static Geocoder get I => globalProviderContainer.read(geocoderProvider);

  Future<Address?> addressAt(Point location);

  Future<Point?> locationFromStreetAddress({
    required String houseCode,
    required Street street,
    required String countryIsoCode,
  });
}
