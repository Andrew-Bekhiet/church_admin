import 'package:church_admin/church_admin.dart';
import 'package:collection/collection.dart';

class AddressAutofill {
  static const double nearbyStreetRadiusInMeters = 30;

  final AreasDAO _areas;
  final StreetsDAO _streets;
  final DistrictsDAO _districts;
  final Geocoder _geocoder;

  const AddressAutofill({
    required this._areas,
    required this._streets,
    required this._districts,
    required this._geocoder,
  });

  Future<List<Area>> areasOf(Street street) => _areasOfStreetWhere(street);

  Future<AreaOfGeocodedHouse?> maybeAreaOfGeocodedHouse(Address address) async {
    final street = address.street;
    final houseCode = address.houseCode;
    if (street == null || houseCode == null || houseCode.isEmpty) return null;

    final houseLocation = await _geocoder.locationOf(address);
    if (houseLocation == null) return null;

    final areasContainingHouse = await _areasOfStreetWhere(street, [
      Filter(
        AreaFields().bounds,
        PointSpatialOperator.intersects,
        houseLocation,
      ),
    ]);

    return switch (areasContainingHouse.firstOrNull) {
      final area? => AreaOfGeocodedHouse(area: area, location: houseLocation),
      _ => null,
    };
  }

  Future<List<Area>> _areasOfStreetWhere(
    Street street, [
    List<Filter> otherFilters = const [],
  ]) {
    return _areas.query(
      where: [
        Filter(
          AreaFields().streets.redirectTo(StreetFields().id),
          PrimitiveOperator.eq,
          street.id,
        ),
        ...otherFilters,
      ],
      onlineFirst: true,
    );
  }

  Future<Address> suggestFromLocation(Point location) async {
    final reverseGeocoded = await _geocoder.addressAt(location);

    final area = await _firstAreaContaining(location);
    final street =
        await _firstStreetNear(location, area, reverseGeocoded?.street?.name) ??
        await _firstStreetNamed(reverseGeocoded?.street?.name, area);
    final district = await _firstDistrictNamed(reverseGeocoded?.district?.name);

    return (reverseGeocoded ?? const Address()).copyWith(
      geolocation: location,
      area: area,
      street: street,
      district: district,
    );
  }

  Future<Area?> _firstAreaContaining(Point location) async {
    final matches = await _areas.query(
      where: [
        Filter(
          AreaFields().bounds,
          PointSpatialOperator.intersects,
          location,
        ),
      ],
      onlineFirst: true,
    );

    return matches.firstOrNull;
  }

  Future<Street?> _firstStreetNear(
    Point location,
    Area? area,
    String? reportedRoadName,
  ) async {
    final nearbyStreets = await _streets.query(
      where: [
        Filter(
          StreetFields().line,
          const WithinDistanceOperator(nearbyStreetRadiusInMeters),
          location,
        ),
        ?_inAreaFilter(area),
      ],
      onlineFirst: true,
    );

    final roadName = _withoutStreetPrefix(reportedRoadName);
    final streetNamedLikeRoad = roadName == null || roadName.isEmpty
        ? null
        : nearbyStreets.firstWhereOrNull(
            (street) => street.name.contains(roadName),
          );

    return streetNamedLikeRoad ?? nearbyStreets.firstOrNull;
  }

  Future<Street?> _firstStreetNamed(String? name, Area? area) async {
    final nameWithoutPrefix = _withoutStreetPrefix(name);
    if (nameWithoutPrefix == null || nameWithoutPrefix.isEmpty) return null;

    final matches = await _streets.query(
      searchQuery: nameWithoutPrefix,
      where: [?_inAreaFilter(area)],
      onlineFirst: true,
    );

    return matches.firstOrNull;
  }

  Filter? _inAreaFilter(Area? area) => area == null
      ? null
      : Filter(
          StreetFields().areasRel.redirectTo(AreasStreetsFields().areaId),
          PrimitiveOperator.eq,
          area.id,
        );

  String? _withoutStreetPrefix(String? name) =>
      name?.replaceAll(RegExp('(شارع)|(الشارع)'), '').trim();

  Future<District?> _firstDistrictNamed(String? name) async {
    if (name == null) return null;

    final matches = await _districts.query(
      searchQuery: name,
      onlineFirst: true,
    );

    return matches.firstOrNull;
  }
}
