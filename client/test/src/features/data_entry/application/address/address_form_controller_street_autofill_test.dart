import 'dart:async';

import 'package:church_admin/church_admin.dart';
import 'package:flutter_test/flutter_test.dart';

import 'address_form_controller_fixture.dart';

void main() {
  const houseLocation = Point(30.0444, 31.2357);
  const mainStreet = Street(id: 'main-street-id', name: 'شارع الجمهورية');
  const sideStreet = Street(id: 'side-street-id', name: 'شارع النصر');
  const stMarkArea = Area(id: 'st-mark-id', name: 'منطقة مارمرقس');
  const stMinaArea = Area(id: 'st-mina-id', name: 'منطقة مارمينا');
  const otherArea = Area(id: 'other-id', name: 'منطقة أخرى');

  late AddressFormControllerFixture fixture;

  setUp(() {
    fixture = AddressFormControllerFixture();
    fixture.geocoder.locationOfEveryAddress = houseLocation;
    fixture.areas
      ..areasByStreetId[mainStreet.id] = const [stMarkArea, stMinaArea]
      ..areaIdsContainingPoint[houseLocation] = {stMinaArea.id};
  });

  group('choosing a street', () {
    test('that lies in one area fills that area', () async {
      fixture.areas.areasByStreetId[mainStreet.id] = const [stMarkArea];
      final controller = fixture.controllerFor()..chooseStreet(mainStreet);
      await pumpEventQueue();

      expect(controller.area.fieldValue, stMarkArea);
    });

    test('that lies in one area does not geocode the house', () async {
      fixture.areas.areasByStreetId[mainStreet.id] = const [stMarkArea];
      final controller = fixture.controllerFor(const Address(houseCode: '12'))
        ..chooseStreet(mainStreet);
      await pumpEventQueue();

      expect(controller.geolocation.fieldValue, isNull);
    });

    test('that lies in several areas, with a house number typed, fills the '
        'area containing the geocoded house', () async {
      final controller = fixture.controllerFor(const Address(houseCode: '12'))
        ..chooseStreet(mainStreet);
      await pumpEventQueue();

      expect(controller.area.fieldValue, stMinaArea);
    });

    test('that lies in several areas, with a house number typed, locates the '
        'house', () async {
      final controller = fixture.controllerFor(const Address(houseCode: '12'))
        ..chooseStreet(mainStreet);
      await pumpEventQueue();

      expect(controller.geolocation.fieldValue, houseLocation);
    });

    test('that lies in several areas, without a house number, leaves the area '
        'empty', () async {
      final controller = fixture.controllerFor()..chooseStreet(mainStreet);
      await pumpEventQueue();

      expect(controller.area.fieldValue, isNull);
    });

    test('keeps the location the address already had', () async {
      const savedLocation = Point(30.0500, 31.2400);
      final controller = fixture.controllerFor(
        const Address(houseCode: '12', geolocation: savedLocation),
      )..chooseStreet(mainStreet);
      await pumpEventQueue();

      expect(controller.geolocation.fieldValue, savedLocation);
    });

    test('keeps an area that is one of the areas of the street', () async {
      final controller = fixture.controllerFor(
        const Address(houseCode: '12', area: stMarkArea),
      )..chooseStreet(mainStreet);
      await pumpEventQueue();

      expect(controller.area.fieldValue, stMarkArea);
    });

    test('replaces an area that is not one of the areas of the street with '
        'the area containing the geocoded house', () async {
      final controller = fixture.controllerFor(
        const Address(houseCode: '12', area: otherArea),
      )..chooseStreet(mainStreet);
      await pumpEventQueue();

      expect(controller.area.fieldValue, stMinaArea);
    });

    test('whose geocoded house lies outside every area of the street leaves '
        'the area empty', () async {
      fixture.areas.areaIdsContainingPoint.clear();
      final controller = fixture.controllerFor(const Address(houseCode: '12'))
        ..chooseStreet(mainStreet);
      await pumpEventQueue();

      expect(controller.area.fieldValue, isNull);
    });

    test(
      'whose house number cannot be geocoded leaves the area empty',
      () async {
        fixture.geocoder.locationOfEveryAddress = null;
        final controller = fixture.controllerFor(
          const Address(houseCode: '12'),
        )..chooseStreet(mainStreet);
        await pumpEventQueue();

        expect(controller.area.fieldValue, isNull);
      },
    );

    test('keeps an area the user chose while the lookup was pending', () async {
      final lookup = fixture.areas.lookupGatesByStreetId[mainStreet.id] =
          Completer<void>();
      final controller = fixture.controllerFor(const Address(houseCode: '12'))
        ..chooseStreet(mainStreet);
      controller.area.setValue(otherArea);
      lookup.complete();
      await pumpEventQueue();

      expect(controller.area.fieldValue, otherArea);
    });

    test(
      'discards the lookup of a street the user replaced meanwhile',
      () async {
        fixture.areas
          ..areasByStreetId[mainStreet.id] = const [stMarkArea]
          ..areasByStreetId[sideStreet.id] = const [otherArea];
        final firstLookup = fixture.areas.lookupGatesByStreetId[mainStreet.id] =
            Completer<void>();
        final controller = fixture.controllerFor()
          ..chooseStreet(mainStreet)
          ..chooseStreet(sideStreet);
        firstLookup.complete();
        await pumpEventQueue();

        expect(controller.area.fieldValue, otherArea);
      },
    );

    test('clearing the street fills no area', () async {
      final controller = fixture.controllerFor(
        const Address(street: mainStreet),
      )..chooseStreet(null);
      await pumpEventQueue();

      expect(controller.area.fieldValue, isNull);
    });

    test('whose area lookup fails keeps the street and leaves the area '
        'empty', () async {
      fixture.areas.lookupFailure = StateError('offline');
      final controller = fixture.controllerFor(const Address(houseCode: '12'))
        ..chooseStreet(mainStreet);
      await pumpEventQueue();

      expect(controller.toAddress().street, mainStreet);
      expect(controller.area.fieldValue, isNull);
    });

    test('whose geocoding fails keeps the street and leaves the area and '
        'location empty', () async {
      fixture.geocoder.locationFailure = StateError('offline');
      final controller = fixture.controllerFor(const Address(houseCode: '12'))
        ..chooseStreet(mainStreet);
      await pumpEventQueue();

      expect(controller.toAddress().street, mainStreet);
      expect(controller.area.fieldValue, isNull);
      expect(controller.geolocation.fieldValue, isNull);
    });
  });
}
