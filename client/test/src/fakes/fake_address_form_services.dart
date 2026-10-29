import 'package:church_admin/church_admin.dart';

import 'fake_areas_dao.dart';
import 'fake_districts_dao.dart';
import 'fake_geocoder.dart';
import 'fake_logging_service.dart';
import 'fake_streets_dao.dart';
import 'recording_analytics_provider.dart';

abstract final class FakeAddressFormServices {
  static AddressFormServices withNothingToSuggest() {
    final areas = FakeAreasDAO();
    final streets = FakeStreetsDAO();
    final districts = FakeDistrictsDAO();

    return AddressFormServices(
      autofill: AddressAutofill(
        areas: areas,
        streets: streets,
        districts: districts,
        geocoder: FakeGeocoder(),
      ),
      places: AddressPlaceCatalog(
        areas: areas,
        streets: streets,
        districts: districts,
      ),
      logging: FakeLoggingService(),
      analytics: AnalyticsService(
        [RecordingAnalyticsProvider()],
        FakeLoggingService(),
      ),
    );
  }
}
