import 'package:church_admin/church_admin.dart';
import 'package:collection/collection.dart';

class PersonMemberships {
  static const SetEquality<Service> _servicesEquality = SetEquality();
  static const SetEquality<Group> _groupsEquality = SetEquality();

  final Set<Service> services;
  final Set<Group> groups;

  List<Service> get servicesWithTheirSelectedGroups =>
      EqualitySet<Service>.from(
        EqualityBy((service) => service.id),
        groups
            .where((group) => group.service != null)
            .groupListsBy((group) => group.service!)
            .entries
            .map((entry) => entry.key.copyWith(groups: entry.value)),
      ).union(services).toList();

  Iterable<ViewableWithID> get servicesAndGroups => [...services, ...groups];

  @override
  int get hashCode => Object.hash(
    _servicesEquality.hash(services),
    _groupsEquality.hash(groups),
  );

  const PersonMemberships({required this.services, required this.groups});

  factory PersonMemberships.ofPerson(Person person) => PersonMemberships(
    services: person.services?.toSet() ?? const {},
    groups: person.groups?.toSet() ?? const {},
  );

  factory PersonMemberships.withAllGroupsOf(Set<Service> services) =>
      PersonMemberships(
        services: services,
        groups: {
          for (final service in services)
            for (final group in service.groups ?? const <Group>[])
              group.copyWith(service: service),
        },
      );

  @override
  bool operator ==(Object other) =>
      other is PersonMemberships &&
      _servicesEquality.equals(services, other.services) &&
      _groupsEquality.equals(groups, other.groups);
}
