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
  @override
  Future<List<PersonType>> fetchFamilyRoles() async => const [];
}

class FakePersonsDAO extends Fake implements PersonsDAO {
  Completer<void>? loadGate;
  final savedPersons = <Person>[];

  @override
  Future<Person?> personServicesClassesGroups({
    required String personId,
  }) async {
    await loadGate?.future;

    return null;
  }

  @override
  Future<Person?> updateObject({
    required Person newObject,
    required Person oldObject,
  }) async {
    savedPersons.add(newObject);

    return newObject;
  }
}

class FakeFamiliesDAO extends Fake implements FamiliesDAO {
  Completer<void>? loadGate;
  final savedFamilies = <Family>[];

  @override
  Future<Family?> getFamilyRelatedFamilies({required String familyId}) async {
    await loadGate?.future;

    return null;
  }

  @override
  Future<Family?> updateFamily({
    required Family newFamily,
    required Family oldFamily,
  }) async {
    savedFamilies.add(newFamily);

    return newFamily;
  }
}

void main() {
  const savedNumber = PhoneContact(id: 'saved', phone: '+201001111111');
  const otherNumber = '01002222222';
  const otherE164 = '+201002222222';
  const renamed = 'اسم جديد';

  final person = Person(
    id: 'person-id',
    name: 'مينا',
    family: const Family(id: 'person-family-id', name: 'أسرة مينا'),
    contacts: const [savedNumber],
  );
  const family = Family(
    id: 'family-id',
    name: 'أسرة',
    address: Address(
      area: Area(id: 'area-id', name: 'منطقة'),
      street: Street(id: 'street-id', name: 'شارع'),
    ),
    contacts: [
      FamilyPhoneContact(
        contact: PhoneContact(id: 'family-saved', phone: '+201001111111'),
        role: PersonType(id: 'father', name: 'الأب', isFamilyAdmin: true),
      ),
    ],
  );

  late FakePersonsDAO persons;
  late FakeFamiliesDAO families;

  Finder phoneField(String draftKey) =>
      find.byKey(PhoneContactDraftFieldKeys.phoneField(draftKey));

  Future<void> openEditorBeforeLoad(WidgetTester tester, Widget editor) async {
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
    await tester.pump();
    await tester.pump(const Duration(seconds: 1));
  }

  Future<void> enterPhone(
    WidgetTester tester,
    String draftKey,
    String input,
  ) async {
    await tester.scrollUntilVisible(
      phoneField(draftKey),
      100,
      scrollable: find.byType(Scrollable).first,
    );
    await tester.pump();
    await tester.enterText(phoneField(draftKey), input);
  }

  Future<void> enterName(
    WidgetTester tester,
    String currentName,
    String name,
  ) async {
    final field = find.widgetWithText(TextFormField, currentName);
    await tester.scrollUntilVisible(
      field,
      100,
      scrollable: find.byType(Scrollable).first,
    );
    await tester.pump();
    await tester.enterText(field, name);
  }

  Future<void> finishLoadingAndSave(
    WidgetTester tester,
    Completer<void> loadGate,
  ) async {
    loadGate.complete();
    await tester.pumpAndSettle();
    await tester.tap(find.byKey(EditObjectDataKeys.saveButton));
    await tester.pump();
    await tester.pump(const Duration(seconds: 1));
  }

  setUp(() {
    persons = FakePersonsDAO();
    families = FakeFamiliesDAO();

    final authBloc = MockAuthBloc();
    when(() => authBloc.currentUserData).thenReturn(
      const User(
        uid: 'user-id',
        name: 'مستخدم',
        permissions: PermissionsSet.fromSet({UserPermission.writeAllData}),
      ),
    );
    final metadata = MockMetadataDAO();
    when(() => metadata.personTypes).thenReturn(FakePersonTypesDAO());
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
    testWidgets('a number changed before loading finishes is saved', (
      tester,
    ) async {
      final loadGate = persons.loadGate = Completer<void>();
      await openEditorBeforeLoad(tester, EditPerson(person: person));

      await enterPhone(tester, 'saved', otherNumber);
      await finishLoadingAndSave(tester, loadGate);

      expect(
        persons.savedPersons.single.contacts.map((c) => c.phone),
        [otherE164],
      );
    });

    testWidgets('a name changed before loading finishes is saved', (
      tester,
    ) async {
      final loadGate = persons.loadGate = Completer<void>();
      await openEditorBeforeLoad(tester, EditPerson(person: person));

      await enterName(tester, person.name, renamed);
      await finishLoadingAndSave(tester, loadGate);

      expect(persons.savedPersons.single.name, renamed);
    });
  });

  group('family editor', () {
    testWidgets('a number changed before loading finishes is saved', (
      tester,
    ) async {
      final loadGate = families.loadGate = Completer<void>();
      await openEditorBeforeLoad(tester, const EditFamily(family: family));

      await enterPhone(tester, 'family-saved', otherNumber);
      await finishLoadingAndSave(tester, loadGate);

      expect(
        families.savedFamilies.single.contacts.map((c) => c.contact.phone),
        [otherE164],
      );
    });

    testWidgets('a name changed before loading finishes is saved', (
      tester,
    ) async {
      final loadGate = families.loadGate = Completer<void>();
      await openEditorBeforeLoad(tester, const EditFamily(family: family));

      await enterName(tester, family.name, renamed);
      await finishLoadingAndSave(tester, loadGate);

      expect(families.savedFamilies.single.name, renamed);
    });
  });
}
