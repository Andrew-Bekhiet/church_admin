import 'dart:async';

import 'package:church_admin/church_admin.dart';
import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:material_symbols_icons/material_symbols_icons.dart';
import 'package:mocktail/mocktail.dart';

import '../../../utils.dart';

void main() {
  group('DataCheckIndicator', () {
    const passedDetail = DataCheckDetail(
      group: DataCheckGroup.family,
      check: DataCheckRule.hasFamilyAdmin,
      passed: true,
    );
    const failedDetail = DataCheckDetail(
      group: DataCheckGroup.address,
      check: DataCheckRule.hasStreet,
      passed: false,
    );
    const details = [passedDetail, failedDetail];
    final incomplete = DataCheck(
      familyId: 'family',
      completenessPercent: 37,
      checksDetails: details,
    );
    final complete = DataCheck(
      familyId: 'family',
      isComplete: true,
      familyCheck: true,
      addressCheck: true,
      checksDetails: details,
    );

    late _MockDataChecksDAO dao;

    setUp(() {
      dao = _MockDataChecksDAO();
      final database = _MockDatabaseService();
      when(() => database.dataChecks).thenReturn(dao);
      initGlobalProviderContainer([
        databaseServiceProvider.overrideWithValue(database),
      ]);
    });
    tearDown(defaultTearDown);

    Future<void> pumpIndicator(
      WidgetTester tester,
      DataCheck dataCheck, {
      bool canOverride = true,
    }) => tester.pumpWidget(
      MaterialApp(
        home: Scaffold(
          body: DataCheckIndicator(
            dataCheck: dataCheck,
            canOverride: canOverride,
          ),
        ),
      ),
    );

    testWidgets('a complete family shows the badge, not a progress ring', (
      tester,
    ) async {
      await pumpIndicator(tester, complete);

      expect(find.byKey(DataCheckEmblem.completeBadgeKey), findsOneWidget);
      expect(find.byKey(DataCheckEmblem.progressRingKey), findsNothing);
    });

    testWidgets('an incomplete family shows how far it is from complete', (
      tester,
    ) async {
      await pumpIndicator(tester, incomplete);

      final ring = tester.widget<CircularProgressIndicator>(
        find.byKey(DataCheckEmblem.progressRingKey),
      );
      expect(ring.value, incomplete.completenessPercent / 100);
      expect(find.byKey(DataCheckEmblem.completeBadgeKey), findsNothing);
    });

    testWidgets(
      'tapping the indicator opens a report that marks each check passed or failed',
      (tester) async {
        await pumpIndicator(tester, incomplete);

        await tester.tap(find.byType(DataCheckIndicator));
        await tester.pumpAndSettle();

        Finder iconIn(DataCheckDetail detail) => find.descendant(
          of: find.byKey(DataCheckDetailRow.keyFor(detail)),
          matching: find.byType(Icon),
        );
        expect(
          tester.widget<Icon>(iconIn(passedDetail)).icon,
          Symbols.check_circle,
        );
        expect(tester.widget<Icon>(iconIn(failedDetail)).icon, Symbols.cancel);
      },
    );

    testWidgets('check results are announced in an Arabic RTL report', (
      tester,
    ) async {
      final semantics = tester.ensureSemantics();
      await tester.pumpWidget(
        materialAppWithThemeAndLocale()(
          Scaffold(
            body: Column(
              children: [
                DataCheckDetailRow(detail: passedDetail),
                DataCheckDetailRow(detail: failedDetail),
              ],
            ),
          ),
        ),
      );

      expect(find.bySemanticsLabel('اجتاز الفحص'), findsOneWidget);
      expect(find.bySemanticsLabel('لم يجتز الفحص'), findsOneWidget);
      expect(
        Directionality.of(tester.element(find.byType(Column).first)),
        TextDirection.rtl,
      );
      semantics.dispose();
    });

    testWidgets('the report explains how the manual override works', (
      tester,
    ) async {
      await pumpIndicator(tester, incomplete);

      await tester.tap(find.byType(DataCheckIndicator));
      await tester.pumpAndSettle();

      expect(find.text(DataCheckOverrideSelector.explanation), findsOneWidget);
    });

    testWidgets('a reader without edit rights cannot change the verdict', (
      tester,
    ) async {
      await pumpIndicator(tester, incomplete, canOverride: false);

      await tester.tap(find.byType(DataCheckIndicator));
      await tester.pumpAndSettle();

      final selector = tester.widget<SegmentedButton<DataCheckOverride>>(
        find.byType(SegmentedButton<DataCheckOverride>),
      );
      expect(selector.onSelectionChanged, isNull);
    });

    testWidgets('the report stays open while an override is saving', (
      tester,
    ) async {
      final save = Completer<bool>();
      when(
        () => dao.tryOverride(familyId: incomplete.familyId, isComplete: true),
      ).thenAnswer((_) => save.future);
      await pumpIndicator(tester, incomplete);
      await tester.tap(find.byType(DataCheckIndicator));
      await tester.pumpAndSettle();

      await tester.tap(find.text(DataCheckOverride.markedComplete.label));
      await tester.pump();
      await tester.binding.handlePopRoute();
      await tester.pump();
      await tester.pump(const Duration(seconds: 1));

      expect(find.byType(DataCheckReportDialog), findsOneWidget);

      save.complete(true);
      await tester.pumpAndSettle();
    });
  });
}

class _MockDatabaseService extends Mock implements DatabaseService {}

class _MockDataChecksDAO extends Mock implements DataChecksDAO {}
