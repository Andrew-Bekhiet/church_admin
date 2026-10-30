import 'package:church_admin/church_admin.dart';
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

    test('to female stops being a shammas', () {
      final input = shammas
          .copyWith(gender: Gender.female)
          .toUpdateInput(shammas);

      expect((input.isShammas, input.shammasLevelId), (false, null));
    });

    test('back to male keeps being a shammas', () {
      final female = shammas.copyWith(gender: Gender.female);

      final input = shammas.toUpdateInput(female);

      expect(input.isShammas, isTrue);
    });
  });
}
