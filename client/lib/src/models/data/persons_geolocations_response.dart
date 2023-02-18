import 'package:church_admin/church_admin.dart';
import 'package:equatable/equatable.dart';

class PersonsGeolocationsResponse with EquatableMixin {
  final Set<Area> areas;
  final Set<Street> streets;
  final Set<Family> families;
  final Set<Store> stores;
  final Set<Person> persons;

  PersonsGeolocationsResponse({
    this.areas = const {},
    this.streets = const {},
    this.families = const {},
    this.stores = const {},
    this.persons = const {},
  });

  PersonsGeolocationsResponse.fromJson(Map json)
      : areas = (json['areas'] as List? ?? {})
            .cast<Map>()
            .map((m) => m.cast<String, dynamic>())
            .map(Area.fromJson)
            .toSet(),
        streets = (json['streets'] as List? ?? {})
            .cast<Map>()
            .map((m) => m.cast<String, dynamic>())
            .map(Street.fromJson)
            .toSet(),
        families = (json['families'] as List? ?? {})
            .cast<Map>()
            .map((m) => m.cast<String, dynamic>())
            .map(Family.fromJson)
            .toSet(),
        stores = (json['stores'] as List? ?? {})
            .cast<Map>()
            .map((m) => m.cast<String, dynamic>())
            .map(Store.fromJson)
            .toSet(),
        persons = (json['persons'] as List? ?? {})
            .cast<Map>()
            .map((m) => m.cast<String, dynamic>())
            .map(Person.fromJson)
            .toSet();

  @override
  List<Object?> get props => [areas, streets, families, persons];
}
