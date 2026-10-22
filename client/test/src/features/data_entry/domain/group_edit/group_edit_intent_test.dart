import 'dart:convert';

import 'package:church_admin/church_admin.dart';
import 'package:flutter_test/flutter_test.dart';

void main() {
  const service = Service(id: 'service-1', name: 'ابتدائي');

  GroupEditIntent roundTrip(GroupEditIntent intent) =>
      GroupEditIntent.fromJson(jsonDecode(jsonEncode(intent.toJson())));

  group('GroupEditIntent after a JSON round trip', () {
    test('an update intent survives JSON with its group', () {
      const group = Group(id: 'group-1', name: 'مجموعة');

      final restored = roundTrip(const UpdateGroup(group: group));

      expect((restored as UpdateGroup).group, group);
    });

    test('a blank create intent survives JSON', () {
      expect(roundTrip(const CreateBlankGroup()), isA<CreateBlankGroup>());
    });

    test('a create in a service survives JSON with its service', () {
      final restored = roundTrip(const CreateGroupInService(service: service));

      expect((restored as CreateGroupInService).service, service);
    });
  });

  test('a group created in a service is drafted in that service', () {
    final draft = const CreateGroupInService(
      service: service,
    ).draftGroup('id');

    expect((draft.service, draft.serviceId), (service, service.id));
  });
}
