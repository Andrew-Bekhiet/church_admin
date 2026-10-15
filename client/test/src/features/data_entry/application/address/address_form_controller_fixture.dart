import 'package:church_admin/church_admin.dart';
import 'package:flutter_test/flutter_test.dart';

import '../../../../fakes/fake_areas_dao.dart';
import '../../../../fakes/fake_districts_dao.dart';
import '../../../../fakes/fake_geocoder.dart';
import '../../../../fakes/fake_logging_service.dart';
import '../../../../fakes/fake_streets_dao.dart';

class AddressFormControllerFixture {
  final FakeGeocoder geocoder = FakeGeocoder();
  final FakeAreasDAO areas = FakeAreasDAO();
  final FakeStreetsDAO streets = FakeStreetsDAO();
  final FakeDistrictsDAO districts = FakeDistrictsDAO();

  bool required = false;

  AddressFormController controllerFor([Address? initialAddress]) {
    final controller = AddressFormController(
      initialAddress: initialAddress,
      isRequired: () => required,
      services: AddressFormServices(
        autofill: AddressAutofill(
          areas: areas,
          streets: streets,
          districts: districts,
          geocoder: geocoder,
        ),
        places: AddressPlaceCatalog(
          areas: areas,
          streets: streets,
          districts: districts,
        ),
        logging: FakeLoggingService(),
      ),
    );
    addTearDown(() {
      if (!controller.isDisposed) controller.dispose();
    });

    return controller;
  }
}
