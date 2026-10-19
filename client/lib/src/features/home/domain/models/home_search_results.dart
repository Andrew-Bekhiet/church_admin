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

  List<HomeSearchSection> get sections {
    return [
      if (persons.isNotEmpty) HomeSearchSection.ofType(Person, persons),
      if (areas.isNotEmpty) HomeSearchSection.ofType(Area, areas),
      if (classes.isNotEmpty) HomeSearchSection.ofType(Class, classes),
      if (groups.isNotEmpty) HomeSearchSection.ofType(Group, groups),
      if (families.isNotEmpty) HomeSearchSection.ofType(Family, families),
      if (services.isNotEmpty) HomeSearchSection.ofType(Service, services),
      if (streets.isNotEmpty) HomeSearchSection.ofType(Street, streets),
      if (stores.isNotEmpty) HomeSearchSection.ofType(Store, stores),
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
    List<T> resultsOf<T>(String root, T Function(Json) fromJson) =>
        ((json[root] as Map?)?['results'] as List? ?? [])
            .cast<Json>()
            .map(fromJson)
            .toList();

    return HomeSearchResults(
      persons: resultsOf('persons', Person.fromJson),
      classes: resultsOf('classes', Class.fromJson),
      groups: resultsOf('groups', Group.fromJson),
      families: resultsOf('families', Family.fromJson),
      services: resultsOf('services', Service.fromJson),
      streets: resultsOf('streets', Street.fromJson),
      stores: resultsOf('stores', Store.fromJson),
      areas: resultsOf('areas', Area.fromJson),
    );
  }
}
