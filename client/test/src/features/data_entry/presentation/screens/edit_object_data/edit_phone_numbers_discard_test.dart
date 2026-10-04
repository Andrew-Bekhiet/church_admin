import 'dart:async';

import 'package:church_admin/church_admin.dart';
import 'package:church_admin/src/core/services/database/gql_definintions/metadata/person_types_dao.dart';
import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:material_symbols_icons/material_symbols_icons.dart';
import 'package:mocktail/mocktail.dart';

import '../../../../../fakes/fake_feature_flags_repo.dart';
import '../../../../../utils.dart';

class MockAuthBloc extends Mock implements AuthBloc {}

class MockDatabaseService extends Mock implements DatabaseService {}

class MockMetadataDAO extends Mock implements MetadataDAO {}

class MockImageUrlCacheService extends Mock implements ImageUrlCacheService {}

class MockUserPreferencesService extends Mock
    implements UserPreferencesService {}

class MockViewableObjectService extends Mock implements ViewableObjectService {}

class FakePersonTypesDAO extends Fake implements PersonTypesDAO {
  static const father = PersonType(
    id: 'father',
    name: 'الأب',
    isFamilyAdmin: true,
  );

  List<PersonType> familyRoles = const [];

  @override
  Future<List<PersonType>> fetchFamilyRoles() async => familyRoles;
}

class FakePersonsDAO extends Fake implements PersonsDAO {
  Future<void>? loadGate;

  @override
  Future<Person?> personServicesClassesGroups({
    required String personId,
  }) async {
    await loadGate;

    return null;
  }
}

class FakeFamiliesDAO extends Fake implements FamiliesDAO {
  Future<void>? loadGate;

  @override
  Future<Family?> getFamilyRelatedFamilies({required String familyId}) async {
    await loadGate;

    return null;
  }
}

