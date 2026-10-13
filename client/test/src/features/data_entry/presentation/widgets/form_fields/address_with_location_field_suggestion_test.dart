import 'package:church_admin/church_admin.dart';
import 'package:church_admin/src/features/data_entry/presentation/widgets/form_fields/address_location_tap_field.dart';
import 'package:collection/collection.dart';
import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:mocktail/mocktail.dart';

import '../../../../../fakes/fake_districts_dao.dart';
import '../../../../../fakes/fake_feature_flags_repo.dart';
import '../../../../../fakes/fake_geocoder.dart';
import '../../../../../fakes/mock_database_service.dart';
import '../../../../../fakes/mock_image_url_cache_service.dart';
import '../../../../../fakes/mock_metadata_dao.dart';
import '../../../../../fakes/mock_viewable_object_service.dart';
import '../../../../../utils.dart';

class FakeAreasDAO extends Fake implements AreasDAO {
  final areasByName = <String, Area>{};
  final areasAtPoint = <Point, Area>{};

  @override
  PaginatableStreamBase<Area> streamAll({
    Stream<String?>? searchQuery,
    Stream<List<Filter>>? where,
    Stream<List<OrderBy>>? orderBy,
    Stream<FieldMetadata?>? secondLineField,
  }) => PaginatableStream.simple(
    factory: (_) => (where ?? Stream.value(const <Filter>[])).asyncMap((
      filters,
    ) async {
      final boundsFilter = filters.firstWhereOrNull(
        (filter) => filter.operator == PointSpatialOperator.intersects,
      );
      final name = await searchQuery?.first;

      return PaginatableStreamResponse(
        data: [
          ?boundsFilter != null
              ? areasAtPoint[boundsFilter.value]
              : areasByName[name],
        ],
      );
    }),
  );
}

class FakeStreetsDAO extends Fake implements StreetsDAO {
  final streetsByName = <String, Street>{};
  final streetsNearPoint = <Point, List<Street>>{};
  final streetIdsByAreaId = <String, Set<String>>{};

  @override
  PaginatableStreamBase<Street> streamAll({
    Stream<String?>? searchQuery,
    Stream<List<Filter>>? where,
    Stream<List<OrderBy>>? orderBy,
    Stream<FieldMetadata?>? secondLineField,
  }) => PaginatableStream.simple(
    factory: (_) => (where ?? Stream.value(const <Filter>[])).asyncMap((
      filters,
    ) async {
      final nearFilter = filters.firstWhereOrNull(
        (filter) => filter.operator is WithinDistanceOperator,
      );
      final areaFilter = filters.firstWhereOrNull(
        (filter) => filter.operator == PrimitiveOperator.eq,
      );
      final name = await searchQuery?.first;

      final candidates = nearFilter != null
          ? streetsNearPoint[nearFilter.value] ?? const <Street>[]
          : [?streetsByName[name]];

      return PaginatableStreamResponse(
        data: candidates
            .where(
              (street) =>
                  areaFilter == null ||
                  (streetIdsByAreaId[areaFilter.value]?.contains(street.id) ??
                      false),
            )
            .toList(),
      );
    }),
  );
}

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

  Future<void> pickLocation(WidgetTester tester) async {
    await tester.pumpWidget(
      materialAppWithThemeAndLocale()(
        Scaffold(
          body: SingleChildScrollView(
            child: AddressWithLocationField(
              initialAddress: null,
              onAddressChanged: reportedAddresses.add,
              onEditLocation: (_) async => pickedLocation,
            ),
          ),
        ),
      ),
    );

    await tester.tap(find.byType(AddressLocationTapField));
    await tester.pumpAndSettle();
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

    final metadata = MockMetadataDAO();
    when(() => metadata.districts).thenReturn(districts);
    final databaseService = MockDatabaseService();
    when(() => databaseService.areas).thenReturn(areas);
    when(() => databaseService.streets).thenReturn(streets);
    when(() => databaseService.metadata).thenReturn(metadata);

    initGlobalProviderContainer([
      featureFlagsRepoProvider.overrideWithValue(FakeFeatureFlagsRepo()),
      databaseServiceProvider.overrideWithValue(databaseService),
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
}
