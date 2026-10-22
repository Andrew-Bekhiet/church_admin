import 'package:church_admin/church_admin.dart';
import 'package:flutter_test/flutter_test.dart';

import '../../../../fakes/fake_services_dao.dart';

void main() {
  const service = Service(id: 'service', name: 'ابتدائي');

  GroupFormController controllerFor(GroupEditIntent intent) {
    final controller = GroupFormController(
      intent: intent,
      services: FakeServicesDAO(),
      recordedByUserId: 'me',
    );
    addTearDown(controller.dispose);

    return controller;
  }

  test('an untouched group is saved unchanged', () {
    const stored = Group(
      id: 'g',
      name: 'مجموعة',
      service: service,
      serviceId: 'service',
    );

    expect(controllerFor(const UpdateGroup(group: stored)).toObject(), stored);
  });

  test('a group cannot be saved without a service', () async {
    final controller = controllerFor(const CreateBlankGroup())
      ..name.setValue('مجموعة');

    expect(await controller.validate(), isFalse);
    expect(controller.service.error, ObjectEditError.serviceRequired);
  });

  test('a group created in a service can be saved once named', () async {
    final controller = controllerFor(
      const CreateGroupInService(service: service),
    )..name.setValue('مجموعة');

    expect(await controller.validate(), isTrue);
  });
}
