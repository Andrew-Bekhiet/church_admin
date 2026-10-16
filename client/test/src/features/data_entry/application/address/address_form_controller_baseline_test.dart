import 'dart:async';

import 'package:church_admin/church_admin.dart';
import 'package:flutter_test/flutter_test.dart';

import 'address_form_controller_fixture.dart';

void main() {
  const savedLocation = Point(30.0444, 31.2357);
  const newLocation = Point(30.0500, 31.2400);
  const mainStreet = Street(id: 'main-street-id', name: 'شارع الجمهورية');
  const sideStreet = Street(id: 'side-street-id', name: 'شارع النصر');
  const stMarkArea = Area(id: 'st-mark-id', name: 'منطقة مارمرقس');
  const stMinaArea = Area(id: 'st-mina-id', name: 'منطقة مارمينا');
  const locatedAddress = Address(
    id: 'saved-address-id',
    street: mainStreet,
    area: stMarkArea,
    houseCode: '12',
    geolocation: savedLocation,
  );

  late AddressFormControllerFixture fixture;

  setUp(() => fixture = AddressFormControllerFixture());

  group('toAddress', () {
    test('returns the initial address while nothing was edited', () {
      final controller = fixture.controllerFor(locatedAddress);

      expect(controller.toAddress(), locatedAddress);
    });

    test('keeps the details of the baseline that no field shows', () {
      final controller = fixture.controllerFor(locatedAddress);

      controller.houseCode.setValue('14');

      expect(controller.toAddress().id, locatedAddress.id);
    });

    test('trims the house number', () {
      final controller = fixture.controllerFor();

      controller.houseCode.setValue(' 14 ');

      expect(controller.toAddress().houseCode, '14');
    });

    test('turns an emptied house number into none', () {
      final controller = fixture.controllerFor(locatedAddress);

      controller.houseCode.setValue('');

      expect(controller.toAddress().houseCode, isNull);
    });

    test('turns an emptied storey number into none', () {
      final controller = fixture.controllerFor(const Address(storeyNumber: 3));

      controller.storeyNumber.setValue('');

      expect(controller.toAddress().storeyNumber, isNull);
    });

    test('reads the apartment number as a number', () {
      final controller = fixture.controllerFor();

      controller.apartmentNumber.setValue('7');

      expect(controller.toAddress().apartmentNumber, 7);
    });
  });

  group('wasEditedSinceBaseline', () {
    test('is false for an untouched address', () {
      final controller = fixture.controllerFor(locatedAddress);

      expect(controller.wasEditedSinceBaseline, isFalse);
    });

    test('is true once a field differs from the baseline', () {
      final controller = fixture.controllerFor(locatedAddress);

      controller.houseCode.setValue('14');

      expect(controller.wasEditedSinceBaseline, isTrue);
    });

    test('is false again once the original value is restored', () {
      final controller = fixture.controllerFor(locatedAddress);
      controller.houseCode.setValue('14');

      controller.houseCode.setValue('12');

      expect(controller.wasEditedSinceBaseline, isFalse);
    });
  });

  group('loading a new baseline', () {
    test('shows the loaded address in the fields', () {
      final controller = fixture.controllerFor(locatedAddress);
      const otherAddress = Address(
        street: sideStreet,
        area: stMinaArea,
        houseCode: '3',
        storeyNumber: 2,
      );

      controller.loadAsNewBaseline(otherAddress);

      expect(controller.toAddress(), otherAddress);
    });

    test('shows the loaded house number in the field text', () {
      final controller = fixture.controllerFor()
        ..loadAsNewBaseline(locatedAddress);

      expect(controller.houseCode.textController.text, '12');
    });

    test('does not count the loaded address as edited', () {
      final controller = fixture.controllerFor()
        ..loadAsNewBaseline(locatedAddress);

      expect(controller.wasEditedSinceBaseline, isFalse);
    });

    test('counts an edit of the loaded address as edited', () {
      final controller = fixture.controllerFor()
        ..loadAsNewBaseline(locatedAddress);

      controller.houseCode.setValue('14');

      expect(controller.wasEditedSinceBaseline, isTrue);
    });

    test('loading none empties every field', () {
      final controller = fixture.controllerFor(locatedAddress)
        ..loadAsNewBaseline(null);

      expect(controller.toAddress(), const Address());
    });

    test('loads while the form is read-only', () {
      final controller = fixture.controllerFor()
        ..markReadOnly()
        ..loadAsNewBaseline(locatedAddress);

      expect(controller.toAddress(), locatedAddress);
    });

    test('keeps the form read-only', () {
      final controller = fixture.controllerFor()
        ..markReadOnly()
        ..loadAsNewBaseline(locatedAddress);
      controller.houseCode.setValue('14');

      expect(controller.houseCode.fieldValue, '12');
    });

    test('discards the lookup of a street chosen before the load', () async {
      fixture.areas.areasByStreetId[mainStreet.id] = const [stMarkArea];
      final lookup = fixture.areas.lookupGatesByStreetId[mainStreet.id] =
          Completer<void>();
      final controller = fixture.controllerFor()
        ..chooseStreet(mainStreet)
        ..loadAsNewBaseline(const Address(street: sideStreet));
      lookup.complete();
      await pumpEventQueue();

      expect(controller.area.fieldValue, isNull);
    });

    test(
      'discards the lookup of a street the new baseline also names',
      () async {
        fixture.areas.areasByStreetId[mainStreet.id] = const [stMarkArea];
        final lookup = fixture.areas.lookupGatesByStreetId[mainStreet.id] =
            Completer<void>();
        final controller = fixture.controllerFor()
          ..chooseStreet(mainStreet)
          ..loadAsNewBaseline(const Address(street: mainStreet));
        lookup.complete();
        await pumpEventQueue();

        expect(controller.area.fieldValue, isNull);
      },
    );
  });

  group('the location reminder', () {
    test('fires when the house number changes after the saved location', () {
      final controller = fixture.controllerFor(locatedAddress);

      controller.houseCode.setValue('14');

      expect(controller.hasPlaceChangedWithStaleLocation, isTrue);
    });

    test('ignores details that do not move the house', () {
      final controller = fixture.controllerFor(locatedAddress);

      controller.apartmentNumber.setValue('7');

      expect(controller.hasPlaceChangedWithStaleLocation, isFalse);
    });

    test('never fires for an address without a saved location', () {
      final controller = fixture.controllerFor(const Address(houseCode: '12'));

      controller.houseCode.setValue('14');

      expect(controller.hasPlaceChangedWithStaleLocation, isFalse);
    });

    test('goes away once the original house number is restored', () {
      final controller = fixture.controllerFor(locatedAddress);
      controller.houseCode.setValue('14');

      controller.houseCode.setValue('12');

      expect(controller.hasPlaceChangedWithStaleLocation, isFalse);
    });

    test('goes away once the location is replaced', () async {
      final controller = fixture.controllerFor(locatedAddress);
      controller.houseCode.setValue('14');

      await controller.useLocation(newLocation);

      expect(controller.hasPlaceChangedWithStaleLocation, isFalse);
    });

    test('goes away when the user confirms the address is not stale', () {
      final controller = fixture.controllerFor(locatedAddress);
      controller.houseCode.setValue('14');

      controller.confirmAddressNotStale();

      expect(controller.hasPlaceChangedWithStaleLocation, isFalse);
    });

    test('returns when a place part changes again after confirming the '
        'address is not stale', () {
      final controller = fixture.controllerFor(locatedAddress);
      controller.houseCode.setValue('14');
      controller.confirmAddressNotStale();

      controller.houseCode.setValue('16');

      expect(controller.hasPlaceChangedWithStaleLocation, isTrue);
    });

    test('is forgotten when a new baseline is loaded', () {
      final controller = fixture.controllerFor(locatedAddress);
      controller.houseCode.setValue('14');
      controller
        ..confirmAddressNotStale()
        ..loadAsNewBaseline(locatedAddress);
      controller.houseCode.setValue('16');

      expect(controller.hasPlaceChangedWithStaleLocation, isTrue);
    });

    test('tells listeners when the user confirms the address is not stale', () {
      final controller = fixture.controllerFor(locatedAddress);
      var notifications = 0;
      controller.staleLocationInputsChanged.addListener(() => notifications++);

      controller.confirmAddressNotStale();

      expect(notifications, 1);
    });
  });
}
