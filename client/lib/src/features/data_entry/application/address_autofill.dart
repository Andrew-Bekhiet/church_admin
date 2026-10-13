import 'package:church_admin/church_admin.dart';
import 'package:church_admin/src/core/services/database/gql_definintions/metadata/districts_dao.dart';
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

  Future<Area?> maybeOnlyAreaOf(Street street) async {
    final areasOfStreet = await _areas.query(
      where: [
        Filter(
          AreaFields().streets.redirectTo(StreetFields().id),
          PrimitiveOperator.eq,
          street.id,
        ),
      ],
      onlineFirst: true,
    );

    return switch (areasOfStreet) {
      [final onlyArea] => onlyArea,
      _ => null,
    };
  }

  Future<Address> suggestFromLocation(Point location) async {
    final reverseGeocoded = await _geocoder.addressAt(location);

    final area = await _firstAreaContaining(location);
    final street =
        await _firstStreetNear(location, area, reverseGeocoded?.street?.name) ??
        await _firstStreetNamed(reverseGeocoded?.street?.name);
    final district = await _firstDistrictNamed(reverseGeocoded?.district?.name);

    return (reverseGeocoded ?? const Address()).copyWith(
      geolocation: location,
      area: area,
      street: street,
      district: district,
    );
  }

  Future<Area?> _firstAreaContaining(Point location) async {
    final matches = await _areas
        .streamAll(
          where: Stream.value([
            Filter(
              AreaFields().bounds,
              PointSpatialOperator.intersects,
              location,
            ),
          ]),
        )
        .first;

    return matches.firstOrNull;
  }

  Future<Street?> _firstStreetNear(
    Point location,
    Area? area,
    String? reportedRoadName,
  ) async {
    final nearbyStreets = await _streets
        .streamAll(
          where: Stream.value([
            Filter(
              StreetFields().line,
              const WithinDistanceOperator(nearbyStreetRadiusInMeters),
              location,
            ),
            if (area != null)
              Filter(
                StreetFields().areasRel.redirectTo(AreasStreetsFields().areaId),
                PrimitiveOperator.eq,
                area.id,
              ),
          ]),
        )
        .first;

    final roadName = _withoutStreetPrefix(reportedRoadName);
    final streetNamedLikeRoad = roadName == null || roadName.isEmpty
        ? null
        : nearbyStreets.firstWhereOrNull(
            (street) => street.name.contains(roadName),
          );

    return streetNamedLikeRoad ?? nearbyStreets.firstOrNull;
  }

  Future<Street?> _firstStreetNamed(String? name) async {
    if (name == null) return null;

    final matches = await _streets
        .streamAll(searchQuery: Stream.value(_withoutStreetPrefix(name)))
        .first;

    return matches.firstOrNull;
  }

  String? _withoutStreetPrefix(String? name) =>
      name?.replaceAll(RegExp('(شارع)|(الشارع)'), '').trim();

  Future<District?> _firstDistrictNamed(String? name) async {
    if (name == null) return null;

    final matches = await _districts
        .streamAll(searchQuery: Stream.value(name))
        .first;

    return matches.firstOrNull;
  }
}
