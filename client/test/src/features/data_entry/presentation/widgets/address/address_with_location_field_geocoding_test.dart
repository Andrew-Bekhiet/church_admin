import 'dart:async';

import 'package:church_admin/church_admin.dart';
import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:material_symbols_icons/material_symbols_icons.dart';
import 'package:mocktail/mocktail.dart';

import '../../../../../fakes/fake_areas_dao.dart';
import '../../../../../fakes/fake_districts_dao.dart';
import '../../../../../fakes/fake_feature_flags_repo.dart';
import '../../../../../fakes/fake_geocoder.dart';
import '../../../../../fakes/fake_logging_service.dart';
import '../../../../../fakes/fake_streets_dao.dart';
import '../../../../../fakes/mock_database_service.dart';
import '../../../../../fakes/mock_image_url_cache_service.dart';
import '../../../../../fakes/mock_metadata_dao.dart';
import '../../../../../fakes/mock_viewable_object_service.dart';
import '../../../../../utils.dart';

void main() {
  const houseLocation = Point(30.0444, 31.2357);
  const mainStreet = Street(id: 'main-street-id', name: 'شارع الجمهورية');
  const stMarkArea = Area(id: 'st-mark-id', name: 'منطقة مارمرقس');
  const stMinaArea = Area(id: 'st-mina-id', name: 'منطقة مارمينا');

  late FakeGeocoder geocoder;
  late FakeAreasDAO areas;
  late List<Address> reportedAddresses;

  Finder listItem(String id) => find.byWidgetPredicate(
    (widget) => switch (widget) {
      ViewableObjectWidget(object: ViewableWithID(id: final objectId)) =>
        objectId == id,
      _ => false,
    },
  );

  Future<void> pumpField(WidgetTester tester, {Address? initialAddress}) async {
    await tester.pumpWidget(
      materialAppWithThemeAndLocale()(
        Scaffold(
          body: SingleChildScrollView(
            child: AddressWithLocationField(
              initialAddress: initialAddress,
              onAddressChanged: reportedAddresses.add,
              onEditLocation: (_) async => null,
            ),
          ),
        ),
      ),
    );
  }

  Future<void> chooseStreet(WidgetTester tester, Street street) async {
    await tester.tap(find.byKey(AddressDistrictStreetAreaFieldsKeys.street));
    await tester.pumpAndSettle();
    await tester.tap(listItem(street.id));
    await tester.pumpAndSettle();
  }

  Future<void> typeHouseNumber(WidgetTester tester, String houseNumber) async {
    await tester.enterText(
      find.descendant(
        of: find.byKey(AddressHouseNumberRowKeys.houseCode),
        matching: find.byType(TextField),
      ),
      houseNumber,
    );
  }

  setUp(() {
    geocoder = FakeGeocoder()..locationOfEveryAddress = houseLocation;
    areas = FakeAreasDAO()
      ..areasByStreetId[mainStreet.id] = const [stMarkArea, stMinaArea]
      ..areaIdsContainingPoint[houseLocation] = {stMinaArea.id};
    reportedAddresses = [];

    final streets = FakeStreetsDAO()..streets = const [mainStreet];
    final databaseService = MockDatabaseService();
    when(() => databaseService.streets).thenReturn(streets);
    when(() => databaseService.areas).thenReturn(areas);
    final metadata = MockMetadataDAO();
    when(() => metadata.districts).thenReturn(FakeDistrictsDAO());
    when(() => databaseService.metadata).thenReturn(metadata);

    final viewableObjects = MockViewableObjectService();
    when(
      () => viewableObjects.getDefaultIconFor<IImage>(any()),
    ).thenReturn(Symbols.person);

    initGlobalProviderContainer([
      featureFlagsRepoProvider.overrideWithValue(FakeFeatureFlagsRepo()),
      databaseServiceProvider.overrideWithValue(databaseService),
      loggingServiceProvider.overrideWithValue(FakeLoggingService()),
      geocoderProvider.overrideWithValue(geocoder),
      imageUrlCacheServiceProvider.overrideWithValue(
        MockImageUrlCacheService(),
      ),
      viewableObjectServiceProvider.overrideWithValue(viewableObjects),
    ]);
  });

  tearDown(defaultTearDown);

  testWidgets('choosing a street that lies in several areas, with a house '
      'number typed, fills the area containing the geocoded house', (
    tester,
  ) async {
    await pumpField(tester, initialAddress: const Address(houseCode: '12'));

    await chooseStreet(tester, mainStreet);

    expect(reportedAddresses.last.area, stMinaArea);
  });

  testWidgets('typing a house number for a street that lies in several areas '
      'fills the area containing the geocoded house once typing pauses', (
    tester,
  ) async {
    await pumpField(tester, initialAddress: const Address(street: mainStreet));

    await typeHouseNumber(tester, '12');
    await tester.pump(AddressWithLocationField.houseNumberGeocodingDebounce);
    await tester.pumpAndSettle();

    expect(reportedAddresses.last.area, stMinaArea);
  });

  testWidgets('typing a house number does not fill the area before typing '
      'pauses', (tester) async {
    await pumpField(tester, initialAddress: const Address(street: mainStreet));

    await typeHouseNumber(tester, '12');
    await tester.pump(
      AddressWithLocationField.houseNumberGeocodingDebounce -
          const Duration(milliseconds: 1),
    );

    expect(reportedAddresses.last.area, isNull);

    await tester.pumpAndSettle(
      AddressWithLocationField.houseNumberGeocodingDebounce,
    );
  });

  testWidgets('the geocoded house fills an empty location', (tester) async {
    await pumpField(tester, initialAddress: const Address(houseCode: '12'));

    await chooseStreet(tester, mainStreet);

    expect(reportedAddresses.last.geolocation, houseLocation);
  });

  testWidgets('the geocoded house does not replace an existing location', (
    tester,
  ) async {
    const pickedLocation = Point(30.05, 31.24);
    await pumpField(
      tester,
      initialAddress: const Address(
        houseCode: '12',
        geolocation: pickedLocation,
      ),
    );

    await chooseStreet(tester, mainStreet);

    expect(reportedAddresses.last.geolocation, pickedLocation);
    expect(reportedAddresses.last.area, stMinaArea);
  });

  testWidgets('the geocoded house does not replace an area the user chose '
      'among the areas of the street', (tester) async {
    await pumpField(
      tester,
      initialAddress: const Address(houseCode: '12', area: stMarkArea),
    );

    await chooseStreet(tester, mainStreet);

    expect(reportedAddresses.last.area, stMarkArea);
  });

  testWidgets('the geocoded house replaces an area that is not one of the '
      'areas of the street', (tester) async {
    const otherArea = Area(id: 'other-id', name: 'منطقة أخرى');
    await pumpField(
      tester,
      initialAddress: const Address(houseCode: '12', area: otherArea),
    );

    await chooseStreet(tester, mainStreet);

    expect(reportedAddresses.last.area, stMinaArea);
  });

  testWidgets('a geocoded house outside every area of the street leaves the '
      'area empty', (tester) async {
    areas.areaIdsContainingPoint.clear();
    await pumpField(tester, initialAddress: const Address(houseCode: '12'));

    await chooseStreet(tester, mainStreet);

    expect(reportedAddresses.last.area, isNull);
    expect(reportedAddresses.last.geolocation, isNull);
  });

  testWidgets('a house number that cannot be geocoded leaves the area empty', (
    tester,
  ) async {
    geocoder.locationOfEveryAddress = null;
    await pumpField(tester, initialAddress: const Address(houseCode: '12'));

    await chooseStreet(tester, mainStreet);

    expect(reportedAddresses.last.area, isNull);
  });

  testWidgets('a street that lies in one area is filled without using the '
      'geocoded house', (tester) async {
    areas.areasByStreetId[mainStreet.id] = const [stMarkArea];
    areas.areaIdsContainingPoint[houseLocation] = {stMarkArea.id};
    await pumpField(tester, initialAddress: const Address(houseCode: '12'));

    await chooseStreet(tester, mainStreet);

    expect(reportedAddresses.last.area, stMarkArea);
    expect(reportedAddresses.last.geolocation, isNull);
  });

  testWidgets('choosing a street that lies in several areas without a house '
      'number leaves the area empty', (tester) async {
    await pumpField(tester);

    await chooseStreet(tester, mainStreet);

    expect(reportedAddresses.last.area, isNull);
    expect(reportedAddresses.last.geolocation, isNull);
  });

  testWidgets('the house number field keeps focus when the geocoded house '
      'fills the area', (tester) async {
    await pumpField(tester, initialAddress: const Address(street: mainStreet));
    final houseNumberField = find.descendant(
      of: find.byKey(AddressHouseNumberRowKeys.houseCode),
      matching: find.byType(EditableText),
    );

    await typeHouseNumber(tester, '12');
    await tester.pump(AddressWithLocationField.houseNumberGeocodingDebounce);
    await tester.pumpAndSettle();

    expect(
      tester.widget<EditableText>(houseNumberField).focusNode.hasFocus,
      isTrue,
    );
  });

  testWidgets('a failed area lookup leaves the fields for manual entry', (
    tester,
  ) async {
    areas.lookupFailure = StateError('offline');
    await pumpField(tester, initialAddress: const Address(houseCode: '12'));

    await chooseStreet(tester, mainStreet);

    expect(reportedAddresses.last.street, mainStreet);
    expect(reportedAddresses.last.area, isNull);
    expect(reportedAddresses.last.geolocation, isNull);
  });

  testWidgets('a failed geocoding leaves the fields for manual entry', (
    tester,
  ) async {
    geocoder.locationFailure = StateError('offline');
    await pumpField(tester, initialAddress: const Address(houseCode: '12'));

    await chooseStreet(tester, mainStreet);

    expect(reportedAddresses.last.street, mainStreet);
    expect(reportedAddresses.last.area, isNull);
    expect(reportedAddresses.last.geolocation, isNull);
  });

  testWidgets('an area the user chose while the lookup was pending is not '
      'overwritten by the geocoded house', (tester) async {
    const otherArea = Area(id: 'other-id', name: 'منطقة أخرى');
    areas.pickableAreas = const [otherArea];
    final streetLookup = areas.lookupGatesByStreetId[mainStreet.id] =
        Completer<void>();
    await pumpField(tester, initialAddress: const Address(houseCode: '12'));

    await chooseStreet(tester, mainStreet);
    await tester.tap(find.byKey(AddressDistrictStreetAreaFieldsKeys.area));
    await tester.pumpAndSettle();
    await tester.tap(listItem(otherArea.id));
    await tester.pumpAndSettle();
    streetLookup.complete();
    await tester.pumpAndSettle();

    expect(reportedAddresses.last.area, otherArea);
  });

  testWidgets('a house number edit that leaves the trimmed house number '
      'unchanged does not geocode again', (tester) async {
    await pumpField(tester, initialAddress: const Address(street: mainStreet));
    await typeHouseNumber(tester, '12');
    await tester.pump(AddressWithLocationField.houseNumberGeocodingDebounce);
    await tester.pumpAndSettle();

    await typeHouseNumber(tester, '12 ');
    await tester.pump(AddressWithLocationField.houseNumberGeocodingDebounce);
    await tester.pumpAndSettle();

    expect(geocoder.locationRequestCount, 1);
  });
}