void main() {
  const savedNumber = PhoneContact(id: 'saved', phone: '+201001111111');
  const savedInput = '01001111111';
  const otherValidInput = '01002222222';
  const incompleteInput = '0100';
  const discardDialogTitle = 'هل تريد تجاهل التغييرات؟';

  final person = Person(
    id: 'person-id',
    name: 'مينا',
    contacts: const [savedNumber],
  );
  const family = Family(
    id: 'family-id',
    name: 'أسرة',
    contacts: [
      FamilyPhoneContact(
        contact: PhoneContact(id: 'family-saved', phone: '+201001111111'),
        role: FakePersonTypesDAO.father,
      ),
    ],
  );

  Finder phoneField(String draftKey) =>
      find.byKey(PhoneContactDraftFieldKeys.phoneField(draftKey));

  Future<void> openEditor(
    WidgetTester tester,
    Widget editor, {
    bool settle = true,
  }) async {
    await tester.pumpWidget(
      materialAppWithThemeAndLocale()(
        Builder(
          builder: (context) => Scaffold(
            body: TextButton(
              onPressed: () => unawaited(
                Navigator.of(context).push<void>(
                  MaterialPageRoute(builder: (_) => editor),
                ),
              ),
              child: const Text('open'),
            ),
          ),
        ),
      ),
    );
    await tester.tap(find.text('open'));
    if (settle) {
      await tester.pumpAndSettle();
    } else {
      await tester.pump();
      await tester.pump(const Duration(seconds: 1));
    }
  }

  Future<void> scrollTo(WidgetTester tester, Finder finder) async {
    await tester.scrollUntilVisible(
      finder,
      100,
      scrollable: find.byType(Scrollable).first,
    );
    await tester.pumpAndSettle();
  }

  Future<void> pressBack(WidgetTester tester) async {
    await tester.binding.handlePopRoute();
    await tester.pumpAndSettle();
  }

  late FakePersonsDAO persons;
  late FakeFamiliesDAO families;
  late FakePersonTypesDAO personTypes;

  setUp(() {
    persons = FakePersonsDAO();
    families = FakeFamiliesDAO();
    personTypes = FakePersonTypesDAO();
    final authBloc = MockAuthBloc();
    when(() => authBloc.currentUserData).thenReturn(
      const User(
        uid: 'user-id',
        name: 'مستخدم',
        permissions: PermissionsSet.fromSet({UserPermission.writeAllData}),
      ),
    );
    final metadata = MockMetadataDAO();
    when(() => metadata.personTypes).thenReturn(personTypes);
    final databaseService = MockDatabaseService();
    when(() => databaseService.metadata).thenReturn(metadata);
    when(() => databaseService.persons).thenReturn(persons);
    when(() => databaseService.families).thenReturn(families);

    registerFallbackValue(
      const FunctionsObjectImageInfo('persons', 'fallback'),
    );
    final imageUrls = MockImageUrlCacheService();
    when(
      () => imageUrls.getImageUrl(any()),
    ).thenAnswer((_) => Completer<String>().future);

    final preferences = MockUserPreferencesService();
    when(() => preferences.darkTheme).thenReturn(false);
    when(() => preferences.greatFeastTheme).thenReturn(false);

    final viewableObjects = MockViewableObjectService();
    when(
      () => viewableObjects.getDefaultIconFor<IImage>(any()),
    ).thenReturn(Symbols.person);

    initGlobalProviderContainer([
      authBlocProvider.overrideWithValue(authBloc),
      featureFlagsRepoProvider.overrideWithValue(FakeFeatureFlagsRepo()),
      databaseServiceProvider.overrideWithValue(databaseService),
      imageUrlCacheServiceProvider.overrideWithValue(imageUrls),
      userPreferencesServiceProvider.overrideWithValue(preferences),
      viewableObjectServiceProvider.overrideWithValue(viewableObjects),
    ]);
  });

  tearDown(defaultTearDown);

  group('person editor', () {
    Future<void> openPerson(WidgetTester tester, {bool settle = true}) =>
        openEditor(tester, EditPerson(person: person), settle: settle);

    testWidgets('leaving after changing a number to another valid one asks '
        'to discard', (tester) async {
      await openPerson(tester);

      await scrollTo(tester, phoneField('saved'));
      await tester.enterText(phoneField('saved'), otherValidInput);
      await pressBack(tester);

      expect(find.text(discardDialogTitle), findsOneWidget);
    });

    testWidgets('leaving after typing an incomplete number asks to discard', (
      tester,
    ) async {
      await openPerson(tester);

      await scrollTo(tester, phoneField('saved'));
      await tester.enterText(phoneField('saved'), incompleteInput);
      await pressBack(tester);

      expect(find.text(discardDialogTitle), findsOneWidget);
    });

    testWidgets('leaving after adding an empty number row asks to discard', (
      tester,
    ) async {
      await openPerson(tester);

      await scrollTo(tester, find.byKey(PhoneContactsEditorKeys.addButton));
      await tester.tap(find.byKey(PhoneContactsEditorKeys.addButton));
      await tester.pumpAndSettle();
      await pressBack(tester);

      expect(find.text(discardDialogTitle), findsOneWidget);
    });

    testWidgets(
      'leaving after typing an incomplete number into a new row asks to '
      'discard',
      (tester) async {
        await openPerson(tester);

        await scrollTo(tester, find.byKey(PhoneContactsEditorKeys.addButton));
        await tester.tap(find.byKey(PhoneContactsEditorKeys.addButton));
        await tester.pumpAndSettle();
        final newField = find.byWidgetPredicate(
          (widget) => switch (widget.key) {
            ValueKey<String>(:final value) =>
              value.startsWith('phone_contacts_editor_phone_') &&
                  !value.endsWith('_saved'),
            _ => false,
          },
        );
        await tester.enterText(newField, incompleteInput);
        await pressBack(tester);

        expect(find.text(discardDialogTitle), findsOneWidget);
      },
    );

    testWidgets('leaving after removing the number asks to discard', (
      tester,
    ) async {
      await openPerson(tester);

      final remove = find.byKey(
        PhoneContactDraftFieldKeys.removeButton('saved'),
      );
      await scrollTo(tester, remove);
      await tester.tap(remove);
      await tester.pumpAndSettle();
      await pressBack(tester);

      expect(find.text(discardDialogTitle), findsOneWidget);
    });

    testWidgets('leaving after changing a number before the person has '
        'finished loading asks to discard', (tester) async {
      final loaded = Completer<void>();
      persons.loadGate = loaded.future;
      await openPerson(tester, settle: false);

      await tester.scrollUntilVisible(
        phoneField('saved'),
        100,
        scrollable: find.byType(Scrollable).first,
      );
      await tester.pump();
      await tester.enterText(phoneField('saved'), otherValidInput);
      loaded.complete();
      await tester.pumpAndSettle();
      await pressBack(tester);

      expect(find.text(discardDialogTitle), findsOneWidget);
    });

    testWidgets('leaving after typing the saved number back in does not ask', (
      tester,
    ) async {
      await openPerson(tester);

      await scrollTo(tester, phoneField('saved'));
      await tester.enterText(phoneField('saved'), otherValidInput);
      await tester.enterText(phoneField('saved'), savedInput);
      await pressBack(tester);

      expect(find.text(discardDialogTitle), findsNothing);
      expect(find.text('open'), findsOneWidget);
    });

    testWidgets('leaving without changing anything does not ask', (
      tester,
    ) async {
      await openPerson(tester);

      await pressBack(tester);

      expect(find.text(discardDialogTitle), findsNothing);
      expect(find.text('open'), findsOneWidget);
    });
  });

  group('family editor', () {
    Future<void> openFamily(WidgetTester tester, {bool settle = true}) =>
        openEditor(tester, const EditFamily(family: family), settle: settle);

    testWidgets('leaving after typing an incomplete number asks to discard', (
      tester,
    ) async {
      await openFamily(tester);

      await scrollTo(tester, phoneField('family-saved'));
      await tester.enterText(phoneField('family-saved'), incompleteInput);
      await pressBack(tester);

      expect(find.text(discardDialogTitle), findsOneWidget);
    });

    testWidgets('leaving after changing a number to another valid one asks '
        'to discard', (tester) async {
      await openFamily(tester);

      await scrollTo(tester, phoneField('family-saved'));
      await tester.enterText(phoneField('family-saved'), otherValidInput);
      await pressBack(tester);

      expect(find.text(discardDialogTitle), findsOneWidget);
    });

    testWidgets('leaving after changing a number before the family has '
        'finished loading asks to discard', (tester) async {
      final loaded = Completer<void>();
      families.loadGate = loaded.future;
      await openFamily(tester, settle: false);

      await tester.scrollUntilVisible(
        phoneField('family-saved'),
        100,
        scrollable: find.byType(Scrollable).first,
      );
      await tester.pump();
      await tester.enterText(phoneField('family-saved'), otherValidInput);
      loaded.complete();
      await tester.pumpAndSettle();
      await pressBack(tester);

      expect(find.text(discardDialogTitle), findsOneWidget);
    });

    testWidgets('leaving after adding an empty number row asks to discard', (
      tester,
    ) async {
      personTypes.familyRoles = const [FakePersonTypesDAO.father];
      await openFamily(tester);

      final add = find.byKey(FamilyPhoneContactMenuButtonKeys.button);
      await scrollTo(tester, add);
      await tester.tap(add);
      await tester.pumpAndSettle();
      await tester.tap(
        find.byKey(
          FamilyPhoneContactMenuButtonKeys.roleItem(
            FakePersonTypesDAO.father.id,
          ),
        ),
      );
      await tester.pumpAndSettle();
      await pressBack(tester);

      expect(find.text(discardDialogTitle), findsOneWidget);
    });

    testWidgets('leaving without changing anything does not ask', (
      tester,
    ) async {
      await openFamily(tester);

      await pressBack(tester);

      expect(find.text(discardDialogTitle), findsNothing);
      expect(find.text('open'), findsOneWidget);
    });
  });
}
