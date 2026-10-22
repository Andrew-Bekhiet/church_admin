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
    expect(find.byTooltip('حذف'), findsNothing);
  });

  testWidgets('saving a new area creates it and opens its details', (
    tester,
  ) async {
    await harness.open(tester, const EditAreaRoute());

    await tester.enterText(harness.nameField, 'المعادي');
    await harness.tapSave(tester);
    await tester.pumpAndSettle();

    final created = harness.areas.createdObjects.single;
    expect(created.name, 'المعادي');
    expect(find.text('viewing ${created.id}'), findsOneWidget);
  });

  testWidgets('saving without a name shows why and saves nothing', (
    tester,
  ) async {
    await harness.open(tester, const EditAreaRoute());

    await harness.tapSave(tester);
    await tester.pumpAndSettle();

    expect(find.text(ObjectEditError.nameRequired.message), findsOneWidget);
    expect(harness.areas.createdObjects, isEmpty);
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

    expect(harness.areas.updates.single.editedObject.name, 'شبرا الخيمة');
    expect(find.text('open'), findsOneWidget);
  });

  testWidgets('a failed save reports the error and stays on the editor', (
    tester,
  ) async {
    harness.areas.saveError = Exception('offline');
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

      expect(
        find.text(EditObjectScreenHarness.discardDialogTitle),
        findsOneWidget,
      );
    });

    testWidgets('without edits goes straight back', (tester) async {
      await harness.open(
        tester,
        const EditAreaRoute(intent: UpdateArea(area: storedArea)),
      );

      await harness.pressBack(tester);

      expect(find.text('open'), findsOneWidget);
    });
  });

  testWidgets('while deleting the message says so', (tester) async {
    final deleteGate = harness.areas.deleteGate = Completer<void>();
    await harness.open(
      tester,
      const EditAreaRoute(intent: UpdateArea(area: storedArea)),
      withPageBelow: true,
    );

    await tester.tap(find.byTooltip('حذف'));
    await tester.pumpAndSettle();
    await tester.tap(find.text('حذف'));
    await tester.pump();
    await tester.pump(const Duration(seconds: 1));

    expect(find.text('جار الحذف ...'), findsOneWidget);
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

    await tester.tap(find.byTooltip('حذف'));
    await tester.pumpAndSettle();
    await tester.tap(find.text('حذف'));
    await tester.pumpAndSettle();

    expect(harness.areas.deletedIds, [storedArea.id]);
    expect(find.text('open'), findsOneWidget);
  });
}
