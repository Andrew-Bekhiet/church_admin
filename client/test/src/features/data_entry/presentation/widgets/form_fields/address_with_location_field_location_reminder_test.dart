import 'package:church_admin/church_admin.dart';
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
  const oldHouseLocation = Point(30.0444, 31.2357);
  const newHouseLocation = Point(30.0500, 31.2400);
  const locatedAddress = Address(
    houseCode: '12',
    geolocation: oldHouseLocation,
  );

  late List<Address> reportedAddresses;

  Finder reminder() => find.byKey(LocationUpdateReminderCardKeys.card);

  Future<void> pumpField(WidgetTester tester, Address initialAddress) async {
    await tester.pumpWidget(
      materialAppWithThemeAndLocale()(
        Scaffold(
          body: SingleChildScrollView(
            child: AddressWithLocationField(
              initialAddress: initialAddress,
              onAddressChanged: reportedAddresses.add,
              onEditLocation: (_) async => newHouseLocation,
            ),
          ),
        ),
      ),
    );
  }

  Future<void> typeHouseNumber(WidgetTester tester, String houseNumber) async {
    await tester.enterText(
      find.descendant(
        of: find.byKey(AddressHouseNumberRowKeys.houseCode),
        matching: find.byType(TextField),
      ),
      houseNumber,
    );
    await tester.pumpAndSettle();
  }

  Future<void> tapReminderButton(WidgetTester tester, Key key) async {
    await tester.ensureVisible(find.byKey(key));
    await tester.tap(find.byKey(key));
    await tester.pumpAndSettle();
  }

  setUp(() {
    reportedAddresses = [];

    final metadata = MockMetadataDAO();
    when(() => metadata.districts).thenReturn(FakeDistrictsDAO());
    final databaseService = MockDatabaseService();
    when(() => databaseService.areas).thenReturn(FakeAreasDAO());
    when(() => databaseService.streets).thenReturn(FakeStreetsDAO());
    when(() => databaseService.metadata).thenReturn(metadata);

    initGlobalProviderContainer([
      featureFlagsRepoProvider.overrideWithValue(FakeFeatureFlagsRepo()),
      databaseServiceProvider.overrideWithValue(databaseService),
      loggingServiceProvider.overrideWithValue(FakeLoggingService()),
      geocoderProvider.overrideWithValue(FakeGeocoder()),
      imageUrlCacheServiceProvider.overrideWithValue(
        MockImageUrlCacheService(),
      ),
      viewableObjectServiceProvider.overrideWithValue(
        MockViewableObjectService(),
      ),
    ]);
  });

  tearDown(defaultTearDown);

  testWidgets('changing the house number of a located address reminds the '
      'user to move the location, naming the house number', (tester) async {
    await pumpField(tester, locatedAddress);

    await typeHouseNumber(tester, '14');

    expect(
      find.descendant(
        of: reminder(),
        matching: find.text(AddressPlacePart.houseCode.label),
      ),
      findsOneWidget,
    );
  });

  testWidgets('moving to another flat in the same house does not remind the '
      'user to move the location', (tester) async {
    await pumpField(tester, locatedAddress);

    await tester.enterText(
      find.descendant(
        of: find.byKey(AddressApartmentDetailsRowKeys.apartmentNumber),
        matching: find.byType(TextField),
      ),
      '7',
    );
    await tester.pumpAndSettle();

    expect(reminder(), findsNothing);
  });

  testWidgets('an address with no location never reminds the user to move it', (
    tester,
  ) async {
    await pumpField(tester, const Address(houseCode: '12'));

    await typeHouseNumber(tester, '14');

    expect(reminder(), findsNothing);
  });

  testWidgets('restoring the original house number withdraws the reminder', (
    tester,
  ) async {
    await pumpField(tester, locatedAddress);
    await typeHouseNumber(tester, '14');

    await typeHouseNumber(tester, '12');

    expect(reminder(), findsNothing);
  });

  testWidgets('updating the location from the reminder reports the new '
      'location', (tester) async {
    await pumpField(tester, locatedAddress);
    await typeHouseNumber(tester, '14');

    await tapReminderButton(
      tester,
      LocationUpdateReminderCardKeys.updateLocation,
    );

    expect(reportedAddresses.last.geolocation, newHouseLocation);
  });

  testWidgets('updating the location from the reminder dismisses it', (
    tester,
  ) async {
    await pumpField(tester, locatedAddress);
    await typeHouseNumber(tester, '14');

    await tapReminderButton(
      tester,
      LocationUpdateReminderCardKeys.updateLocation,
    );

    expect(reminder(), findsNothing);
  });

  testWidgets('confirming the location is still right dismisses the reminder', (
    tester,
  ) async {
    await pumpField(tester, locatedAddress);
    await typeHouseNumber(tester, '14');

    await tapReminderButton(
      tester,
      LocationUpdateReminderCardKeys.keepLocation,
    );

    expect(reminder(), findsNothing);
  });

  testWidgets('changing the house number again after confirming the location '
      'reminds the user again', (tester) async {
    await pumpField(tester, locatedAddress);
    await typeHouseNumber(tester, '14');
    await tapReminderButton(
      tester,
      LocationUpdateReminderCardKeys.keepLocation,
    );

    await typeHouseNumber(tester, '16');

    expect(reminder(), findsOneWidget);
  });
}
