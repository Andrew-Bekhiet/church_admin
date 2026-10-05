import 'package:church_admin/church_admin.dart';
import 'package:flutter_test/flutter_test.dart';

void main() {
  group('Searching for a typed number', () {
    test('a national number is searched without its leading zero', () {
      expect(PhoneNumberFormat.normalizeForSearch('0100123'), '100123');
    });

    test('spaces, dashes, dots and brackets are ignored', () {
      expect(
        PhoneNumberFormat.normalizeForSearch('(0100) 123-45.6'),
        '100123456',
      );
    });

    test('an international number is searched as typed', () {
      expect(PhoneNumberFormat.normalizeForSearch('+1 202 555'), '+1202555');
    });

    test('a 00 dialling prefix is searched as a plus', () {
      expect(PhoneNumberFormat.normalizeForSearch('0020100'), '+20100');
    });
  });
}
