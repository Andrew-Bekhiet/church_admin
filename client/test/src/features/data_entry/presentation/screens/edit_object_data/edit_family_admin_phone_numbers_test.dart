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
  static const mother = PersonType(
    id: 'mother',
    name: 'الأم',
    isFamilyAdmin: true,
  );
  static const son = PersonType(id: 'son', name: 'ابن');

  @override
  Future<List<PersonType>> fetchFamilyRoles() async => const [father, mother];
}

class FakePersonsDAO extends Fake implements PersonsDAO {
  @override
  Future<Person?> personServicesClassesGroups({
    required String personId,
  }) async => null;
}

void main() {
  const family = Family(id: 'family-id', name: 'أسرة');
  const ownNumber = PhoneContact(id: 'own', phone: '+201001111111');
  const motherNumber = FamilyPhoneContact(
    contact: PhoneContact(id: 'mother-number', phone: '+201003333333'),
    role: FakePersonTypesDAO.mother,
    personId: 'the-mother',
  );

  Person personOfType(PersonType type) => Person(
    id: 'person-id',
    name: 'مينا',
    family: family,
    familyId: family.id,
    personType: type,
    contacts: const [ownNumber],
    familyContacts: const [motherNumber],
  );

  Future<void> openEditor(WidgetTester tester, Person person) async {
    await tester.pumpWidget(
      materialAppWithThemeAndLocale()(
        Builder(
          builder: (context) => Scaffold(
            body: TextButton(
              onPressed: () => unawaited(
                Navigator.of(context).push<void>(
                  MaterialPageRoute(
                    builder: (_) => EditPerson(person: person),
                  ),
                ),
              ),
              child: const Text('open'),
            ),
          ),
        ),
      ),
    );
    await tester.tap(find.text('open'));
    await tester.pumpAndSettle();
    await tester.scrollUntilVisible(
      find.byKey(PhoneContactsEditorKeys.addButton),
      100,
      scrollable: find.byType(Scrollable).first,
    );
    await tester.pumpAndSettle();
  }

  Future<void> openOwnNumberLabelPicker(WidgetTester tester) async {
    final labelPicker = find.byKey(
      PhoneContactDraftFieldKeys.labelPicker(ownNumber.id),
    );
    await tester.ensureVisible(labelPicker);
    await tester.pumpAndSettle();
    await tester.tap(labelPicker);
    await tester.pumpAndSettle();
  }

  setUp(() {
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
    when(() => databaseService.persons).thenReturn(FakePersonsDAO());

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

  testWidgets("a family admin's form does not list the other admins' "
      'numbers', (tester) async {
    await openEditor(tester, personOfType(FakePersonTypesDAO.father));

    expect(
      find.byKey(
        PhoneContactDraftFieldKeys.phoneField(motherNumber.contact.id),
      ),
      findsNothing,
    );
  });

  testWidgets("a family admin's numbers cannot be labelled as a relative's", (
    tester,
  ) async {
    await openEditor(tester, personOfType(FakePersonTypesDAO.father));

    await openOwnNumberLabelPicker(tester);

    expect(
      find.byKey(
        PhoneContactLabelPickerKeys.roleItem(FakePersonTypesDAO.mother.id),
      ),
      findsNothing,
    );
  });

  testWidgets("a child's form lists the family admins' numbers", (
    tester,
  ) async {
    await openEditor(tester, personOfType(FakePersonTypesDAO.son));

    expect(
      find.byKey(
        PhoneContactDraftFieldKeys.phoneField(motherNumber.contact.id),
      ),
      findsOneWidget,
    );
  });

  testWidgets("a child's numbers can be labelled as a family admin's", (
    tester,
  ) async {
    await openEditor(tester, personOfType(FakePersonTypesDAO.son));

    await openOwnNumberLabelPicker(tester);

    expect(
      find.byKey(
        PhoneContactLabelPickerKeys.roleItem(FakePersonTypesDAO.mother.id),
      ),
      findsOneWidget,
    );
  });
}
