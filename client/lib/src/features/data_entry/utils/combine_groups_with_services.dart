import 'package:church_admin/church_admin.dart';
import 'package:collection/collection.dart';

List<Service> combineGroupsWithServices(
  Iterable<Service> services,
  Iterable<Group> groups,
) {
  return EqualitySet<Service>.from(
    EqualityBy((service) => service.id),
    groups
        .where((group) => group.service != null)
        .groupListsBy((group) => group.service!)
        .entries
        .map((entry) => entry.key.copyWith(groups: entry.value)),
  ).union(services.toSet()).toList();
}
