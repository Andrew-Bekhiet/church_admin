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
  const savedAddress = Address(area: stMarkArea, geolocation: savedLocation);

  late AddressFormControllerFixture fixture;

  Matcher areaFillOf(
    AddressAutofillSource source, {
    required Street street,
    required Area area,
  }) => isA<AddressAreaFill>()
      .having((event) => event.autofillSource, 'autofillSource', source)
      .having((event) => event.streetId, 'streetId', street.id)
      .having((event) => event.areaId, 'areaId', area.id);

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

        expect(fixture.analytics.trackedEventsOf<AddressAreaFill>(), [
          areaFillOf(
            AddressAutofillSource.singleAreaStreet,
            street: mainStreet,
            area: stMarkArea,
          ),
        ]);
      },
    );

    test(
      'from a street whose one area the form already holds is not tracked',
      () async {
        fixture.areas.areasByStreetId[mainStreet.id] = const [stMarkArea];
        fixture
            .controllerFor(const Address(area: stMarkArea))
            .chooseStreet(mainStreet);
        await pumpEventQueue();

        expect(fixture.analytics.trackedEventsOf<AddressAreaFill>(), isEmpty);
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

          expect(fixture.analytics.trackedEventsOf<AddressAreaFill>(), [
            areaFillOf(
              AddressAutofillSource.geocodedHouseNumber,
              street: mainStreet,
              area: stMinaArea,
            ),
          ]);
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

        expect(fixture.analytics.trackedEventsOf<AddressLocationFill>(), [
          isA<AddressLocationFill>()
              .having(
                (event) => event.autofillSource,
                'autofillSource',
                AddressAutofillSource.geocodedHouseNumber,
              )
              .having((event) => event.streetId, 'streetId', mainStreet.id),
        ]);
      },
    );
  });

  group('the suggested address', () {
    test('is tracked as shown with the parts it suggests', () async {
      fixture.areas.areasAtPoint[houseLocation] = stMarkArea;

      await fixture.controllerFor().useLocation(houseLocation);

      expect(fixture.analytics.trackedEventsOf<AddressSuggestionShow>(), [
        isA<AddressSuggestionShow>()
            .having((event) => event.hasArea, 'hasArea', true)
            .having((event) => event.hasStreet, 'hasStreet', false)
            .having((event) => event.hasDistrict, 'hasDistrict', false),
      ]);
    });

    test('is tracked as accepted when used', () async {
      fixture.areas.areasAtPoint[houseLocation] = stMarkArea;
      final controller = fixture.controllerFor();
      await controller.useLocation(houseLocation);

      controller.useSuggestedAddress();

      expect(
        fixture.analytics.trackedEventsOf<AddressSuggestionAccept>(),
        hasLength(1),
      );
    });
  });

  group('the stale location reminder', () {
    test('is tracked as shown once however many place edits follow', () {
      fixture.controllerFor(savedAddress)
        ..area.setValue(stMinaArea)
        ..substreetName.setValue('شارع جانبي');

      expect(
        fixture.analytics.trackedEventsOf<StaleLocationReminderShow>(),
        hasLength(1),
      );
    });

    test(
      'is tracked as accepted when the location is updated from it',
      () async {
        final controller = fixture.controllerFor(savedAddress)
          ..area.setValue(stMinaArea);

        await controller.updateLocationFromStaleReminder(houseLocation);

        expect(
          fixture.analytics.trackedEventsOf<StaleLocationReminderAccept>(),
          hasLength(1),
        );
      },
    );

    test(
      'is not tracked as accepted when the location is picked from the field',
      () async {
        final controller = fixture.controllerFor(savedAddress)
          ..area.setValue(stMinaArea);

        await controller.useLocation(houseLocation);

        expect(
          fixture.analytics.trackedEventsOf<StaleLocationReminderAccept>(),
          isEmpty,
        );
      },
    );
  });
}
