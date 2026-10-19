import 'package:church_admin/church_admin.dart';
import 'package:flutter_test/flutter_test.dart';

void main() {
  group('$HomeBirthdays preview', () {
    test('is empty when nobody has a birthday', () {
      const birthdays = HomeBirthdays(names: []);

      expect(birthdays.preview, isEmpty);
    });

    test('joins three names with the arabic comma', () {
      const names = ['ann', 'ben', 'cy'];
      const birthdays = HomeBirthdays(names: names);

      expect(birthdays.preview, '${names[0]}، ${names[1]}، ${names[2]}');
    });

    test('keeps the first three names and an ellipsis for a fourth', () {
      const names = ['ann', 'ben', 'cy', 'dee'];
      const birthdays = HomeBirthdays(names: names);

      expect(birthdays.preview, '${names[0]}، ${names[1]}، ${names[2]}، ...');
    });
  });

  group('$HomeBirthdays emptiness', () {
    test('is empty without names', () {
      expect(const HomeBirthdays(names: []).isEmpty, isTrue);
    });

    test('is not empty with a name', () {
      expect(const HomeBirthdays(names: ['ann']).isEmpty, isFalse);
    });
  });
}
