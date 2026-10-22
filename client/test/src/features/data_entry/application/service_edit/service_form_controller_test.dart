import 'package:church_admin/church_admin.dart';
import 'package:flutter_test/flutter_test.dart';

import '../../../../fakes/fake_services_dao.dart';

void main() {
  final first = StudyYear(order: 1, name: 'أولى');
  final third = StudyYear(order: 3, name: 'ثالثة');

  ServiceFormController controllerFor(ServiceEditIntent intent) {
    final controller = ServiceFormController(
      intent: intent,
      services: FakeServicesDAO(),
      recordedByUserId: 'me',
    );
    addTearDown(controller.dispose);

    return controller;
  }

  test('an untouched service is saved unchanged', () {
    final stored = Service(
      id: 's',
      name: 'ابتدائي',
      studyYearFrom: first,
      studyYearFromId: first.order,
      studyYearTo: third,
      studyYearToId: third.order,
    );

    expect(controllerFor(UpdateService(service: stored)).toObject(), stored);
  });

  test('a service with only one end of its study years is refused', () async {
    final controller = controllerFor(const CreateBlankService())
      ..name.setValue('ابتدائي')
      ..studyYears.setValue(StudyYearRange(from: first));

    expect(await controller.validate(), isFalse);
    expect(controller.studyYears.error, ObjectEditError.studyYearsRequired);
  });

  test('a service whose study years run backwards is refused', () async {
    final controller = controllerFor(const CreateBlankService())
      ..name.setValue('ابتدائي')
      ..studyYears.setValue(StudyYearRange(from: third, to: first));

    expect(await controller.validate(), isFalse);
    expect(controller.studyYears.error, ObjectEditError.studyYearsReversed);
  });

  test('the chosen study years are saved with their orders', () {
    final controller = controllerFor(const CreateBlankService())
      ..studyYears.setValue(StudyYearRange(from: first, to: third));

    final saved = controller.toObject();

    expect(
      (saved.studyYearFromId, saved.studyYearToId),
      (first.order, third.order),
    );
  });

  test('an existing service offers no default meeting', () {
    final controller = controllerFor(
      const UpdateService(
        service: Service(id: 's', name: 'ابتدائي'),
      ),
    );

    expect(controller.defaultMeeting, isNull);
  });
}
