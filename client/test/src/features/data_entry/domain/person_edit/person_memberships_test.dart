import 'package:church_admin/church_admin.dart';
import 'package:flutter_test/flutter_test.dart';

void main() {
  const afternoonClass = Group(id: 'afternoon', name: 'مجموعة العصر');
  const morningClass = Group(id: 'morning', name: 'مجموعة الصباح');
  const kindergarten = Service(id: 'kg', name: 'حضانة');
  const primary = Service(id: 'primary', name: 'ابتدائي');

  group('choosing services', () {
    test('selects every group of each chosen service', () {
      final service = primary.copyWith(
        groups: [afternoonClass, morningClass],
      );

      final memberships = PersonMemberships.withAllGroupsOf({service});

      expect(memberships.services, {service});
      expect(memberships.groups, {
        afternoonClass.copyWith(service: service),
        morningClass.copyWith(service: service),
      });
    });

    test('selects no group for a service that has none', () {
      final memberships = PersonMemberships.withAllGroupsOf({kindergarten});

      expect(memberships.groups, isEmpty);
    });
  });

  group('services with their selected groups', () {
    test(
      'lists a service of a selected group even when it is not selected',
      () {
        final groupOfPrimary = afternoonClass.copyWith(service: primary);
        final memberships = PersonMemberships(
          services: {kindergarten},
          groups: {groupOfPrimary},
        );

        final services = memberships.servicesWithTheirSelectedGroups;

        expect(services.map((service) => service.id), {'primary', 'kg'});
        expect(
          services.firstWhere((service) => service.id == 'primary').groups,
          [groupOfPrimary],
        );
      },
    );

    test('lists a service once when both it and its group are selected', () {
      final groupOfPrimary = afternoonClass.copyWith(service: primary);
      final memberships = PersonMemberships(
        services: {primary},
        groups: {groupOfPrimary},
      );

      expect(memberships.servicesWithTheirSelectedGroups, hasLength(1));
    });
  });
}
