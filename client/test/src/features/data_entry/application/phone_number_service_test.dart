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

  const service = PhoneNumberService();

  group('typed Egyptian numbers are stored as E.164', () {
    const cases = <({String description, String typed, String stored})>[
      (
        description: 'with the leading zero',
        typed: '01001234567',
        stored: '+201001234567',
      ),
      (
        description: 'without the leading zero',
        typed: '1001234567',
        stored: '+201001234567',
      ),
      (
        description: 'already international',
        typed: '+201001234567',
        stored: '+201001234567',
      ),
      (
        description: 'prefixed with 00 instead of +',
        typed: '00201001234567',
        stored: '+201001234567',
      ),
      (
        description: 'separated by spaces',
        typed: '0100 123 4567',
        stored: '+201001234567',
      ),
    ];

    for (final c in cases) {
      test('a number ${c.description}', () {
        final stored = service.toE164(c.typed);

        expect(stored, c.stored);
      });
    }
  });

  test('a foreign international number keeps its own country code', () {
    final stored = service.toE164('+1 415 555 2671');

    expect(stored, '+14155552671');
  });

  for (final junk in ['wefcascfdew', '0123', '']) {
    test('the input "$junk" is rejected', () {
      final stored = service.toE164(junk);

      expect(stored, isNull);
    });
  }

  test('an Egyptian number is shown in national format', () {
    final shown = service.display('+201001234567');

    expect(shown, '01001234567');
  });

  test('a non-Egyptian number is shown in international format', () {
    final shown = service.display('+14155552671');

    expect(shown, '+14155552671');
  });

  test('an unparseable value is shown as it was stored', () {
    final shown = service.display('not a number');

    expect(shown, 'not a number');
  });

  test('a ten-digit number typed without the leading zero is Egyptian', () {
    final valid = service.validate('1001234567');

    expect(valid, isTrue);
  });

  test('a number prefixed with 00 keeps its own country code', () {
    final stored = service.toE164('001 415 555 2671');

    expect(stored, '+14155552671');
  });
}
