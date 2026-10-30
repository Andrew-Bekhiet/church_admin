import 'package:church_admin/church_admin.dart';
import 'package:flutter_test/flutter_test.dart';

import '../../../../../utils.dart';
import '../edit_object/edit_object_screen_harness.dart';

void main() {
  final first = StudyYear(order: 1, name: 'أولى');
  final third = StudyYear(order: 3, name: 'ثالثة');
  final fourth = StudyYear(order: 4, name: 'رابعة');
  final sixth = StudyYear(order: 6, name: 'سادسة');
  final seventh = StudyYear(order: 7, name: 'سابعة');
  final primary = Service(
    id: 'service-id',
    name: 'ابتدائي',
    studyYearFrom: first,
    studyYearTo: sixth,
  );

  late EditObjectScreenHarness harness;

  Class class$({required StudyYear from, required StudyYear? to}) => Class(
    id: 'class-id',
    name: 'فصل',
    service: primary,
    serviceId: primary.id,
    studyYear: from,
    serviceStudyYear: from.order,
    studyYearTo: to,
    serviceStudyYearTo: to?.order,
  );

  (int?, int?) studyYearsOf(Class class$) =>
      (class$.studyYearFromOrder, class$.studyYearToOrder);

  Finder studyYearsError(String message) => find.descendant(
    of: find.byKey(EditClassScreenKeys.studyYears),
    matching: find.text(message),
  );

  Finder studyYearOption(StudyYear studyYear) => find.byWidgetPredicate(
    (widget) => switch (widget) {
      ViewableObjectWidget(object: StudyYear(:final id)) => id == studyYear.id,
      _ => false,
    },
  );

  Future<void> openClass(WidgetTester tester, Class class$) => harness.open(
    tester,
    EditClassRoute(intent: UpdateClass(class$: class$)),
  );

  Future<void> saveAndSettle(WidgetTester tester) async {
    await harness.tapSave(tester);
    await tester.pumpAndSettle();
  }

  setUp(() {
    harness = EditObjectScreenHarness()..install();
    harness.studyYearsDAO.studyYears = [first, third, fourth, sixth];
  });

  tearDown(defaultTearDown);

  testWidgets('renaming a class that spans study years keeps its range', (
    tester,
  ) async {
    await openClass(tester, class$(from: third, to: fourth));

    await tester.enterText(harness.nameField, 'فصل جديد');
    await saveAndSettle(tester);

    final saved = harness.classesDAO.updates.single.editedObject;
    expect(saved.name, 'فصل جديد');
    expect(studyYearsOf(saved), (3, 4));
  });

  testWidgets('widening a single-year class saves its new study year range', (
    tester,
  ) async {
    await openClass(tester, class$(from: third, to: third));

    final to = find.byKey(AdvancedStudyYearRangeFieldKeys.to);
    await harness.scrollTo(tester, to);
    await tester.tap(to);
    await tester.pumpAndSettle();
    await tester.tap(studyYearOption(fourth));
    await tester.pumpAndSettle();
    await saveAndSettle(tester);

    expect(studyYearsOf(harness.classesDAO.updates.single.editedObject), (
      3,
      4,
    ));
  });

  testWidgets('a class whose study years run backwards is not saved', (
    tester,
  ) async {
    await openClass(tester, class$(from: fourth, to: third));

    await saveAndSettle(tester);

    expect(
      studyYearsError(ObjectEditError.studyYearsReversed.message),
      findsOneWidget,
    );
    expect(harness.classesDAO.updates, isEmpty);
  });

  testWidgets('a class reaching past its service study years is not saved', (
    tester,
  ) async {
    await openClass(tester, class$(from: sixth, to: seventh));

    await saveAndSettle(tester);

    expect(
      studyYearsError('السنة الدراسية يجب ان تكون بين أولى وسادسة'),
      findsOneWidget,
    );
    expect(harness.classesDAO.updates, isEmpty);
  });

  testWidgets('moving a class to another service names that service years', (
    tester,
  ) async {
    final preparatory = Service(
      id: 'preparatory-id',
      name: 'إعدادي',
      studyYearFrom: first,
      studyYearTo: fourth,
    );
    harness.servicesDAO.pickableServices = [preparatory];
    await openClass(tester, class$(from: sixth, to: seventh));
    await saveAndSettle(tester);

    await tester.tap(find.text(primary.name));
    await tester.pumpAndSettle();
    await tester.tap(
      find.byWidgetPredicate(
        (widget) => switch (widget) {
          ViewableObjectWidget(object: Service(:final id)) =>
            id == preparatory.id,
          _ => false,
        },
      ),
    );
    await tester.pumpAndSettle();

    expect(
      studyYearsError('السنة الدراسية يجب ان تكون بين أولى ورابعة'),
      findsOneWidget,
    );
  });

  testWidgets('a new class without its study years is not saved', (
    tester,
  ) async {
    await harness.open(
      tester,
      EditClassRoute(intent: CreateClassInService(service: primary)),
    );

    await tester.enterText(harness.nameField, 'فصل');
    await saveAndSettle(tester);

    expect(
      studyYearsError(ObjectEditError.studyYearsRequired.message),
      findsOneWidget,
    );
    expect(harness.classesDAO.createdObjects, isEmpty);
  });

  testWidgets('choosing who the class serves saves it', (tester) async {
    await openClass(tester, class$(from: third, to: fourth));

    await tester.tap(find.text('بنات'));
    await saveAndSettle(tester);

    expect(
      harness.classesDAO.updates.single.editedObject.serviceGender,
      Gender.female,
    );
  });
}
