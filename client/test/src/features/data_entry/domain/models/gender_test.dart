import 'package:church_admin/church_admin.dart';
import 'package:flutter_test/flutter_test.dart';

void main() {
  group('a gender read from the database boolean', () {
    for (final (isMale, gender) in [
      (true, Gender.male),
      (false, Gender.female),
      (null, Gender.any),
    ]) {
      test('$isMale reads as $gender and writes back as $isMale', () {
        expect(Gender.fromIsMale(isMale), gender);
        expect(gender.isMale, isMale);
      });
    }
  });

  group('two genders overlap', () {
    test('when they are the same', () {
      expect(Gender.female.overlaps(Gender.female), isTrue);
    });

    test('when either one is any', () {
      expect(Gender.any.overlaps(Gender.male), isTrue);
      expect(Gender.female.overlaps(Gender.any), isTrue);
    });

    test('never when one is male and the other female', () {
      expect(Gender.male.overlaps(Gender.female), isFalse);
    });
  });

  group('a person read from json', () {
    test('takes its gender from the database boolean', () {
      final person = Person.fromJson(const {
        'id': 'p',
        'name': 'n',
        'gender': false,
      });

      expect(person.gender, Gender.female);
    });

    test('writes its gender back as the database boolean', () {
      final person = Person(id: 'p', name: 'n', gender: Gender.female);

      expect(person.toJson()['gender'], isFalse);
    });
  });
}
