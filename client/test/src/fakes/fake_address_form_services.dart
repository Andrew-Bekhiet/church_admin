import 'package:church_admin/church_admin.dart';

import 'fake_areas_dao.dart';
import 'fake_districts_dao.dart';
import 'fake_geocoder.dart';
import 'fake_logging_service.dart';
import 'fake_streets_dao.dart';
import 'recording_analytics_provider.dart';

abstract final class FakeAddressFormServices {
  static AddressFormServices withNothingToSuggest({
    FakeAreasDAO? areas,
    FakeStreetsDAO? streets,
    FakeDistrictsDAO? districts,
  }) {
    final effectiveAreas = areas ?? FakeAreasDAO();
    final effectiveStreets = streets ?? FakeStreetsDAO();
    final effectiveDistricts = districts ?? FakeDistrictsDAO();

    return AddressFormServices(
      autofill: AddressAutofill(
        areas: effectiveAreas,
        streets: effectiveStreets,
        districts: effectiveDistricts,
        geocoder: FakeGeocoder(),
      ),
      places: AddressPlaceCatalog(
        areas: effectiveAreas,
        streets: effectiveStreets,
        districts: effectiveDistricts,
      ),
      logging: FakeLoggingService(),
      analytics: AnalyticsService(
        [RecordingAnalyticsProvider()],
        FakeLoggingService(),
      ),
    );
  }
}
