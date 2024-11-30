import 'package:church_admin/church_admin.dart';
import 'package:meta/meta.dart';

@immutable
class HomeSearchResults {
  final List<Person> persons;
  final List<Area> areas;
  final List<Class> classes;
  final List<Group> groups;
  final List<Family> families;
  final List<Service> services;
  final List<Street> streets;
  final List<Store> stores;

  List<(Type, List<ViewableWithIDAndImage>)> get nonEmptySections {
    return [
      if (persons.isNotEmpty) (Person, persons),
      if (areas.isNotEmpty) (Area, areas),
      if (classes.isNotEmpty) (Class, classes),
      if (groups.isNotEmpty) (Group, groups),
      if (families.isNotEmpty) (Family, families),
      if (services.isNotEmpty) (Service, services),
      if (streets.isNotEmpty) (Street, streets),
      if (stores.isNotEmpty) (Store, stores),
    ];
  }

  const HomeSearchResults({
    this.persons = const [],
    this.areas = const [],
    this.classes = const [],
    this.groups = const [],
    this.families = const [],
    this.services = const [],
    this.streets = const [],
    this.stores = const [],
  });

  factory HomeSearchResults.fromJson(Map<String, dynamic> json) {
    return HomeSearchResults(
      persons: (json['persons'] as List? ?? [])
          .cast<Json>()
          .map(Person.fromJson)
          .toList(),
      classes: (json['classes'] as List? ?? [])
          .cast<Json>()
          .map(Class.fromJson)
          .toList(),
      groups: (json['groups'] as List? ?? [])
          .cast<Json>()
          .map(Group.fromJson)
          .toList(),
      families: (json['families'] as List? ?? [])
          .cast<Json>()
          .map(Family.fromJson)
          .toList(),
      services: (json['services'] as List? ?? [])
          .cast<Json>()
          .map(Service.fromJson)
          .toList(),
      streets: (json['streets'] as List? ?? [])
          .cast<Json>()
          .map(Street.fromJson)
          .toList(),
      stores: (json['stores'] as List? ?? [])
          .cast<Json>()
          .map(Store.fromJson)
          .toList(),
      areas: (json['areas'] as List? ?? [])
          .cast<Json>()
          .map(Area.fromJson)
          .toList(),
    );
  }
}
