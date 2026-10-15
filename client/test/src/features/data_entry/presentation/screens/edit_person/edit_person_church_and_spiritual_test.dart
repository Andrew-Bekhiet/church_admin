import 'package:church_admin/church_admin.dart';
import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';

import '../../../../../utils.dart';
import 'edit_person_screen_harness.dart';

void main() {
  const family = Family(id: 'family-id', name: 'أسرة');
  final boy = Person(
    id: 'person-id',
    name: 'مينا',
    gender: true,
    family: family,
    familyId: family.id,
  );

  late EditPersonScreenHarness harness;

  setUp(() {
    harness = EditPersonScreenHarness()..install();
  });

  tearDown(defaultTearDown);

  testWidgets('ticking servant asks where and how the person serves', (
    tester,
  ) async {
    await harness.open(tester, UpdatePerson(person: boy));
    expect(find.text('الكنيسة التي يخدم بها'), findsNothing);

    await harness.scrollTo(tester, find.text('خادم؟'));
    await tester.tap(find.text('خادم؟'));
    await tester.pumpAndSettle();

    expect(find.text('الكنيسة التي يخدم بها'), findsOneWidget);
    expect(find.text('نوع الخدمة'), findsOneWidget);
  });

  testWidgets('a man can be a shammas', (tester) async {
    await harness.open(tester, UpdatePerson(person: boy));

    expect(find.text('شماس؟'), findsOneWidget);
  });

  testWidgets('a woman cannot be a shammas', (tester) async {
    await harness.open(
      tester,
      UpdatePerson(person: boy.copyWith(gender: false)),
    );

    expect(find.byKey(EditPersonScreenKeys.saveButton), findsOneWidget);
    expect(find.text('شماس؟'), findsNothing);
  });

  testWidgets('choosing female hides the shammas checkbox', (tester) async {
    await harness.open(tester, UpdatePerson(person: boy));

    await harness.scrollTo(tester, find.text('أنثى'));
    await tester.tap(find.text('أنثى'));
    await tester.pumpAndSettle();

    expect(find.text('شماس؟'), findsNothing);
  });

  testWidgets('ticking shammas asks for the shammas level', (tester) async {
    await harness.open(tester, UpdatePerson(person: boy));

    await harness.scrollTo(tester, find.text('شماس؟'));
    await tester.tap(find.text('شماس؟'));
    await tester.pumpAndSettle();

    expect(find.text('رتبة الشموسية'), findsOneWidget);
  });

  testWidgets('saving a shammas without a level is refused', (tester) async {
    await harness.open(tester, UpdatePerson(person: boy));
    await harness.scrollTo(tester, find.text('شماس؟'));
    await tester.tap(find.text('شماس؟'));
    await tester.pumpAndSettle();

    await harness.tapSave(tester);

    expect(harness.persons.updatedPeople, isEmpty);
    expect(find.text('برجاء اختيار رتبة الشموسية'), findsOneWidget);
  });

  testWidgets('choosing a marital status shows it', (tester) async {
    await harness.open(tester, UpdatePerson(person: boy));

    await harness.scrollTo(tester, find.text('الحالة الاجتماعية'));
    await tester.tap(find.text('الحالة الاجتماعية'));
    await tester.pumpAndSettle();
    await tester.tap(find.text(MartialStatus.married.label));
    await tester.pumpAndSettle();

    expect(find.text(MartialStatus.married.label), findsOneWidget);
  });

  testWidgets('the chosen marital status is saved', (tester) async {
    await harness.open(tester, UpdatePerson(person: boy));

    await harness.scrollTo(tester, find.text('الحالة الاجتماعية'));
    await tester.tap(find.text('الحالة الاجتماعية'));
    await tester.pumpAndSettle();
    await tester.tap(find.text(MartialStatus.married.label));
    await tester.pumpAndSettle();
    await harness.tapSave(tester);

    expect(
      harness.persons.updatedPeople.single.martialStatus,
      MartialStatus.married,
    );
  });
}
