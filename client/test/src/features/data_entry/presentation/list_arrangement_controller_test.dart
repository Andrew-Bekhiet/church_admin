import 'package:church_admin/church_admin.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:go_router/go_router.dart';
import 'package:golden_toolkit/golden_toolkit.dart';
import 'package:material_ui/material_ui.dart';
import 'package:mocktail/mocktail.dart';

import '../../../fakes/fake_box.dart';
import '../../../fakes/fake_feature_flags_repo.dart';
import '../../../utils.dart';

class MockDatabaseService extends Mock implements DatabaseService {}

class MockAuthBloc extends Mock implements AuthBloc {}

void main() {
  TestWidgetsFlutterBinding.ensureInitialized();

  final person = AdvancedQueriesMetadata().person;
  final fields = PersonFields();
  const editKey = Key('edit-arrangement');

  List<OrderBy> byName() => [OrderBy(field: fields.name)];

  late UserPreferencesService preferences;

  setUp(() {
    final authBloc = MockAuthBloc();
    when(() => authBloc.currentUserData).thenReturn(null);

    preferences = UserPreferencesService(
      box: FakeSyncKVStore(),
      databaseService: MockDatabaseService(),
      authBloc: authBloc,
    );

    initGlobalProviderContainer([
      userPreferencesServiceProvider.overrideWithValue(preferences),
      featureFlagsRepoProvider.overrideWithValue(FakeFeatureFlagsRepo()),
      viewableObjectServiceProvider.overrideWith(
        (ref) => ViewableObjectService(router: GoRouter(routes: [])),
      ),
    ]);
  });

  tearDown(resetGlobalProviderContainer);

  ListArrangementController createController() {
    final controller = ListArrangementController(
      type: person,
      defaultOrderBy: byName,
    );
    addTearDown(controller.dispose);

    return controller;
  }

  Future<void> openSheetFor(
    WidgetTester tester,
    ListArrangementController controller,
  ) async {
    tester.view.physicalSize = const Size(800, 2400);
    tester.view.devicePixelRatio = 1;
    addTearDown(tester.view.reset);

    await tester.pumpWidgetBuilder(
      Scaffold(
        body: Builder(
          builder: (context) => TextButton(
            key: editKey,
            onPressed: () => controller.edit(context),
            child: const Text('edit'),
          ),
        ),
      ),
      wrapper: materialAppWithThemeAndLocale(),
    );
    await tester.tap(find.byKey(editKey));
    await tester.pumpAndSettle();
  }

  Future<void> chooseSecondLine(
    WidgetTester tester,
    FieldMetadata field,
  ) async {
    await tester.tap(
      find.byKey(ArrangementSecondLineSectionKeys.chooseSecondLine),
    );
    await tester.pumpAndSettle();
    await tester.tap(
      find.descendant(
        of: find.byType(ArrangementSecondLineSection),
        matching: find.byType(DropdownButtonFormField<FieldMetadata>),
      ),
    );
    await tester.pumpAndSettle();
    await tester.tap(find.text(field.label).last);
    await tester.pumpAndSettle();
  }

  Future<void> tapSheetButton(WidgetTester tester, Key key) async {
    await tester.ensureVisible(find.byKey(key));
    await tester.tap(find.byKey(key));
    await tester.pumpAndSettle();
  }

  group('ListArrangementController =>', () {
    test(
      'a list nobody arranged yet uses the default sort and no second line',
      () {
        final controller = createController();

        expect(controller.value.orderBy, byName());
        expect(controller.value.secondLineField, isNull);
      },
    );

    test(
      'a list whose user saved a second line starts with that second line',
      () async {
        await preferences.setLastSecondLineFieldFor(
          OrderByPreferenceKey(type: person),
          fields.birthdate,
        );

        final controller = createController();

        expect(controller.value.secondLineField, fields.birthdate);
      },
    );

    test(
      'second lines saved for the service context do not leak into the plain list',
      () async {
        await preferences.setLastSecondLineFieldFor(
          OrderByPreferenceKey(type: person, inServiceContext: true),
          fields.birthdate,
        );

        final controller = createController();

        expect(controller.value.secondLineField, isNull);
      },
    );

    testWidgets(
      'saving a second line through the sheet announces it on the streams',
      (
        tester,
      ) async {
        final controller = createController();
        final announced = <FieldMetadata?>[];
        final subscription = controller.secondLineFieldStream.listen(
          announced.add,
        );
        addTearDown(subscription.cancel);
        await openSheetFor(tester, controller);

        await chooseSecondLine(tester, fields.birthdate);
        await tapSheetButton(tester, ListArrangementSheetKeys.save);

        expect(announced, [null, fields.birthdate]);
        expect(controller.value.secondLineField, fields.birthdate);
      },
    );

    testWidgets('changing only the second line does not re-announce the sort', (
      tester,
    ) async {
      final controller = createController();
      final announced = <List<OrderBy>>[];
      final subscription = controller.orderByStream.listen(announced.add);
      addTearDown(subscription.cancel);
      await openSheetFor(tester, controller);

      await chooseSecondLine(tester, fields.birthdate);
      await tapSheetButton(tester, ListArrangementSheetKeys.save);

      expect(announced, [byName()]);
    });

    testWidgets(
      'a saved arrangement is what a fresh controller for the same list reads back',
      (
        tester,
      ) async {
        final controller = createController();
        await openSheetFor(tester, controller);
        await chooseSecondLine(tester, fields.birthdate);
        await tapSheetButton(tester, ListArrangementSheetKeys.save);

        final freshController = createController();

        expect(freshController.value, controller.value);
      },
    );

    testWidgets(
      'cancelling the sheet leaves the arrangement and what was saved unchanged',
      (
        tester,
      ) async {
        final controller = createController();
        final before = controller.value;
        await openSheetFor(tester, controller);
        await chooseSecondLine(tester, fields.birthdate);

        await tapSheetButton(tester, ListArrangementSheetKeys.cancel);

        expect(controller.value, before);
        expect(createController().value, before);
      },
    );
  });
}
