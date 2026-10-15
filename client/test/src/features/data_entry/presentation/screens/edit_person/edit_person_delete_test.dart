import 'dart:async';

import 'package:church_admin/church_admin.dart';
import 'package:flutter_test/flutter_test.dart';

import '../../../../../utils.dart';
import 'edit_person_screen_harness.dart';

void main() {
  final person = Person(id: 'person-id', name: 'مينا');

  late EditPersonScreenHarness harness;

  setUp(() {
    harness = EditPersonScreenHarness()..install();
  });

  tearDown(defaultTearDown);

  testWidgets('confirming the deletion deletes the person and leaves', (
    tester,
  ) async {
    await harness.open(
      tester,
      UpdatePerson(person: person),
      withPageBelow: true,
    );

    await tester.tap(find.byTooltip('حذف'));
    await tester.pumpAndSettle();
    await tester.tap(find.text('نعم'));
    await tester.pumpAndSettle();

    expect(harness.persons.deletedPersonIds, [person.id]);
    expect(find.byKey(EditPersonSaveButtonKeys.saveButton), findsNothing);
    expect(find.text('open'), findsOneWidget);
  });

  testWidgets('leaving while the deletion is in flight shows no snackbar', (
    tester,
  ) async {
    final deletion = harness.persons.deleteGate = Completer<void>();
    await harness.open(
      tester,
      UpdatePerson(person: person),
      withPageBelow: true,
    );
    await tester.tap(find.byTooltip('حذف'));
    await tester.pumpAndSettle();
    await tester.tap(find.text('نعم'));
    await tester.pumpAndSettle();
    await harness.pressBack(tester);

    deletion.complete();
    await tester.pumpAndSettle();

    expect(find.text('تم الحذف بنجاح'), findsNothing);
  });

  testWidgets('a failed deletion shows the error and keeps the screen', (
    tester,
  ) async {
    harness.persons.deleteError = Exception('connection lost');
    await harness.open(tester, UpdatePerson(person: person));

    await tester.tap(find.byTooltip('حذف'));
    await tester.pumpAndSettle();
    await tester.tap(find.text('نعم'));
    await tester.pumpAndSettle();

    expect(find.byType(CAErrorDialog), findsOneWidget);
    expect(find.byKey(EditPersonSaveButtonKeys.saveButton), findsOneWidget);
  });

  testWidgets('declining the deletion keeps the person', (tester) async {
    await harness.open(tester, UpdatePerson(person: person));

    await tester.tap(find.byTooltip('حذف'));
    await tester.pumpAndSettle();
    await tester.tap(find.text('لا'));
    await tester.pumpAndSettle();

    expect(harness.persons.deletedPersonIds, isEmpty);
    expect(find.byKey(EditPersonSaveButtonKeys.saveButton), findsOneWidget);
  });

  testWidgets('a person with an account cannot be deleted', (tester) async {
    final withAccount = person.copyWith(
      user: const User(uid: 'account', name: 'مينا', email: 'mina@example.com'),
    );
    await harness.open(tester, UpdatePerson(person: withAccount));

    expect(find.byKey(EditPersonSaveButtonKeys.saveButton), findsOneWidget);
    expect(find.byTooltip('حذف'), findsNothing);
  });

  testWidgets('a person that is not saved yet cannot be deleted', (
    tester,
  ) async {
    await harness.open(tester, const CreateBlankPerson());

    expect(find.byKey(EditPersonSaveButtonKeys.saveButton), findsOneWidget);
    expect(find.byTooltip('حذف'), findsNothing);
  });
}
