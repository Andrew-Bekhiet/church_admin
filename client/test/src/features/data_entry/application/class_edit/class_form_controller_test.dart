import 'package:church_admin/church_admin.dart';
import 'package:flutter_test/flutter_test.dart';

import '../../../../fakes/fake_services_dao.dart';

void main() {
  final first = StudyYear(order: 1, name: 'أولى');
  final third = StudyYear(order: 3, name: 'ثالثة');
  final sixth = StudyYear(order: 6, name: 'سادسة');
  final seventh = StudyYear(order: 7, name: 'سابعة');
  final primary = Service(
    id: 'primary',
    name: 'ابتدائي',
    studyYearFrom: first,
    studyYearTo: sixth,
  );
  final storedClass = Class(
    id: 'class',
    name: 'فصل',
    service: primary,
    serviceId: primary.id,
    studyYear: first,
    serviceStudyYear: first.order,
    studyYearTo: third,
    serviceStudyYearTo: third.order,
  );

  ClassFormController controllerFor(ClassEditIntent intent) {
    final controller = ClassFormController(
      intent: intent,
      services: FakeServicesDAO(),
      recordedByUserId: 'me',
    );
    addTearDown(controller.dispose);

    return controller;
  }

  test('an untouched class is saved unchanged', () {
    expect(
      controllerFor(UpdateClass(class$: storedClass)).toObject(),
      storedClass,
    );
  });

  test('a class reaching past its service study years is refused', () async {
    final controller = controllerFor(UpdateClass(class$: storedClass))
      ..studyYears.setValue(StudyYearRange(from: first, to: seventh));

    expect(await controller.validate(), isFalse);
    expect(
      controller.studyYears.error,
      ObjectEditError.studyYearsOutsideService,
    );
  });

  test('moving the class to a wider service clears that refusal', () async {
    final controller = controllerFor(UpdateClass(class$: storedClass))
      ..studyYears.setValue(StudyYearRange(from: first, to: seventh));
    await controller.validate();

    controller.service.setValue(primary.copyWith(studyYearTo: seventh));

    expect(controller.studyYears.error, isNull);
  });

  test('the chosen study years are saved with their orders', () {
    final controller = controllerFor(UpdateClass(class$: storedClass))
      ..studyYears.setValue(StudyYearRange(from: third, to: sixth));

    final saved = controller.toObject();

    expect(
      (saved.serviceStudyYear, saved.serviceStudyYearTo),
      (third.order, sixth.order),
    );
  });
}
