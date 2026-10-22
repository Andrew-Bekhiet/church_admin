import 'dart:convert';

import 'package:church_admin/church_admin.dart';
import 'package:flutter_test/flutter_test.dart';

void main() {
  const service = Service(id: 'service-1', name: 'ابتدائي');

  ClassEditIntent roundTrip(ClassEditIntent intent) =>
      ClassEditIntent.fromJson(jsonDecode(jsonEncode(intent.toJson())));

  group('ClassEditIntent after a JSON round trip', () {
    test('an update intent survives JSON with its class', () {
      const class$ = Class(id: 'class-1', name: 'فصل');

      final restored = roundTrip(const UpdateClass(class$: class$));

      expect((restored as UpdateClass).class$, class$);
    });

    test('a blank create intent survives JSON', () {
      expect(roundTrip(const CreateBlankClass()), isA<CreateBlankClass>());
    });

    test('a create in a service survives JSON with its service', () {
      final restored = roundTrip(const CreateClassInService(service: service));

      expect((restored as CreateClassInService).service, service);
    });
  });

  test('a class created in a service is drafted in that service', () {
    final draft = const CreateClassInService(
      service: service,
    ).draftClass('id');

    expect((draft.service, draft.serviceId), (service, service.id));
  });
}
