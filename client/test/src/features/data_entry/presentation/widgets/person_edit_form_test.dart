import 'package:church_admin/church_admin.dart';
import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:mocktail/mocktail.dart';
import 'package:riverpod/riverpod.dart';

class _FakeFeatureFlags extends Mock implements FeatureFlagsRepository {}

class _FakeImageUrlCacheService extends Mock implements ImageUrlCacheService {}

class _FakeViewableObjectService extends Mock implements ViewableObjectService {
  @override
  IconData getDefaultIconFor<T extends IImage>([T? imageObject]) => Icons.group;
}

void main() {
  setUp(() {
    final flags = _FakeFeatureFlags();
    when(() => flags.enablePersonNationalId).thenReturn(false);
    globalProviderContainer = ProviderContainer(
      overrides: [
        featureFlagsRepoProvider.overrideWithValue(flags),
        imageUrlCacheServiceProvider.overrideWithValue(
          _FakeImageUrlCacheService(),
        ),
        viewableObjectServiceProvider.overrideWithValue(
          _FakeViewableObjectService(),
        ),
      ],
    );
  });

  tearDown(() => globalProviderContainer = null);

  const father = PersonType(id: 'father', name: 'أب', isFamilyAdmin: true);
  const fathersNumber = PhoneContact(
    id: 'dad-number',
    phone: '+201112223334',
    personId: 'dad',
    personTypeId: 'father',
    personType: father,
  );
  const family = Family(id: 'family', name: 'جرجس');

  Future<EditObjectController<Person>> pumpCreateForm(
    WidgetTester tester, {
    Family? withFamily,
    List<PhoneContact> familyContacts = const [],
  }) async {
    final controller = EditObjectController<Person>(
      toJson: (p) => p.toJson(),
      newObject: Person(
        id: 'new',
        name: '',
        family: withFamily,
        familyId: withFamily?.id,
      ),
      afterCreate: (_) {},
      onCreate: (p) async => p,
    );
    tester.view.physicalSize = const Size(800, 6000);
    tester.view.devicePixelRatio = 1;
    addTearDown(tester.view.reset);

    await tester.pumpWidget(
      MaterialApp(
        home: Directionality(
          textDirection: TextDirection.rtl,
          child: Scaffold(
            body: SingleChildScrollView(
              child: Form(
                key: controller.formKey,
                child: PersonEditForm(
                  controller: controller,
                  contactsController: PersonContactsController(
                    personTypes: Stream.value(const [father]),
                    streamFamily: (id) => Stream.value(
                      Family(id: id, name: 'جرجس', contacts: familyContacts),
                    ),
                  ),
                  classesAndGroupsLoaded: true,
                  withFamily: withFamily,
                ),
              ),
            ),
          ),
        ),
      ),
    );
    await tester.pumpAndSettle();

    return controller;
  }

  testWidgets(
    "creating a person in a known family shows the father's number",
    (tester) async {
      await pumpCreateForm(
        tester,
        withFamily: family,
        familyContacts: const [fathersNumber],
      );

      expect(find.text('01112223334'), findsOneWidget);
    },
  );

  testWidgets(
    'a new number row offers the family admin roles the controller loaded',
    (tester) async {
      await pumpCreateForm(tester);

      await tester.tap(find.byKey(PhoneContactsEditorKeys.addButton));
      await tester.pumpAndSettle();

      expect(find.text('الأب'), findsOneWidget);
    },
  );
}
