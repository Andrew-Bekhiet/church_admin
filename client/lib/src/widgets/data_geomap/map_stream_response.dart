part of 'data_geomap.dart';

@immutable
class _MapStreamResponse {
  final Position? location;
  final PersonsGeolocationsResponse? personsGeolocationsResponse;

  const _MapStreamResponse(
    this.location,
    this.personsGeolocationsResponse,
  );
}
