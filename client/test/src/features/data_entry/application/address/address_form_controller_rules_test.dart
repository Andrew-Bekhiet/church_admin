import 'package:church_admin/church_admin.dart';
import 'package:flutter_test/flutter_test.dart';

import 'address_form_controller_fixture.dart';

void main() {
  const mainStreet = Street(id: 'main-street-id', name: 'شارع الجمهورية');
  const stMarkArea = Area(id: 'st-mark-id', name: 'منطقة مارمرقس');
  const sideStreet = Street(id: 'side-street-id', name: 'شارع النصر');
  const completeAddress = Address(
    street: mainStreet,
    area: stMarkArea,
    houseCode: '12',
  );

  late AddressFormControllerFixture fixture;

  setUp(() => fixture = AddressFormControllerFixture());

  group('area and street', () {
    test(
      'are optional while the address is untouched and not required',
      () async {
        final controller = fixture.controllerFor();

        expect(await controller.validate(), isTrue);
      },
    );

    test('are demanded when the address is required', () async {
      fixture.required = true;
      final controller = fixture.controllerFor();

      await controller.validate();

      expect(controller.street.value.error, AddressFieldError.streetRequired);
      expect(controller.area.value.error, AddressFieldError.areaRequired);
    });

    test('are demanded once the address is edited', () async {
      final controller = fixture.controllerFor();
      controller.houseCode.setValue('12');

      await controller.validate();

      expect(controller.street.value.error, AddressFieldError.streetRequired);
      expect(controller.area.value.error, AddressFieldError.areaRequired);
    });

    test('stop being demanded when the edit is undone', () async {
      final controller = fixture.controllerFor();
      controller.houseCode.setValue('12');
      controller.houseCode.setValue('');

      expect(await controller.validate(), isTrue);
    });

    test('are satisfied by an address that has both', () async {
      fixture.required = true;
      final controller = fixture.controllerFor(completeAddress);

      expect(await controller.validate(), isTrue);
    });

    test('are demanded when the requirement starts applying later', () async {
      final controller = fixture.controllerFor();
      fixture.required = true;

      expect(await controller.validate(), isFalse);
    });

    test('become demanded by a house-code-only edit of an address without '
        'them', () async {
      final controller = fixture.controllerFor(const Address(houseCode: '12'));
      controller.houseCode.setValue('14');

      expect(await controller.validate(), isFalse);
    });
  });

  group('number fields', () {
    test('reject text that is not a whole number', () async {
      final controller = fixture.controllerFor(completeAddress);
      controller.storeyNumber.textController.text = 'abc';

      await controller.validate();

      expect(
        controller.storeyNumber.value.error,
        AddressFieldError.invalidNumber,
      );
    });

    test('accept a whole number', () async {
      final controller = fixture.controllerFor(completeAddress);
      controller.apartmentNumber.textController.text = '7';

      expect(await controller.validate(), isTrue);
    });
  });

  group('while read-only', () {
    test('choosing a street changes nothing', () async {
      final controller = fixture.controllerFor(completeAddress);
      controller.markReadOnly();

      controller.chooseStreet(sideStreet);
      await pumpEventQueue();

      expect(controller.toAddress(), completeAddress);
    });

    test('picking a location changes nothing', () async {
      final controller = fixture.controllerFor(completeAddress);
      controller.markReadOnly();

      await controller.useLocation(const Point(30.05, 31.24));

      expect(controller.toAddress(), completeAddress);
      expect(controller.suggestion.value, isA<NoAddressSuggestion>());
    });

    test('using a suggestion changes nothing', () async {
      fixture.areas.areasAtPoint[const Point(30.05, 31.24)] = stMarkArea;
      final controller = fixture.controllerFor();
      await controller.useLocation(const Point(30.05, 31.24));
      controller.markReadOnly();

      controller.useSuggestedAddress();

      expect(controller.area.fieldValue, isNull);
    });
  });
}
