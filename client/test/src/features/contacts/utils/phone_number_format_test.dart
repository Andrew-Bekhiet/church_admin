import 'package:church_admin/church_admin.dart';
import 'package:flutter_test/flutter_test.dart';

void main() {
  group('Searching for a typed number', () {
    test('a national number is searched without its leading zero', () {
      expect(PhoneNumberFormat.searchFragment('0100123'), '100123');
    });

    test('spaces, dashes, dots and brackets are ignored', () {
      expect(PhoneNumberFormat.searchFragment('(0100) 123-45.6'), '100123456');
    });

    test('an international number is searched as typed', () {
      expect(PhoneNumberFormat.searchFragment('+1 202 555'), '+1202555');
    });

    test('a 00 dialling prefix is searched as a plus', () {
      expect(PhoneNumberFormat.searchFragment('0020100'), '+20100');
    });
  });

  group('Matching a typed pattern against stored numbers', () {
    test('a number containing a national fragment matches anywhere', () {
      expect(PhoneNumberFormat.storedLikePattern('%0100%'), '%100%');
    });

    test('a number starting with a national prefix starts with +20', () {
      expect(PhoneNumberFormat.storedLikePattern('0100%'), '+20100%');
    });

    test('a number starting with an international prefix keeps it', () {
      expect(PhoneNumberFormat.storedLikePattern('+1202%'), '+1202%');
    });

    test('a number ending in digits matches the same ending', () {
      expect(PhoneNumberFormat.storedLikePattern('%4567'), '%4567');
    });
  });
}
