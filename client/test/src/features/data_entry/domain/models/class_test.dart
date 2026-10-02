import 'package:church_admin/church_admin.dart';
import 'package:flutter_test/flutter_test.dart';

void main() {
  final third = StudyYear(order: 3, name: 'ثالثة');
  final fourth = StudyYear(order: 4, name: 'رابعة');

  Class class$({StudyYear? from, StudyYear? to}) => Class(
    id: 'class-id',
    name: 'فصل',
    studyYear: from,
    serviceStudyYear: from?.order,
    studyYearTo: to,
    serviceStudyYearTo: to?.order,
  );

  group('Class study year range =>', () {
    test('a class without an end year is saved as a single-year class', () {
      final input = class$(from: third).toInsertInput();

      expect((input.serviceStudyYear, input.serviceStudyYearTo), (3, 3));
    });

    test('a class spanning study years names both ends of its range', () {
      expect(
        class$(from: third, to: fourth).studyYearRangeName,
        'ثالثة - رابعة',
      );
    });

    test('a class ending at its own study year is named by that year', () {
      expect(class$(from: third, to: third).studyYearRangeName, 'ثالثة');
    });

    test('widening a single-year class saves its new end year', () {
      final singleYearClass = class$(from: third, to: third);

      final input = class$(
        from: third,
        to: fourth,
      ).toUpdateInput(oldObject: singleYearClass);

      expect(input.serviceStudyYearTo, 4);
    });
  });
}
