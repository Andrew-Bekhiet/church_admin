import 'package:church_admin/church_admin.dart';
import 'package:material_ui/material_ui.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:go_router/go_router.dart';
import 'package:golden_toolkit/golden_toolkit.dart';
import 'package:material_symbols_icons/symbols.dart';

import '../../../../fakes/fake_feature_flags_repo.dart';
import '../../../../utils.dart';

void main() {
  final person = AdvancedQueriesMetadata().person;
  final fields = PersonFields();
  const openKey = Key('open-sheet');

  final byName = ListArrangement(orderBy: [OrderBy(field: fields.name)]);

  late ListArrangement? savedArrangement;
  late bool sheetClosed;

  setUp(
    () => initGlobalProviderContainer([
      featureFlagsRepoProvider.overrideWithValue(FakeFeatureFlagsRepo()),
      viewableObjectServiceProvider.overrideWith(
        (ref) => ViewableObjectService(router: GoRouter(routes: [])),
      ),
    ]),
  );
  tearDown(resetGlobalProviderContainer);

  Future<void> openSheet(
    WidgetTester tester,
    ListArrangement initialArrangement,
  ) async {
    savedArrangement = null;
    sheetClosed = false;
    await tester.pumpWidgetBuilder(
      Scaffold(
        body: Builder(
          builder: (context) => TextButton(
            key: openKey,
            onPressed: () async {
              savedArrangement = await ListArrangementSheet.show(
                context,
                queryableType: person,
                initialArrangement: initialArrangement,
              );
              sheetClosed = true;
            },
            child: const Text('open'),
          ),
        ),
      ),
      wrapper: materialAppWithThemeAndLocale(),
      surfaceSize: const Size(800, 2400),
    );
    await tester.tap(find.byKey(openKey));
    await tester.pumpAndSettle();
  }

  Future<void> pickField(
    WidgetTester tester, {
    required Finder dropdown,
    required FieldMetadata field,
  }) async {
    await tester.tap(dropdown);
    await tester.pumpAndSettle();
    await tester.tap(find.text(field.label).last);
    await tester.pumpAndSettle();
  }

  Finder sortDropdown() => find.descendant(
    of: find.byType(ArrangementSortSection),
    matching: find.byType(DropdownButtonFormField<FieldMetadata>),
  );

  Finder secondLineDropdown() => find.descendant(
    of: find.byType(ArrangementSecondLineSection),
    matching: find.byType(DropdownButtonFormField<FieldMetadata>),
  );

  Future<void> tapKey(WidgetTester tester, Key key) async {
    await tester.ensureVisible(find.byKey(key));
    await tester.tap(find.byKey(key));
    await tester.pumpAndSettle();
  }

  group('ListArrangementSheet =>', () {
    testWidgets('editing the sort changes nothing until save', (tester) async {
      await openSheet(tester, byName);

      await pickField(
        tester,
        dropdown: sortDropdown().first,
        field: fields.birthdate,
      );

      expect(sheetClosed, isFalse);
      expect(savedArrangement, isNull);
    });

    testWidgets('saving returns the edited sort', (tester) async {
      await openSheet(tester, byName);
      await pickField(
        tester,
        dropdown: sortDropdown().first,
        field: fields.birthdate,
      );

      await tapKey(tester, ListArrangementSheetKeys.save);

      expect(
        savedArrangement,
        byName.withOrderBy([OrderBy(field: fields.birthdate)]),
      );
    });

    testWidgets('cancelling returns nothing even after edits', (tester) async {
      await openSheet(tester, byName);
      await pickField(
        tester,
        dropdown: sortDropdown().first,
        field: fields.birthdate,
      );

      await tapKey(tester, ListArrangementSheetKeys.cancel);

      expect(sheetClosed, isTrue);
      expect(savedArrangement, isNull);
    });

    testWidgets('dismissing the sheet returns nothing', (tester) async {
      await openSheet(tester, byName);

      await tester.tapAt(const Offset(400, 20));
      await tester.pumpAndSettle();

      expect(sheetClosed, isTrue);
      expect(savedArrangement, isNull);
    });

    testWidgets('a chosen second line is saved and the sort stays', (
      tester,
    ) async {
      await openSheet(tester, byName);
      await tapKey(tester, ArrangementSecondLineSectionKeys.chooseSecondLine);
      await pickField(
        tester,
        dropdown: secondLineDropdown(),
        field: fields.birthdate,
      );

      await tapKey(tester, ListArrangementSheetKeys.save);

      expect(savedArrangement?.orderBy, byName.orderBy);
      expect(savedArrangement?.secondLineField, fields.birthdate);
    });

    testWidgets('without a chosen second line the sort field is shown as it', (
      tester,
    ) async {
      await openSheet(tester, byName);

      final summary = tester.widget<Text>(
        find.byKey(ArrangementSecondLineSectionKeys.preview),
      );

      expect(summary.data, contains(fields.name.label));
    });

    testWidgets(
      'a relation sort explains the second line by the sort row label',
      (
        tester,
      ) async {
        await openSheet(
          tester,
          ListArrangement(orderBy: [OrderBy(field: fields.studyYear)]),
        );

        final summary = tester.widget<Text>(
          find.byKey(ArrangementSecondLineSectionKeys.preview),
        );
        expect(summary.data, endsWith(fields.studyYear.label));
      },
    );

    testWidgets('following the sort field again previews the sort field', (
      tester,
    ) async {
      await openSheet(tester, byName.withSecondLineField(fields.birthdate));
      expect(secondLineDropdown(), findsOneWidget);

      await tapKey(tester, ArrangementSecondLineSectionKeys.followSort);

      final summary = tester.widget<Text>(
        find.byKey(ArrangementSecondLineSectionKeys.preview),
      );
      expect(summary.data, contains(fields.name.label));
    });

    testWidgets('following the sort field again saves no second line', (
      tester,
    ) async {
      await openSheet(tester, byName.withSecondLineField(fields.birthdate));
      await tapKey(tester, ArrangementSecondLineSectionKeys.followSort);

      await tapKey(tester, ListArrangementSheetKeys.save);

      expect(savedArrangement?.secondLineField, isNull);
    });

    testWidgets('the fallback second line follows the edited sort', (
      tester,
    ) async {
      await openSheet(tester, byName);

      await pickField(
        tester,
        dropdown: sortDropdown().first,
        field: fields.birthdate,
      );

      final summary = tester.widget<Text>(
        find.byKey(ArrangementSecondLineSectionKeys.preview),
      );
      expect(summary.data, contains(fields.birthdate.label));
    });

    testWidgets('picking a relation as the second line drills into it', (
      tester,
    ) async {
      await openSheet(tester, byName);
      await tapKey(tester, ArrangementSecondLineSectionKeys.chooseSecondLine);
      await pickField(
        tester,
        dropdown: secondLineDropdown(),
        field: fields.address,
      );

      await tapKey(tester, ListArrangementSheetKeys.save);

      expect(
        savedArrangement?.secondLineField,
        isA<RedirectingFieldMetadata>().having(
          (f) => f.parentField,
          'parentField',
          fields.address,
        ),
      );
    });

    testWidgets('adding a sort adds a sort row', (tester) async {
      await openSheet(tester, byName);
      expect(find.byType(OrderByWidget), findsOneWidget);

      await tapKey(tester, ArrangementSortSectionKeys.addSort);

      expect(find.byType(OrderByWidget), findsNWidgets(2));
    });

    testWidgets('removing a sort row keeps the remaining sort', (tester) async {
      final twoSorts = byName.withOrderBy([
        OrderBy(field: fields.name),
        OrderBy(field: fields.birthdate),
      ]);
      await openSheet(tester, twoSorts);

      await tester.tap(find.byIcon(Symbols.clear));
      await tester.pumpAndSettle();
      await tapKey(tester, ListArrangementSheetKeys.save);

      expect(savedArrangement?.orderBy, byName.orderBy);
    });
  });
}
