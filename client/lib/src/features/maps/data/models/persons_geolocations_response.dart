import 'package:church_admin/church_admin.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'persons_geolocations_response.freezed.dart';
part 'persons_geolocations_response.g.dart';

@freezed
@JsonSerializable()
class PersonsGeolocationsResponse
    with _$PersonsGeolocationsResponse
    implements ToJson {
  @override
  final Set<Area> areas;
  @override
  final Set<Street> streets;
  @override
  final Set<Family> families;
  @override
  final Set<Store> stores;
  @override
  final Set<Person> persons;

  const PersonsGeolocationsResponse({
    this.areas = const {},
    this.streets = const {},
    this.families = const {},
    this.stores = const {},
    this.persons = const {},
  });

  factory PersonsGeolocationsResponse.fromJson(Map<String, Object?> json) =>
      _$PersonsGeolocationsResponseFromJson(json);

  @override
  Map<String, dynamic> toJson() => _$PersonsGeolocationsResponseToJson(this);
}
