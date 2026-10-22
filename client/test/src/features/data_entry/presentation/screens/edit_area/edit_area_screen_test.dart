import 'dart:async';

import 'package:church_admin/church_admin.dart';
import 'package:flutter_test/flutter_test.dart';

import '../../../../../utils.dart';
import '../edit_object/edit_object_screen_harness.dart';

void main() {
  const storedArea = Area(id: 'shubra', name: 'شبرا');

  late EditObjectScreenHarness harness;

  setUp(() {
    harness = EditObjectScreenHarness()..install();
  });

  tearDown(defaultTearDown);

  testWidgets('opening the route without an intent edits a blank new area', (
    tester,
  ) async {
    await harness.open(tester, const EditAreaRoute());

    expect(find.byKey(ObjectSaveButtonKeys.saveButton), findsOneWidget);
    expect(find.byKey(ObjectDeleteButtonKeys.deleteButton), findsNothing);
  });

  testWidgets('saving a new area creates it and opens its details', (
    tester,
  ) async {
    await harness.open(tester, const EditAreaRoute());

    await tester.enterText(harness.nameField, 'المعادي');
    await harness.tapSave(tester);
    await tester.pumpAndSettle();

    final created = harness.areasDAO.createdObjects.single;
    expect(created.name, 'المعادي');
    expect(
      harness.routeStack.last,
      ViewAreaRoute(id: created.id, area: created),
    );
  });

  testWidgets('saving without a name shows why and saves nothing', (
    tester,
  ) async {
    await harness.open(tester, const EditAreaRoute());

    await harness.tapSave(tester);
    await tester.pumpAndSettle();

    expect(find.text(ObjectEditError.nameRequired.message), findsOneWidget);
    expect(harness.areasDAO.createdObjects, isEmpty);
  });

  testWidgets('saving an existing area goes back to the previous screen', (
    tester,
  ) async {
    await harness.open(
      tester,
      const EditAreaRoute(intent: UpdateArea(area: storedArea)),
    );

    await tester.enterText(harness.nameField, 'شبرا الخيمة');
    await harness.tapSave(tester);
    await tester.pumpAndSettle();

    expect(harness.areasDAO.updates.single.editedObject.name, 'شبرا الخيمة');
    expect(harness.routeStack, [const HomeScreenRoute()]);
  });

  testWidgets('a failed save reports the error and stays on the editor', (
    tester,
  ) async {
    harness.areasDAO.saveError = Exception('offline');
    await harness.open(
      tester,
      const EditAreaRoute(intent: UpdateArea(area: storedArea)),
    );

    await harness.tapSave(tester);
    await tester.pumpAndSettle();

    expect(harness.logging.reportedErrors, hasLength(1));
    expect(find.byType(CAErrorDialog), findsOneWidget);
  });

  group('leaving', () {
    testWidgets('after an edit asks to discard it', (tester) async {
      await harness.open(
        tester,
        const EditAreaRoute(intent: UpdateArea(area: storedArea)),
      );

      await tester.enterText(harness.nameField, 'شبرا الخيمة');
      await harness.pressBack(tester);

      expect(find.byType(DiscardChangesDialog), findsOneWidget);
    });

    testWidgets('without edits goes straight back', (tester) async {
      await harness.open(
        tester,
        const EditAreaRoute(intent: UpdateArea(area: storedArea)),
      );

      await harness.pressBack(tester);

      expect(harness.routeStack, [const HomeScreenRoute()]);
    });
  });

  testWidgets('while deleting the message says so', (tester) async {
    final deleteGate = harness.areasDAO.deleteGate = Completer<void>();
    await harness.open(
      tester,
      const EditAreaRoute(intent: UpdateArea(area: storedArea)),
      withPageBelow: true,
    );

    await tester.tap(find.byKey(ObjectDeleteButtonKeys.deleteButton));
    await tester.pumpAndSettle();
    await tester.tap(find.byKey(ConfirmationDialogKeys.confirmButton));
    await tester.pump();
    await tester.pump(const Duration(seconds: 1));

    expect(find.text(const DeletingObject().message), findsOneWidget);
    deleteGate.complete();
    await tester.pumpAndSettle();
  });

  testWidgets('confirming the deletion deletes the area and leaves its page', (
    tester,
  ) async {
    await harness.open(
      tester,
      const EditAreaRoute(intent: UpdateArea(area: storedArea)),
      withPageBelow: true,
    );

    await tester.tap(find.byKey(ObjectDeleteButtonKeys.deleteButton));
    await tester.pumpAndSettle();
    await tester.tap(find.byKey(ConfirmationDialogKeys.confirmButton));
    await tester.pumpAndSettle();

    expect(harness.areasDAO.deletedIds, [storedArea.id]);
    expect(harness.routeStack, [const HomeScreenRoute()]);
  });
}
