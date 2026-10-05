import 'dart:async';

import 'package:church_admin/church_admin.dart';
import 'package:church_admin/src/core/services/database/gql_definintions/metadata/person_types_dao.dart';
import 'package:church_admin/src/features/data_entry/presentation/widgets/form_fields/address_house_number_row.dart';
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
  Person? saved;

  @override
  Future<Person?> personServicesClassesGroups({
    required String personId,
  }) async => null;

  @override
  Future<Person?> updateObject({
    required Person oldObject,
    required Person newObject,
  }) async => saved = newObject;
}

class FakeFamiliesDAO extends Fake implements FamiliesDAO {
  List<Family> families = const [];

  @override
  PaginatableStreamBase<Family> streamAllWithAddresses({
    Stream<String?>? searchQuery,
    Stream<List<Filter>>? where,
    Stream<List<OrderBy>>? orderBy,
  }) => PaginatableStream.simple(
    factory: (_) => Stream.value(PaginatableStreamResponse(data: families)),
  );
}

void main() {
  const family = Family(id: 'family-id', name: 'أسرة');
  const otherFamily = Family(
    id: 'other-family-id',
    name: 'أسرة أخرى',
    address: Address(id: 'other-address-id', houseCode: '56'),
  );
  final person = Person(
    id: 'person-id',
    name: 'مينا',
    family: family,
    familyId: family.id,
    address: const Address(id: 'address-id', houseCode: '12'),
  );

  Finder houseCodeField() => find.descendant(
    of: find.byKey(AddressHouseNumberRowKeys.houseCode),
    matching: find.byType(TextField),
  );

  Finder familyItem(String id) => find.byWidgetPredicate(
    (widget) => switch (widget) {
      ViewableObjectWidget(object: ViewableWithID(id: final objectId)) =>
        objectId == id,
      _ => false,
    },
  );

  Future<void> scrollTo(WidgetTester tester, Finder finder) async {
    await tester.scrollUntilVisible(
      finder,
      100,
      scrollable: find.byType(Scrollable).first,
    );
    await tester.pumpAndSettle();
  }

  Future<void> openEditor(WidgetTester tester, Person person) async {
    await tester.pumpWidget(
      materialAppWithThemeAndLocale()(
        Builder(
          builder: (context) => Scaffold(
            body: TextButton(
              onPressed: () => unawaited(
                Navigator.of(context).push<void>(
                  MaterialPageRoute(builder: (_) => EditPerson(person: person)),
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
  }

  late FakePersonsDAO persons;

  setUp(() {
    persons = FakePersonsDAO();
    final families = FakeFamiliesDAO()..families = const [family, otherFamily];
    final authBloc = MockAuthBloc();
    when(
      () => authBloc.currentUserData,
    ).thenReturn(const User(uid: 'user-id', name: 'مستخدم'));
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

  testWidgets("saving an existing person saves the family's edited address", (
    tester,
  ) async {
    await openEditor(tester, person);

    await scrollTo(tester, houseCodeField());
    await tester.enterText(houseCodeField(), '34');
    await tester.tap(find.byKey(EditObjectDataKeys.saveButton));
    await tester.pumpAndSettle();

    expect(persons.saved?.address?.houseCode, '34');
  });

  testWidgets("moving a person to another family leaves that family's "
      'address read-only', (tester) async {
    await openEditor(tester, person);

    await scrollTo(tester, find.byKey(PersonFamilyAndAddressFieldsKeys.family));
    await tester.tap(find.byKey(PersonFamilyAndAddressFieldsKeys.family));
    await tester.pumpAndSettle();
    await tester.tap(familyItem(otherFamily.id));
    await tester.pumpAndSettle();

    await scrollTo(tester, houseCodeField());

    expect(tester.widget<TextField>(houseCodeField()).enabled, isFalse);
  });
}
