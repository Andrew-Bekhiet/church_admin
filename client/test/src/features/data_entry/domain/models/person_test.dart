import 'package:church_admin/church_admin.dart';
import 'package:church_admin/src/core/services/database/gql_definintions/persons/person_command_inputs.dart';
import 'package:flutter_test/flutter_test.dart';

void main() {
  group('Person =>', () {
    test(
      'spiritDataUpToDate_whenRecordedDatesExceedConfiguredAge_returnsFalse',
      () {
        final now = DateTime(2026, 9, 9);
        final person = Person(
          id: 'person-id',
          name: 'الخادم',
          lastConfession: LastRecordedByInfo(
            time: now.subtract(const Duration(days: 31)),
          ),
          lastKodas: LastRecordedByInfo(
            time: now.subtract(const Duration(days: 30)),
          ),
        );

        expect(
          person.spiritDataUpToDate(
            maxAge: const Duration(days: 30),
            now: now,
          ),
          isFalse,
        );
      },
    );
  });

  group('a person whose gender changes', () {
    final shammas = Person(
      id: 'person-id',
      name: 'مينا',
      isShammas: true,
      shammasLevel: const ShammasLevel(
        order: 1,
        id: '00000000-0000-0000-0000-000000000001',
        name: 'أغنسطس',
      ),
    );

    test('to female tells the server, which clears the shammas fields', () {
      final female = shammas.copyWith(gender: Gender.female);

      final input = PersonCommandInputs(person: female, saved: shammas).update;

      expect(input.gender, female.gender.isMale);
    });

    test('back to male keeps being a shammas', () {
      final female = shammas.copyWith(gender: Gender.female);

      final input = PersonCommandInputs(person: shammas, saved: female).update;

      expect(
        (input.gender, input.isShammas),
        (
          shammas.gender.isMale,
          shammas.isShammas,
        ),
      );
    });
  });
}
