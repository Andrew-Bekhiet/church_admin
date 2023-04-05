import 'package:church_admin/church_admin.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'persons_geolocations_response.freezed.dart';
part 'persons_geolocations_response.g.dart';

@freezed
class PersonsGeolocationsResponse with _$PersonsGeolocationsResponse {
  factory PersonsGeolocationsResponse({
    @Default({}) Set<Area> areas,
    @Default({}) Set<Street> streets,
    @Default({}) Set<Family> families,
    @Default({}) Set<Store> stores,
    @Default({}) Set<Person> persons,
  }) = _PersonsGeolocationsResponse;

  factory PersonsGeolocationsResponse.fromJson(Map<String, Object?> json) =>
      _$PersonsGeolocationsResponseFromJson(json);
}
