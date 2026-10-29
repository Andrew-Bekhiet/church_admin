import 'package:church_admin/church_admin.dart';
import 'package:flutter_test/flutter_test.dart';

import '../../../../fakes/fake_areas_dao.dart';
import '../../../../fakes/fake_districts_dao.dart';
import '../../../../fakes/fake_geocoder.dart';
import '../../../../fakes/fake_logging_service.dart';
import '../../../../fakes/fake_persons_dao.dart';
import '../../../../fakes/fake_photo_uploader.dart';
import '../../../../fakes/fake_streets_dao.dart';
import '../../../../fakes/in_memory_families_dao.dart';
import '../../../../fakes/recording_analytics_provider.dart';

class PersonFormControllerFixture {
  static const Area shubra = Area(id: 'shubra', name: 'شبرا');
  static const Area maadi = Area(id: 'maadi', name: 'المعادي');
  static const Street nileStreet = Street(id: 'nile', name: 'شارع النيل');
  static const Service primary = Service(id: 'primary', name: 'ابتدائي');
  static const Service kindergarten = Service(id: 'kg', name: 'حضانة');
  static const Service primaryServedByMe = Service(
    id: 'primary',
    name: 'ابتدائي',
    userCanEdit: true,
  );

  final FakePersonsDAO persons = FakePersonsDAO();
  final FakePhotoUploader photos = FakePhotoUploader();
  final InMemoryFamiliesDAO families = InMemoryFamiliesDAO();
  final RecordingAnalyticsProvider analytics = RecordingAnalyticsProvider();
  late final AnalyticsService analyticsService = AnalyticsService([
    analytics,
  ], FakeLoggingService());

  User? currentUser = const User(
    uid: 'me',
    name: 'خادم',
  );

  PersonFormController controllerFor(PersonEditIntent intent) {
    final areas = FakeAreasDAO();
    final streets = FakeStreetsDAO();
    final districts = FakeDistrictsDAO();
    final controller = PersonFormController(
      intent: intent,
      persons: persons,
      families: families,
      photoUploader: photos,
      currentUser: currentUser,
      analyticsService: analyticsService,
      addressServices: AddressFormServices(
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
        analytics: analyticsService,
      ),
    );
    addTearDown(() {
      if (!controller.isDisposed) controller.dispose();
    });

    return controller;
  }

  PersonFormController controllerOfUpdate(Person person) =>
      controllerFor(UpdatePerson(person: person));

  Future<PersonFormController> controllerOfLoadedUpdate(
    Person person, {
    Person? saved,
  }) async {
    final controller = controllerOfUpdate(person);
    persons.respondWithSavedMemberships(saved);
    await pumpEventQueue();

    return controller;
  }

  Future<PersonFormController> controllerOfServantMovingOutOfSight(
    Person stored,
  ) async {
    currentUser = const User(
      uid: 'me',
      name: 'خادم',
      adminOn: [AdminOnData(permissionId: 'grant', service: primaryServedByMe)],
    );
    final controller = await controllerOfLoadedUpdate(
      stored.copyWith(services: const [primaryServedByMe]),
    );
    controller.memberships.selectServices({kindergarten});

    return controller;
  }
}
