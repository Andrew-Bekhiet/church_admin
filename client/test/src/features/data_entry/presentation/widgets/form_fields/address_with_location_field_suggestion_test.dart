import 'dart:async';

import 'package:church_admin/church_admin.dart';
import 'package:church_admin/src/features/data_entry/presentation/widgets/form_fields/address_location_tap_field.dart';
import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';
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
  const pickedLocation = Point(30.0444, 31.2357);
  const downtown = District(id: 'downtown-id', name: 'وسط البلد');
  const stMarkArea = Area(id: 'st-mark-id', name: 'منطقة مارمرقس');
  const mainStreet = Street(id: 'main-street-id', name: 'شارع الجمهورية');
  const sideStreet = Street(id: 'side-street-id', name: 'شارع النصر');

  late FakeGeocoder geocoder;
  late FakeAreasDAO areas;
  late FakeStreetsDAO streets;
  late FakeDistrictsDAO districts;
  late List<Address> reportedAddresses;
  late List<Point> locationsToPick;

  Future<void> tapLocationField(WidgetTester tester) async {
    await tester.tap(find.byType(AddressLocationTapField));
    await tester.pumpAndSettle();
  }

  Future<void> pickLocation(WidgetTester tester) async {
    await tester.pumpWidget(
      materialAppWithThemeAndLocale()(
        Scaffold(
          body: SingleChildScrollView(
            child: AddressWithLocationField(
              initialAddress: null,
              onAddressChanged: reportedAddresses.add,
              onEditLocation: (_) async => locationsToPick.removeAt(0),
            ),
          ),
        ),
      ),
    );

    await tapLocationField(tester);
  }

  Future<void> acceptSuggestion(WidgetTester tester) async {
    await tester.tap(find.text('استخدام العنوان المقترح'));
    await tester.pumpAndSettle();
  }

  setUp(() {
    geocoder = FakeGeocoder();
    areas = FakeAreasDAO();
    streets = FakeStreetsDAO();
    districts = FakeDistrictsDAO();
    reportedAddresses = [];
    locationsToPick = [pickedLocation];

    final metadata = MockMetadataDAO();
    when(() => metadata.districts).thenReturn(districts);
    final databaseService = MockDatabaseService();
    when(() => databaseService.areas).thenReturn(areas);
    when(() => databaseService.streets).thenReturn(streets);
    when(() => databaseService.metadata).thenReturn(metadata);

    initGlobalProviderContainer([
      featureFlagsRepoProvider.overrideWithValue(FakeFeatureFlagsRepo()),
      databaseServiceProvider.overrideWithValue(databaseService),
      loggingServiceProvider.overrideWithValue(FakeLoggingService()),
      geocoderProvider.overrideWithValue(geocoder),
      imageUrlCacheServiceProvider.overrideWithValue(
        MockImageUrlCacheService(),
      ),
      viewableObjectServiceProvider.overrideWithValue(
        MockViewableObjectService(),
      ),
    ]);
  });

  tearDown(defaultTearDown);

  testWidgets('accepting the suggestion for a picked location fills the '
      'district found by the name the geocoder reported', (tester) async {
    districts.districtsByName[downtown.name] = downtown;
    geocoder.addressUnderEveryLocation = const Address(
      district: District(id: '', name: 'وسط البلد'),
    );
    await pickLocation(tester);

    await acceptSuggestion(tester);

    expect(reportedAddresses.last.district, downtown);
  });

  testWidgets('picking a location suggests the area whose bounds contain it', (
    tester,
  ) async {
    areas.areasAtPoint[pickedLocation] = stMarkArea;

    await pickLocation(tester);

    expect(find.textContaining(stMarkArea.name), findsOneWidget);
  });

  testWidgets('accepting the suggestion for a picked location fills the area '
      'whose bounds contain it', (tester) async {
    areas.areasAtPoint[pickedLocation] = stMarkArea;
    await pickLocation(tester);

    await acceptSuggestion(tester);

    expect(reportedAddresses.last.area, stMarkArea);
  });

  testWidgets('a street near the picked location is suggested rather than the '
      'street matching the reported road name', (tester) async {
    streets.streetsNearPoint[pickedLocation] = [mainStreet];
    streets.streetsByName['النصر'] = sideStreet;
    geocoder.addressUnderEveryLocation = Address(
      street: Street(id: '', name: sideStreet.name),
    );
    await pickLocation(tester);

    await acceptSuggestion(tester);

    expect(reportedAddresses.last.street, mainStreet);
  });

  testWidgets('with no street near the picked location the street is found by '
      'the reported road name', (tester) async {
    streets.streetsByName['النصر'] = sideStreet;
    geocoder.addressUnderEveryLocation = Address(
      street: Street(id: '', name: sideStreet.name),
    );
    await pickLocation(tester);

    await acceptSuggestion(tester);

    expect(reportedAddresses.last.street, sideStreet);
  });

  testWidgets('among several streets near the picked location the one named '
      'like the reported road is suggested', (tester) async {
    streets.streetsNearPoint[pickedLocation] = [mainStreet, sideStreet];
    geocoder.addressUnderEveryLocation = Address(
      street: Street(id: '', name: sideStreet.name),
    );
    await pickLocation(tester);

    await acceptSuggestion(tester);

    expect(reportedAddresses.last.street, sideStreet);
  });

  testWidgets('streets near the picked location outside the matched area are '
      'not suggested', (tester) async {
    areas.areasAtPoint[pickedLocation] = stMarkArea;
    streets.streetsNearPoint[pickedLocation] = [mainStreet, sideStreet];
    streets.streetIdsByAreaId[stMarkArea.id] = {sideStreet.id};
    await pickLocation(tester);

    await acceptSuggestion(tester);

    expect(reportedAddresses.last.street, sideStreet);
  });

  testWidgets('accepting the suggestion keeps the location the user picked', (
    tester,
  ) async {
    districts.districtsByName[downtown.name] = downtown;
    geocoder.addressUnderEveryLocation = const Address(
      geolocation: Point(30.0450, 31.2360),
      district: District(id: '', name: 'وسط البلد'),
    );
    await pickLocation(tester);

    await acceptSuggestion(tester);

    expect(reportedAddresses.last.geolocation, pickedLocation);
  });

  testWidgets('the street found by the reported road name must belong to the '
      'matched area', (tester) async {
    areas.areasAtPoint[pickedLocation] = stMarkArea;
    streets.streetsByName['النصر'] = sideStreet;
    streets.streetIdsByAreaId[stMarkArea.id] = {mainStreet.id};
    geocoder.addressUnderEveryLocation = Address(
      street: Street(id: '', name: sideStreet.name),
    );
    await pickLocation(tester);

    await acceptSuggestion(tester);

    expect(reportedAddresses.last.street, isNull);
  });

  testWidgets('a reported road named only by its prefix suggests no street', (
    tester,
  ) async {
    streets.streetsByName[''] = mainStreet;
    streets.streetsByName['شارع'] = mainStreet;
    districts.districtsByName[downtown.name] = downtown;
    geocoder.addressUnderEveryLocation = const Address(
      street: Street(id: '', name: 'شارع'),
      district: District(id: '', name: 'وسط البلد'),
    );
    await pickLocation(tester);

    await acceptSuggestion(tester);

    expect(reportedAddresses.last.street, isNull);
  });

  testWidgets('a suggestion computed for a location the user has since '
      'replaced is dropped', (tester) async {
    const laterLocation = Point(30.0500, 31.2400);
    const stMinaArea = Area(id: 'st-mina-id', name: 'منطقة مارمينا');
    areas.areasAtPoint[pickedLocation] = stMarkArea;
    areas.areasAtPoint[laterLocation] = stMinaArea;
    final earlierLookup = geocoder.gatesByLocation[pickedLocation] =
        Completer<void>();
    locationsToPick = [pickedLocation, laterLocation];
    await pickLocation(tester);
    await tapLocationField(tester);

    earlierLookup.complete();
    await tester.pumpAndSettle();
    await acceptSuggestion(tester);

    expect(reportedAddresses.last.area, stMinaArea);
  });

  testWidgets('a failed lookup for a picked location shows no suggestion', (
    tester,
  ) async {
    areas.lookupFailure = StateError('offline');

    await pickLocation(tester);

    expect(find.text('استخدام العنوان المقترح'), findsNothing);
  });
}
