import 'package:church_admin/church_admin.dart';
import 'package:flutter_test/flutter_test.dart';

void main() {
  test(
    'PhoneNumberService => validate',
    () {
      const unit = PhoneNumberService();

      expect(unit.validate('wefcascfdew'), isFalse);

      // Egyptian way of typing:
      expect(unit.validate('01234567890'), isTrue);
      expect(unit.validate('0123456789'), isFalse);
      expect(unit.validate('012345678900'), isFalse);
      expect(unit.validate('0123456789a'), isFalse);

      // Standard way of typing:
      expect(unit.validate('+201234567890'), isTrue);
      expect(unit.validate('+20123456789'), isFalse);
      expect(unit.validate('+2012345678900'), isFalse);
      expect(unit.validate('+20123456789a'), isFalse);
    },
  );

  test(
    'PhoneNumberService => format',
    () {
      const unit = PhoneNumberService();

      expect(unit.format('0123456789'), '0123456789');
      expect(unit.format('01234567890'), '1234567890');
      expect(unit.format('012345678900'), '012345678900');

      expect(unit.format('+201234567890'), '1234567890');
    },
  );

  test(
    'PhoneNumberService => formatInternational',
    () {
      const unit = PhoneNumberService();

      // Egyptian way of typing:
      expect(unit.formatInternational('01234567890'), '+201234567890');

      // standard way of typing:
      expect(unit.formatInternational('+201234567890'), '+201234567890');
    },
  );

  group('storing a typed number', () {
    const unit = PhoneNumberService();

    test('an Egyptian number typed locally is stored in E.164', () {
      expect(unit.toE164('010 0123 4567'), '+201001234567');
    });

    test('an international number keeps its country code', () {
      expect(unit.toE164('+966 50 123 4567'), '+966501234567');
    });

    test('an invalid number cannot be stored', () {
      expect(unit.toE164('0100'), isNull);
    });
  });

  group('showing a stored number', () {
    const unit = PhoneNumberService();

    test('an Egyptian number is shown the way it is dialled locally', () {
      expect(unit.toDisplay('+201001234567'), '01001234567');
    });

    test('a foreign number is shown in international format', () {
      expect(unit.toDisplay('+966501234567'), '+966501234567');
    });
  });
}
