import 'dart:async';

import 'package:church_admin/church_admin.dart';
import 'package:flutter_test/flutter_test.dart';

import 'address_form_controller_fixture.dart';

void main() {
  const pickedLocation = Point(30.0444, 31.2357);
  const laterLocation = Point(30.0500, 31.2400);
  const downtown = District(id: 'downtown-id', name: 'وسط البلد');
  const stMarkArea = Area(id: 'st-mark-id', name: 'منطقة مارمرقس');
  const stMinaArea = Area(id: 'st-mina-id', name: 'منطقة مارمينا');
  const mainStreet = Street(id: 'main-street-id', name: 'شارع الجمهورية');
  const sideStreet = Street(id: 'side-street-id', name: 'شارع النصر');

  late AddressFormControllerFixture fixture;

  Address? suggestedAddressOf(AddressFormController controller) =>
      switch (controller.suggestion.value) {
        AddressSuggested(:final address) => address,
        NoAddressSuggestion() => null,
      };

  Future<AddressFormController> controllerThatPickedLocation([
    Address? initialAddress,
  ]) async {
    final controller = fixture.controllerFor(initialAddress);
    await controller.useLocation(pickedLocation);

    return controller;
  }

  setUp(() => fixture = AddressFormControllerFixture());

  group('picking a location', () {
    test('sets the location', () async {
      final controller = await controllerThatPickedLocation();

      expect(controller.geolocation.fieldValue, pickedLocation);
    });

    test('offers the area whose bounds contain it', () async {
      fixture.areas.areasAtPoint[pickedLocation] = stMarkArea;

      final controller = await controllerThatPickedLocation();

      expect(suggestedAddressOf(controller)?.area, stMarkArea);
    });

    test(
      'offers nothing when no area, street or text is found for it',
      () async {
        final controller = await controllerThatPickedLocation();

        expect(controller.suggestion.value, isA<NoAddressSuggestion>());
      },
    );

    test(
      'offers the district found by the name the geocoder reported',
      () async {
        fixture.districts.districtsByName[downtown.name] = downtown;
        fixture.geocoder.addressUnderEveryLocation = const Address(
          district: District(id: '', name: 'وسط البلد'),
        );

        final controller = await controllerThatPickedLocation();

        expect(suggestedAddressOf(controller)?.district, downtown);
      },
    );

    test('offers a street near it rather than the street matching the '
        'reported road name', () async {
      fixture.streets.streetsNearPoint[pickedLocation] = [mainStreet];
      fixture.streets.streetsByName['النصر'] = sideStreet;
      fixture.geocoder.addressUnderEveryLocation = Address(
        street: Street(id: '', name: sideStreet.name),
      );

      final controller = await controllerThatPickedLocation();

      expect(suggestedAddressOf(controller)?.street, mainStreet);
    });

    test('withdraws the previous suggestion', () async {
      fixture.areas.areasAtPoint[pickedLocation] = stMarkArea;
      final controller = await controllerThatPickedLocation();

      fixture.areas.lookupFailure = StateError('offline');
      await controller.useLocation(laterLocation);

      expect(controller.suggestion.value, isA<NoAddressSuggestion>());
    });

    test('whose lookup fails keeps the location and offers nothing', () async {
      fixture.areas.lookupFailure = StateError('offline');

      final controller = await controllerThatPickedLocation();

      expect(controller.geolocation.fieldValue, pickedLocation);
      expect(controller.suggestion.value, isA<NoAddressSuggestion>());
    });

    test('drops a suggestion computed for a location the user replaced '
        'meanwhile', () async {
      fixture.areas.areasAtPoint[pickedLocation] = stMarkArea;
      fixture.areas.areasAtPoint[laterLocation] = stMinaArea;
      final earlierLookup = fixture.geocoder.gatesByLocation[pickedLocation] =
          Completer<void>();
      final controller = fixture.controllerFor();

      final earlierPick = controller.useLocation(pickedLocation);
      await controller.useLocation(laterLocation);
      earlierLookup.complete();
      await earlierPick;

      expect(suggestedAddressOf(controller)?.area, stMinaArea);
    });
  });

  group('using the suggested address', () {
    test('fills the area, street and district it suggests', () async {
      fixture.areas.areasAtPoint[pickedLocation] = stMarkArea;
      fixture.streets.streetsNearPoint[pickedLocation] = [mainStreet];
      fixture.streets.streetIdsByAreaId[stMarkArea.id] = {mainStreet.id};
      fixture.districts.districtsByName[downtown.name] = downtown;
      fixture.geocoder.addressUnderEveryLocation = const Address(
        district: District(id: '', name: 'وسط البلد'),
      );
      final controller = await controllerThatPickedLocation();

      controller.useSuggestedAddress();

      expect(
        (
          controller.area.fieldValue,
          controller.street.fieldValue,
          controller.district.fieldValue,
        ),
        (stMarkArea, mainStreet, downtown),
      );
    });

    test('fills the house number it suggests', () async {
      fixture.geocoder.addressUnderEveryLocation = const Address(
        houseCode: '12',
      );
      final controller = await controllerThatPickedLocation();

      controller.useSuggestedAddress();

      expect(controller.houseCode.fieldValue, '12');
    });

    test('shows the house number it suggests in the field text', () async {
      fixture.geocoder.addressUnderEveryLocation = const Address(
        houseCode: '12',
      );
      final controller = await controllerThatPickedLocation();

      controller.useSuggestedAddress();

      expect(controller.houseCode.textController.text, '12');
    });

    test('keeps the location the user picked', () async {
      fixture.districts.districtsByName[downtown.name] = downtown;
      fixture.geocoder.addressUnderEveryLocation = const Address(
        geolocation: Point(30.0450, 31.2360),
        district: District(id: '', name: 'وسط البلد'),
      );
      final controller = await controllerThatPickedLocation();

      controller.useSuggestedAddress();

      expect(controller.geolocation.fieldValue, pickedLocation);
    });

    test(
      'keeps what the user typed that the suggestion does not cover',
      () async {
        fixture.areas.areasAtPoint[pickedLocation] = stMarkArea;
        final controller = await controllerThatPickedLocation(
          const Address(
            substreetName: 'حارة السلام',
            houseCode: '7',
            storeyNumber: 3,
            specialLandmark: 'بجوار الصيدلية',
          ),
        );

        controller.useSuggestedAddress();

        expect(
          controller.toAddress(),
          isA<Address>()
              .having((address) => address.area, 'area', stMarkArea)
              .having(
                (address) => address.substreetName,
                'substreet',
                'حارة السلام',
              )
              .having((address) => address.houseCode, 'house code', '7')
              .having((address) => address.storeyNumber, 'storey', 3)
              .having(
                (address) => address.specialLandmark,
                'landmark',
                'بجوار الصيدلية',
              ),
        );
      },
    );

    test(
      'keeps the area the user chose when the suggestion has none',
      () async {
        fixture.streets.streetsNearPoint[pickedLocation] = [mainStreet];
        final controller = await controllerThatPickedLocation(
          const Address(area: stMinaArea),
        );

        controller.useSuggestedAddress();

        expect(controller.area.fieldValue, stMinaArea);
      },
    );

    test('clears the offered suggestion', () async {
      fixture.areas.areasAtPoint[pickedLocation] = stMarkArea;
      final controller = await controllerThatPickedLocation();

      controller.useSuggestedAddress();

      expect(controller.suggestion.value, isA<NoAddressSuggestion>());
    });

    test('with nothing offered changes nothing', () async {
      final controller = await controllerThatPickedLocation(
        const Address(area: stMinaArea),
      );

      controller.useSuggestedAddress();

      expect(controller.toAddress().area, stMinaArea);
    });

    test('keeps the suggestion offered while the form is read-only', () async {
      fixture.areas.areasAtPoint[pickedLocation] = stMarkArea;
      final controller = await controllerThatPickedLocation();
      controller.markReadOnly();

      controller.useSuggestedAddress();

      expect(suggestedAddressOf(controller)?.area, stMarkArea);
    });
  });

  test('loading a new baseline drops the offered suggestion', () async {
    fixture.areas.areasAtPoint[pickedLocation] = stMarkArea;
    final controller = await controllerThatPickedLocation();

    controller.loadAsNewBaseline(null);

    expect(controller.suggestion.value, isA<NoAddressSuggestion>());
  });

  test('a suggestion computed before a reload that keeps the same location '
      'is dropped', () async {
    fixture.areas.areasAtPoint[pickedLocation] = stMarkArea;
    final lookup = fixture.geocoder.gatesByLocation[pickedLocation] =
        Completer<void>();
    final controller = fixture.controllerFor();

    final pick = controller.useLocation(pickedLocation);
    controller.loadAsNewBaseline(const Address(geolocation: pickedLocation));
    lookup.complete();
    await pick;

    expect(controller.suggestion.value, isA<NoAddressSuggestion>());
  });

  test('disposing the controller while a suggestion is being computed '
      'throws nothing', () async {
    final lookup = fixture.geocoder.gatesByLocation[pickedLocation] =
        Completer<void>();
    final controller = fixture.controllerFor();

    final pick = controller.useLocation(pickedLocation);
    controller.dispose();
    lookup.complete();

    await expectLater(pick, completes);
  });
}
