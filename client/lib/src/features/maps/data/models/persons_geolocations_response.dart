import 'package:church_admin/church_admin.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'persons_geolocations_response.freezed.dart';
part 'persons_geolocations_response.g.dart';

@freezed
@JsonSerializable()
class PersonsGeolocationsResponse
    with _$PersonsGeolocationsResponse
    implements ToJson {
  final Set<Area> areas;
  final Set<Street> streets;
  final Set<Family> families;
  final Set<Store> stores;
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
