import 'dart:async';

import 'package:church_admin/church_admin.dart';
import 'package:church_admin/src/features/data_entry/presentation/widgets/form_fields/address_district_street_area_fields.dart';
import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:material_symbols_icons/material_symbols_icons.dart';
import 'package:mocktail/mocktail.dart';

import '../../../../../fakes/fake_areas_dao.dart';
import '../../../../../fakes/fake_feature_flags_repo.dart';
import '../../../../../fakes/fake_logging_service.dart';
import '../../../../../fakes/fake_streets_dao.dart';
import '../../../../../fakes/mock_database_service.dart';
import '../../../../../fakes/mock_image_url_cache_service.dart';
import '../../../../../fakes/mock_viewable_object_service.dart';
import '../../../../../utils.dart';

void main() {
  const mainStreet = Street(id: 'main-street-id', name: 'شارع الجمهورية');
  const sideStreet = Street(id: 'side-street-id', name: 'شارع النصر');
  const stMarkArea = Area(id: 'st-mark-id', name: 'منطقة مارمرقس');
  const stMinaArea = Area(id: 'st-mina-id', name: 'منطقة مارمينا');

  late FakeStreetsDAO streets;
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

  Finder areaField() => find.byKey(AddressDistrictStreetAreaFieldsKeys.area);

  Future<void> chooseStreet(WidgetTester tester, Street street) async {
    await tester.tap(find.byKey(AddressDistrictStreetAreaFieldsKeys.street));
    await tester.pumpAndSettle();
    await tester.tap(listItem(street.id));
    await tester.pumpAndSettle();
  }

  setUp(() {
    streets = FakeStreetsDAO()..streets = const [mainStreet, sideStreet];
    areas = FakeAreasDAO();
    reportedAddresses = [];

    final databaseService = MockDatabaseService();
    when(() => databaseService.streets).thenReturn(streets);
    when(() => databaseService.areas).thenReturn(areas);

    final viewableObjects = MockViewableObjectService();
    when(
      () => viewableObjects.getDefaultIconFor<IImage>(any()),
    ).thenReturn(Symbols.person);

    initGlobalProviderContainer([
      featureFlagsRepoProvider.overrideWithValue(FakeFeatureFlagsRepo()),
      databaseServiceProvider.overrideWithValue(databaseService),
      loggingServiceProvider.overrideWithValue(FakeLoggingService()),
      imageUrlCacheServiceProvider.overrideWithValue(
        MockImageUrlCacheService(),
      ),
      viewableObjectServiceProvider.overrideWithValue(viewableObjects),
    ]);
  });

  tearDown(defaultTearDown);

  testWidgets('choosing a street that lies in one area fills that area', (
    tester,
  ) async {
    areas.areasByStreetId[mainStreet.id] = const [stMarkArea];
    await pumpField(tester);

    await chooseStreet(tester, mainStreet);

    expect(
      find.descendant(of: areaField(), matching: find.text(stMarkArea.name)),
      findsOneWidget,
    );
    expect(reportedAddresses.last.area, stMarkArea);
  });

  testWidgets('choosing a street that lies in several areas keeps the '
      'area the user had', (tester) async {
    areas.areasByStreetId[mainStreet.id] = const [stMarkArea, stMinaArea];
    await pumpField(tester, initialAddress: const Address(area: stMinaArea));

    await chooseStreet(tester, mainStreet);

    expect(reportedAddresses.last.street, mainStreet);
    expect(reportedAddresses.last.area, stMinaArea);
  });

  testWidgets('choosing a street that lies in several areas leaves the area '
      'empty', (tester) async {
    areas.areasByStreetId[mainStreet.id] = const [stMarkArea, stMinaArea];
    await pumpField(tester);

    await chooseStreet(tester, mainStreet);

    expect(reportedAddresses.last.street, mainStreet);
    expect(reportedAddresses.last.area, isNull);
  });

  testWidgets('choosing a street whose only area differs from the selected '
      'area replaces it', (tester) async {
    areas.areasByStreetId[mainStreet.id] = const [stMarkArea];
    await pumpField(tester, initialAddress: const Address(area: stMinaArea));

    await chooseStreet(tester, mainStreet);

    expect(reportedAddresses.last.area, stMarkArea);
  });

  testWidgets('clearing the street keeps the selected area', (tester) async {
    await pumpField(
      tester,
      initialAddress: const Address(street: mainStreet, area: stMarkArea),
    );

    await tester.tap(
      find.descendant(
        of: find.byKey(AddressDistrictStreetAreaFieldsKeys.street),
        matching: find.byTooltip('حذف القيمة'),
      ),
    );
    await tester.pumpAndSettle();

    expect(reportedAddresses.last.street, isNull);
    expect(reportedAddresses.last.area, stMarkArea);
  });

  testWidgets('a slow lookup for a street the user has moved on from does not '
      'overwrite the area of the latest street', (tester) async {
    areas.areasByStreetId[mainStreet.id] = const [stMarkArea];
    areas.areasByStreetId[sideStreet.id] = const [stMinaArea];
    final mainStreetLookup = areas.lookupGatesByStreetId[mainStreet.id] =
        Completer<void>();
    await pumpField(tester);

    await chooseStreet(tester, mainStreet);
    await chooseStreet(tester, sideStreet);
    mainStreetLookup.complete();
    await tester.pumpAndSettle();

    expect(reportedAddresses.last.street, sideStreet);
    expect(reportedAddresses.last.area, stMinaArea);
  });

  testWidgets('a failed area lookup leaves the area for the user to choose', (
    tester,
  ) async {
    areas.lookupFailure = StateError('offline');
    await pumpField(tester);

    await chooseStreet(tester, mainStreet);

    expect(reportedAddresses.last.street, mainStreet);
    expect(reportedAddresses.last.area, isNull);
  });

  testWidgets('an area the user chose while the lookup was pending is not '
      'overwritten by its result', (tester) async {
    areas.areasByStreetId[mainStreet.id] = const [stMarkArea];
    areas.pickableAreas = const [stMarkArea, stMinaArea];
    final mainStreetLookup = areas.lookupGatesByStreetId[mainStreet.id] =
        Completer<void>();
    await pumpField(tester);

    await chooseStreet(tester, mainStreet);
    await tester.tap(areaField());
    await tester.pumpAndSettle();
    await tester.tap(listItem(stMinaArea.id));
    await tester.pumpAndSettle();
    mainStreetLookup.complete();
    await tester.pumpAndSettle();

    expect(reportedAddresses.last.area, stMinaArea);
  });
}
