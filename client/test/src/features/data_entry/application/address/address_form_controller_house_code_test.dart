import 'dart:async';

import 'package:church_admin/church_admin.dart';
import 'package:fake_async/fake_async.dart';
import 'package:flutter_test/flutter_test.dart';

import 'address_form_controller_fixture.dart';

void main() {
  const houseLocation = Point(30.0444, 31.2357);
  const mainStreet = Street(id: 'main-street-id', name: 'شارع الجمهورية');
  const stMarkArea = Area(id: 'st-mark-id', name: 'منطقة مارمرقس');
  const stMinaArea = Area(id: 'st-mina-id', name: 'منطقة مارمينا');
  const typingPause = AddressFormController.houseNumberGeocodingDebounce;

  late AddressFormControllerFixture fixture;

  AddressFormController controllerOnMainStreet() =>
      fixture.controllerFor(const Address(street: mainStreet));

  void typeHouseCode(AddressFormController controller, String text) {
    controller.houseCode.textController.text = text;
    controller.houseCodeTyped(text);
  }

  setUp(() {
    fixture = AddressFormControllerFixture();
    fixture.geocoder.locationOfEveryAddress = houseLocation;
    fixture.areas
      ..areasByStreetId[mainStreet.id] = const [stMarkArea, stMinaArea]
      ..areaIdsContainingPoint[houseLocation] = {stMinaArea.id};
  });

  test('typing a house number fills the area containing the geocoded house '
      'once typing pauses', () {
    fakeAsync((async) {
      final controller = controllerOnMainStreet();

      typeHouseCode(controller, '12');
      async.elapse(typingPause);
      async.flushMicrotasks();

      expect(controller.area.fieldValue, stMinaArea);
    });
  });

  test('typing a house number does not fill the area before typing pauses', () {
    fakeAsync((async) {
      final controller = controllerOnMainStreet();

      typeHouseCode(controller, '12');
      async.elapse(typingPause - const Duration(milliseconds: 1));
      async.flushMicrotasks();

      expect(controller.area.fieldValue, isNull);
    });
  });

  test('typing again before the pause ends geocodes only the newer house '
      'number', () {
    fakeAsync((async) {
      final controller = controllerOnMainStreet();

      typeHouseCode(controller, '12');
      async.elapse(typingPause - const Duration(milliseconds: 1));
      typeHouseCode(controller, '14');
      async.elapse(typingPause);
      async.flushMicrotasks();

      expect(fixture.geocoder.locationRequestCount, 1);
    });
  });

  test('a house number edit that leaves the trimmed number unchanged does '
      'not geocode again', () {
    fakeAsync((async) {
      final controller = controllerOnMainStreet();
      typeHouseCode(controller, '12');
      async.elapse(typingPause);
      async.flushMicrotasks();

      typeHouseCode(controller, '12 ');
      async.elapse(typingPause);
      async.flushMicrotasks();

      expect(fixture.geocoder.locationRequestCount, 1);
    });
  });

  test('a house number typed while the previous one is being geocoded '
      'discards the late result', () {
    fakeAsync((async) {
      final controller = controllerOnMainStreet();
      final geocoding = fixture.geocoder.locationGate = Completer<void>();
      typeHouseCode(controller, '12');
      async.elapse(typingPause);
      async.flushMicrotasks();

      typeHouseCode(controller, '14');
      geocoding.complete();
      async.flushMicrotasks();

      expect(controller.area.fieldValue, isNull);
    });
  });

  test('clearing the house number geocodes nothing', () {
    fakeAsync((async) {
      final controller = fixture.controllerFor(
        const Address(street: mainStreet, houseCode: '12'),
      );

      typeHouseCode(controller, '');
      async.elapse(typingPause);
      async.flushMicrotasks();

      expect(fixture.geocoder.locationRequestCount, 0);
    });
  });

  test('typing a house number without a street geocodes nothing', () {
    fakeAsync((async) {
      final controller = fixture.controllerFor();

      typeHouseCode(controller, '12');
      async.elapse(typingPause);
      async.flushMicrotasks();

      expect(fixture.geocoder.locationRequestCount, 0);
    });
  });

  test('typing a house number for a street that lies in one area geocodes '
      'nothing', () {
    fakeAsync((async) {
      fixture.areas.areasByStreetId[mainStreet.id] = const [stMarkArea];
      final controller = controllerOnMainStreet();

      typeHouseCode(controller, '12');
      async.elapse(typingPause);
      async.flushMicrotasks();

      expect(fixture.geocoder.locationRequestCount, 0);
    });
  });

  test('choosing a street cancels the pending geocoding of the typed house '
      'number', () {
    fakeAsync((async) {
      final controller = controllerOnMainStreet();
      typeHouseCode(controller, '12');

      controller.chooseStreet(null);
      async.elapse(typingPause);
      async.flushMicrotasks();

      expect(fixture.geocoder.locationRequestCount, 0);
    });
  });

  test('loading a new baseline cancels the pending geocoding of the typed '
      'house number', () {
    fakeAsync((async) {
      final controller = controllerOnMainStreet();
      typeHouseCode(controller, '12');

      controller.loadAsNewBaseline(null);
      async.elapse(typingPause);
      async.flushMicrotasks();

      expect(fixture.geocoder.locationRequestCount, 0);
    });
  });

  test('a failed geocoding of the typed house number leaves the area '
      'empty', () {
    fakeAsync((async) {
      fixture.geocoder.locationFailure = StateError('offline');
      final controller = controllerOnMainStreet();

      typeHouseCode(controller, '12');
      async.elapse(typingPause);
      async.flushMicrotasks();

      expect(controller.area.fieldValue, isNull);
    });
  });

  test('disposing the controller cancels the pending geocoding', () {
    fakeAsync((async) {
      final controller = controllerOnMainStreet();
      typeHouseCode(controller, '12');

      controller.dispose();
      async.elapse(typingPause);
      async.flushMicrotasks();

      expect(fixture.geocoder.locationRequestCount, 0);
    });
  });
}
