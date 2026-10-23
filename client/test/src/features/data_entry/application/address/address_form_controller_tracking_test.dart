import 'package:church_admin/church_admin.dart';
import 'package:fake_async/fake_async.dart';
import 'package:flutter_test/flutter_test.dart';

import 'address_form_controller_fixture.dart';

void main() {
  const houseLocation = Point(30.0444, 31.2357);
  const savedLocation = Point(30.0500, 31.2400);
  const mainStreet = Street(id: 'main-street-id', name: 'شارع الجمهورية');
  const stMarkArea = Area(id: 'st-mark-id', name: 'منطقة مارمرقس');
  const stMinaArea = Area(id: 'st-mina-id', name: 'منطقة مارمينا');
  const typingPause = AddressFormController.houseNumberGeocodingDebounce;

  late AddressFormControllerFixture fixture;

  Iterable<AnalyticsEvent> trackedOf<E extends AnalyticsEvent>() =>
      fixture.analytics.trackedEvents.whereType<E>();

  AddressFormController controllerWithSavedLocation() => fixture.controllerFor(
    const Address(area: stMarkArea, geolocation: savedLocation),
  );

  setUp(() {
    fixture = AddressFormControllerFixture();
    fixture.geocoder.locationOfEveryAddress = houseLocation;
    fixture.areas
      ..areasByStreetId[mainStreet.id] = const [stMarkArea, stMinaArea]
      ..areaIdsContainingPoint[houseLocation] = {stMinaArea.id};
  });

  group('filling the area', () {
    test(
      'from a street that lies in one area is tracked with that street and area',
      () async {
        fixture.areas.areasByStreetId[mainStreet.id] = const [stMarkArea];
        fixture.controllerFor().chooseStreet(mainStreet);
        await pumpEventQueue();

        expect(trackedOf<AddressAreaFill>().single.properties, {
          'source': AddressAutofillSource.singleAreaStreet.name,
          'street_id': mainStreet.id,
          'area_id': stMarkArea.id,
        });
      },
    );

    test(
      'from a typed house number is tracked as coming from the geocoded house',
      () {
        fakeAsync((async) {
          final controller = fixture.controllerFor(
            const Address(street: mainStreet),
          );

          controller.houseCode.textController.text = '12';
          controller.houseCodeTyped('12');
          async
            ..elapse(typingPause)
            ..flushMicrotasks();

          expect(trackedOf<AddressAreaFill>().single.properties, {
            'source': AddressAutofillSource.geocodedHouseNumber.name,
            'street_id': mainStreet.id,
            'area_id': stMinaArea.id,
          });
        });
      },
    );

    test(
      'locating the geocoded house of an unlocated address is tracked',
      () async {
        fixture
            .controllerFor(
              const Address(houseCode: '12'),
            )
            .chooseStreet(mainStreet);
        await pumpEventQueue();

        expect(trackedOf<AddressLocationFill>().single.properties, {
          'source': AddressAutofillSource.geocodedHouseNumber.name,
          'street_id': mainStreet.id,
        });
      },
    );
  });

  group('the suggested address', () {
    test('is tracked as shown with the parts it suggests', () async {
      fixture.areas.areasAtPoint[houseLocation] = stMarkArea;

      await fixture.controllerFor().useLocation(houseLocation);

      expect(trackedOf<AddressSuggestionShow>().single.properties, {
        'has_area': true,
        'has_street': false,
        'has_district': false,
      });
    });

    test('is tracked as accepted when used', () async {
      fixture.areas.areasAtPoint[houseLocation] = stMarkArea;
      final controller = fixture.controllerFor();
      await controller.useLocation(houseLocation);

      controller.useSuggestedAddress();

      expect(trackedOf<AddressSuggestionAccept>(), hasLength(1));
    });
  });

  group('the stale location reminder', () {
    test('is tracked as shown once however many place edits follow', () {
      controllerWithSavedLocation()
        ..area.setValue(stMinaArea)
        ..substreetName.setValue('شارع جانبي');

      expect(trackedOf<StaleLocationReminderShow>(), hasLength(1));
    });

    test('is tracked as accepted when a new location is picked', () async {
      final controller = controllerWithSavedLocation()
        ..area.setValue(stMinaArea);

      await controller.useLocation(houseLocation);

      expect(trackedOf<StaleLocationReminderAccept>(), hasLength(1));
    });
  });
}
