import 'package:church_admin/church_admin.dart';
import 'package:flutter_test/flutter_test.dart';

import 'address_form_controller_fixture.dart';

void main() {
  late AddressFormControllerFixture fixture;

  setUp(() => fixture = AddressFormControllerFixture());

  group('the house code', () {
    test('refuses Arabic-Indic digits', () async {
      final controller = fixture.controllerFor();
      controller.houseCode.setValue('١٢٣');

      await controller.validate();

      expect(
        controller.houseCode.value.error,
        AddressFieldError.nonEnglishDigits,
      );
    });

    test('refuses Persian digits', () async {
      final controller = fixture.controllerFor();
      controller.houseCode.setValue('۱۲۳');

      await controller.validate();

      expect(
        controller.houseCode.value.error,
        AddressFieldError.nonEnglishDigits,
      );
    });

    for (final houseCode in ['12345', '12أ', '7B', 'عمارة 5']) {
      test('accepts "$houseCode"', () async {
        final controller = fixture.controllerFor();
        controller.houseCode.setValue(houseCode);

        await controller.validate();

        expect(controller.houseCode.value.error, isNull);
      });
    }
  });

  test(
    'the storey number refuses Arabic-Indic digits with their own error',
    () async {
      final controller = fixture.controllerFor();
      controller.storeyNumber.setValue('٣');

      await controller.validate();

      expect(
        controller.storeyNumber.value.error,
        AddressFieldError.nonEnglishDigits,
      );
    },
  );

  test(
    'the apartment number refuses Arabic-Indic digits with their own error',
    () async {
      final controller = fixture.controllerFor();
      controller.apartmentNumber.setValue('٣');

      await controller.validate();

      expect(
        controller.apartmentNumber.value.error,
        AddressFieldError.nonEnglishDigits,
      );
    },
  );
}
