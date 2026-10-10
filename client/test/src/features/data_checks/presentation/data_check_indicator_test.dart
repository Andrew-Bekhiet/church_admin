import 'dart:async';

import 'package:church_admin/church_admin.dart';
import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:material_symbols_icons/material_symbols_icons.dart';
import 'package:mocktail/mocktail.dart';

import '../../../utils.dart';

void main() {
  group('DataCheckIndicator', () {
    const items = [
      DataCheckItem(
        group: DataCheckGroup.family,
        check: 'has_family_admin',
        passed: true,
      ),
      DataCheckItem(
        group: DataCheckGroup.address,
        check: 'has_street',
        passed: false,
      ),
    ];
    final incomplete = DataCheck(
      familyId: 'family',
      completenessPercent: 37,
      details: items,
    );
    final complete = DataCheck(
      familyId: 'family',
      isComplete: true,
      familyCheck: true,
      addressCheck: true,
      details: items,
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

      expect(find.byKey(DataCheckIndicator.completeBadgeKey), findsOneWidget);
      expect(find.byKey(DataCheckIndicator.progressRingKey), findsNothing);
    });

    testWidgets('an incomplete family shows how far it is from complete', (
      tester,
    ) async {
      await pumpIndicator(tester, incomplete);

      final ring = tester.widget<CircularProgressIndicator>(
        find.byKey(DataCheckIndicator.progressRingKey),
      );
      expect(ring.value, 0.37);
      expect(find.byKey(DataCheckIndicator.completeBadgeKey), findsNothing);
    });

    testWidgets(
      'tapping the indicator opens a report that marks each check passed or failed',
      (tester) async {
        await pumpIndicator(tester, incomplete);

        await tester.tap(find.byType(DataCheckIndicator));
        await tester.pumpAndSettle();

        Finder iconIn(String check) => find.descendant(
          of: find.byKey(ValueKey('dataCheckItem.$check')),
          matching: find.byType(Icon),
        );
        expect(
          tester.widget<Icon>(iconIn('has_family_admin')).icon,
          Symbols.check_circle,
        );
        expect(tester.widget<Icon>(iconIn('has_street')).icon, Symbols.cancel);
      },
    );

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
        () => dao.tryOverride(familyId: 'family', isComplete: true),
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
