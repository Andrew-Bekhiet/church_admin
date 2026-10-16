import 'package:church_admin/church_admin.dart';
import 'package:material_ui/material_ui.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:material_symbols_icons/material_symbols_icons.dart';
import 'package:mocktail/mocktail.dart';

import '../../../../../fakes/fake_feature_flags_repo.dart';
import '../../../../../fakes/mock_image_url_cache_service.dart';
import '../../../../../fakes/mock_viewable_object_service.dart';
import '../../../../../utils.dart';
import '../../../application/address/address_form_controller_fixture.dart';

void main() {
  const houseLocation = Point(30.0444, 31.2357);
  const pickedLocation = Point(30.0500, 31.2400);
  const mainStreet = Street(id: 'main-street-id', name: 'شارع الجمهورية');
  const stMarkArea = Area(id: 'st-mark-id', name: 'منطقة مارمرقس');
  const stMinaArea = Area(id: 'st-mina-id', name: 'منطقة مارمينا');
  const locatedAddress = Address(houseCode: '12', geolocation: houseLocation);

  late AddressFormControllerFixture fixture;
  late AddressFormController form;
  late int mapOpenings;

  Finder listItem(String id) => find.byWidgetPredicate(
    (widget) => switch (widget) {
      ViewableObjectWidget(object: ViewableWithID(id: final objectId)) =>
        objectId == id,
      _ => false,
    },
  );

  Finder textInput(Key key) => find.descendant(
    of: find.byKey(key),
    matching: find.byType(TextField),
  );

  Future<void> pumpSection(
    WidgetTester tester, {
    Address? initialAddress,
    Point? locationOnMap,
  }) async {
    form = fixture.controllerFor(initialAddress);
    await tester.pumpWidget(
      materialAppWithThemeAndLocale()(
        Scaffold(
          body: SingleChildScrollView(
            child: AddressFormSection(
              form: form,
              onChooseLocationOnMap: (_) async {
                mapOpenings++;

                return locationOnMap;
              },
            ),
          ),
        ),
      ),
    );
  }

  Future<void> chooseStreet(WidgetTester tester) async {
    await tester.tap(find.byKey(AddressFormPlaceFieldsKeys.street));
    await tester.pumpAndSettle();
    await tester.tap(listItem(mainStreet.id));
    await tester.pumpAndSettle();
  }

  Future<void> typeHouseCode(WidgetTester tester, String text) async {
    await tester.enterText(
      textInput(AddressFormPlaceFieldsKeys.houseCode),
      text,
    );
    await tester.pumpAndSettle();
  }

  setUp(() {
    fixture = AddressFormControllerFixture();
    mapOpenings = 0;
    fixture.streets.streets = const [mainStreet];
    fixture.areas
      ..areasByStreetId[mainStreet.id] = const [stMarkArea]
      ..areaIdsContainingPoint[houseLocation] = {stMinaArea.id};
    fixture.geocoder.locationOfEveryAddress = houseLocation;

    final viewableObjects = MockViewableObjectService();
    when(
      () => viewableObjects.getDefaultIconFor<IImage>(any()),
    ).thenReturn(Symbols.person);

    initGlobalProviderContainer([
      featureFlagsRepoProvider.overrideWithValue(FakeFeatureFlagsRepo()),
      imageUrlCacheServiceProvider.overrideWithValue(
        MockImageUrlCacheService(),
      ),
      viewableObjectServiceProvider.overrideWithValue(viewableObjects),
    ]);
  });

  tearDown(defaultTearDown);

  testWidgets('choosing a street that lies in one area shows that area', (
    tester,
  ) async {
    await pumpSection(tester);

    await chooseStreet(tester);

    expect(
      find.descendant(
        of: find.byKey(AddressFormPlaceFieldsKeys.area),
        matching: find.text(stMarkArea.name),
      ),
      findsOneWidget,
    );
  });

  testWidgets('typing a house number for a street that lies in several areas '
      'shows the area containing the house once typing pauses', (tester) async {
    fixture.areas.areasByStreetId[mainStreet.id] = const [
      stMarkArea,
      stMinaArea,
    ];
    await pumpSection(
      tester,
      initialAddress: const Address(street: mainStreet),
    );

    await typeHouseCode(tester, '12');
    await tester.pump(AddressFormController.houseNumberGeocodingDebounce);
    await tester.pumpAndSettle();

    expect(form.area.fieldValue, stMinaArea);
  });

  testWidgets('the house number field keeps focus when the geocoded house '
      'fills the area', (tester) async {
    fixture.areas.areasByStreetId[mainStreet.id] = const [
      stMarkArea,
      stMinaArea,
    ];
    await pumpSection(
      tester,
      initialAddress: const Address(street: mainStreet),
    );

    await typeHouseCode(tester, '12');
    await tester.pump(AddressFormController.houseNumberGeocodingDebounce);
    await tester.pumpAndSettle();

    expect(form.houseCode.focusNode.hasFocus, isTrue);
  });

  testWidgets('picking a location on the map marks the location as chosen', (
    tester,
  ) async {
    await pumpSection(tester, locationOnMap: pickedLocation);

    await tester.tap(find.byKey(AddressFormSectionKeys.location));
    await tester.pumpAndSettle();

    expect(find.text('تم تحديد الموقع'), findsOneWidget);
  });

  testWidgets('the location control is announced as a tappable "الموقع"', (
    tester,
  ) async {
    final semantics = tester.ensureSemantics();
    await pumpSection(tester);

    expect(
      tester.getSemantics(find.bySemanticsLabel('الموقع')),
      matchesSemantics(
        label: 'الموقع',
        hasTapAction: true,
        hasFocusAction: true,
        isFocusable: true,
      ),
    );
    semantics.dispose();
  });

  testWidgets('accepting the suggestion for a picked location shows the area '
      'whose bounds contain it', (tester) async {
    fixture.areas.areasAtPoint[pickedLocation] = stMarkArea;
    await pumpSection(tester, locationOnMap: pickedLocation);
    await tester.tap(find.byKey(AddressFormSectionKeys.location));
    await tester.pumpAndSettle();

    await tester.tap(find.text('استخدام العنوان المقترح'));
    await tester.pumpAndSettle();

    expect(
      find.descendant(
        of: find.byKey(AddressFormPlaceFieldsKeys.area),
        matching: find.text(stMarkArea.name),
      ),
      findsOneWidget,
    );
  });

  testWidgets('changing the house number of a located address reminds the '
      'user to move the location', (tester) async {
    await pumpSection(tester, initialAddress: locatedAddress);

    await typeHouseCode(tester, '14');

    expect(find.byKey(LocationUpdateReminderCardKeys.card), findsOneWidget);
  });

  testWidgets('confirming the location is still right dismisses the reminder', (
    tester,
  ) async {
    await pumpSection(tester, initialAddress: locatedAddress);
    await typeHouseCode(tester, '14');

    await tester.ensureVisible(
      find.byKey(LocationUpdateReminderCardKeys.keepLocation),
    );
    await tester.tap(find.byKey(LocationUpdateReminderCardKeys.keepLocation));
    await tester.pumpAndSettle();

    expect(find.byKey(LocationUpdateReminderCardKeys.card), findsNothing);
  });

  testWidgets('updating the location from the reminder picks it on the map', (
    tester,
  ) async {
    await pumpSection(
      tester,
      initialAddress: locatedAddress,
      locationOnMap: pickedLocation,
    );
    await typeHouseCode(tester, '14');

    await tester.ensureVisible(
      find.byKey(LocationUpdateReminderCardKeys.updateLocation),
    );
    await tester.tap(find.byKey(LocationUpdateReminderCardKeys.updateLocation));
    await tester.pumpAndSettle();

    expect(form.geolocation.fieldValue, pickedLocation);
  });

  testWidgets('a read-only address shows no reminder for a changed place', (
    tester,
  ) async {
    await pumpSection(tester, initialAddress: locatedAddress);
    await typeHouseCode(tester, '14');
    form.markReadOnly();
    await tester.pumpAndSettle();

    expect(find.byKey(LocationUpdateReminderCardKeys.card), findsNothing);
  });

  testWidgets('a required address shows what is missing once validated', (
    tester,
  ) async {
    fixture.required = true;
    await pumpSection(tester);

    await form.validate();
    await tester.pumpAndSettle();

    expect(find.text(AddressFieldError.streetRequired.message), findsOneWidget);
    expect(find.text(AddressFieldError.areaRequired.message), findsOneWidget);
  });

  testWidgets('a read-only address does not open the street selection', (
    tester,
  ) async {
    await pumpSection(tester);
    form.markReadOnly();
    await tester.pumpAndSettle();

    await tester.tap(find.byKey(AddressFormPlaceFieldsKeys.street));
    await tester.pumpAndSettle();

    expect(listItem(mainStreet.id), findsNothing);
  });

  testWidgets('a read-only address does not open the map', (tester) async {
    await pumpSection(tester, locationOnMap: pickedLocation);
    form.markReadOnly();
    await tester.pumpAndSettle();

    await tester.tap(find.byKey(AddressFormSectionKeys.location));
    await tester.pumpAndSettle();

    expect(mapOpenings, 0);
  });

  testWidgets('a read-only address does not accept typing', (tester) async {
    await pumpSection(tester);
    form.markReadOnly();
    await tester.pumpAndSettle();

    await tester.enterText(
      textInput(AddressFormPlaceFieldsKeys.houseCode),
      '12',
    );

    expect(form.houseCode.fieldValue, isEmpty);
  });

  testWidgets('the preview shows the address as it is typed', (tester) async {
    await pumpSection(tester);

    await typeHouseCode(tester, '12');

    expect(
      find.descendant(
        of: find.byType(AddressPreview),
        matching: find.text('12'),
      ),
      findsOneWidget,
    );
  });

  testWidgets('loading a new baseline shows the loaded address in the '
      'fields', (tester) async {
    await pumpSection(tester);

    form.loadAsNewBaseline(const Address(houseCode: '31', street: mainStreet));
    await tester.pumpAndSettle();

    expect(
      tester
          .widget<TextField>(textInput(AddressFormPlaceFieldsKeys.houseCode))
          .controller
          ?.text,
      '31',
    );
  });
}
