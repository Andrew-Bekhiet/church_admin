import 'package:church_admin/church_admin.dart';
import 'package:flutter_test/flutter_test.dart';

void main() {
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
}
