import 'dart:async';

import 'package:church_admin/church_admin.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:material_symbols_icons/material_symbols_icons.dart';
import 'package:material_ui/material_ui.dart';
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
  const mainStreet = Street(id: 'main-street-id', name: 'شارع الجمهورية');
  const sideStreet = Street(id: 'side-street-id', name: 'شارع النصر');
  const stMarkArea = Area(id: 'st-mark-id', name: 'منطقة مارمرقس');
  const stMinaArea = Area(id: 'st-mina-id', name: 'منطقة مارمينا');

  late FakeStreetsDAO streets;
  late FakeAreasDAO areas;
  late List<Address> reportedAddresses;
  late GlobalKey<FormState> formKey;

  Finder listItem(String id) => find.byWidgetPredicate(
    (widget) => switch (widget) {
      ViewableObjectWidget(object: ViewableWithID(id: final objectId)) =>
        objectId == id,
      _ => false,
    },
  );

  Future<void> pumpField(
    WidgetTester tester, {
    Address? initialAddress,
    bool required = true,
    Point? locationToPick,
  }) async {
    await tester.pumpWidget(
      materialAppWithThemeAndLocale()(
        Scaffold(
          body: SingleChildScrollView(
            child: Form(
              key: formKey,
              child: AddressWithLocationField(
                initialAddress: initialAddress,
                required: required,
                onAddressChanged: reportedAddresses.add,
                onEditLocation: (_) async => locationToPick,
              ),
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
    formKey = GlobalKey<FormState>();

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
      geocoderProvider.overrideWithValue(FakeGeocoder()),
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

  group('an optional address', () {
    const unplacedAddress = Address(houseCode: '12');

    testWidgets('left as it was saves without an area or street', (
      tester,
    ) async {
      await pumpField(tester, initialAddress: unplacedAddress, required: false);

      expect(formKey.currentState?.validate(), isTrue);
    });

    testWidgets('given a location must name its area and street', (
      tester,
    ) async {
      await pumpField(
        tester,
        initialAddress: unplacedAddress,
        required: false,
        locationToPick: const Point(30.0444, 31.2357),
      );

      await tester.tap(find.byType(AddressLocationTapField));
      await tester.pumpAndSettle();

      expect(formKey.currentState?.validate(), isFalse);
    });

    testWidgets('given a new house number must name its area and street', (
      tester,
    ) async {
      await pumpField(tester, initialAddress: unplacedAddress, required: false);

      await tester.enterText(
        find.descendant(
          of: find.byKey(AddressHouseNumberRowKeys.houseCode),
          matching: find.byType(EditableText),
        ),
        '14',
      );
      await tester.pump();

      expect(formKey.currentState?.validate(), isFalse);
    });
  });
}
