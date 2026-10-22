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
    harness.studyYears.studyYears = [first, third, fourth, sixth];
  });

  tearDown(defaultTearDown);

  testWidgets('renaming a class that spans study years keeps its range', (
    tester,
  ) async {
    await openClass(tester, class$(from: third, to: fourth));

    await tester.enterText(harness.nameField, 'فصل جديد');
    await saveAndSettle(tester);

    final saved = harness.classes.updates.single.editedObject;
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

    expect(studyYearsOf(harness.classes.updates.single.editedObject), (3, 4));
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
    expect(harness.classes.updates, isEmpty);
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
    expect(harness.classes.updates, isEmpty);
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
    expect(harness.classes.createdObjects, isEmpty);
  });

  testWidgets('choosing who the class serves saves it', (tester) async {
    await openClass(tester, class$(from: third, to: fourth));

    await tester.tap(find.text('بنات'));
    await saveAndSettle(tester);

    expect(harness.classes.updates.single.editedObject.serviceGender, isFalse);
  });
}
