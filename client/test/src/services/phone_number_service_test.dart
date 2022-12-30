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
      expect(unit.formatInternational('201234567890'), '+201234567890');
    },
  );
}
