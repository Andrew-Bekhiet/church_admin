import 'package:church_admin/church_admin.dart';
import 'package:flutter_test/flutter_test.dart';

void main() {
  const translator = AshFilterTranslator();
  final recordedTime = LastRecordedByInfoFields().time;
  final day = DateTime(2024, 5, 6);
  final dayOnTheWire = dateToString(day);

  Json onOrAfter(FieldMetadata field) => translator.toFilterInput([
    Filter(field, DateTimeOperator.isOnOrAfter, day),
  ]);

  group(
    'a field the server keeps as a calendar date is compared by its day',
    () {
      test('the birthdate', () {
        expect(onOrAfter(PersonFields().birthdate), {
          'birthdate': {'greaterThanOrEqual': dayOnTheWire},
        });
      });

      test('the day of the last confession', () {
        expect(
          onOrAfter(PersonFields().lastConfession.redirectTo(recordedTime)),
          {
            'lastConfessionDay': {'greaterThanOrEqual': dayOnTheWire},
          },
        );
      });

      test('the day of the last kodas', () {
        expect(onOrAfter(PersonFields().lastKodas.redirectTo(recordedTime)), {
          'lastKodasDay': {'greaterThanOrEqual': dayOnTheWire},
        });
      });

      test('the day of a kodas record', () {
        expect(
          onOrAfter(PersonFields().kodasHistory.redirectTo(recordedTime)),
          {
            'kodases': {
              'time': {'greaterThanOrEqual': dayOnTheWire},
            },
          },
        );
      });

      test('the day of a confession record', () {
        expect(
          onOrAfter(PersonFields().confessionHistory.redirectTo(recordedTime)),
          {
            'confessions': {
              'time': {'greaterThanOrEqual': dayOnTheWire},
            },
          },
        );
      });

      test('the marriage date of a family', () {
        expect(onOrAfter(FamilyFields().marriageDate), {
          'marriageDate': {'greaterThanOrEqual': dayOnTheWire},
        });
      });
    },
  );

  test('a range of calendar dates is sent as the two days', () {
    final range = DateTimeRange(start: day, end: DateTime(2024, 7, 8));

    expect(
      translator.toFilterInput([
        Filter(PersonFields().birthdate, DateRangeOperator.isBetween, range),
      ]),
      {
        'and': [
          {
            'birthdate': {'greaterThanOrEqual': dateToString(range.start)},
          },
          {
            'birthdate': {'lessThanOrEqual': dateToString(range.end)},
          },
        ],
      },
    );
  });

  test('a moment the server keeps with its time is sent in UTC', () {
    expect(onOrAfter(PersonFields().callHistory.redirectTo(recordedTime)), {
      'calls': {
        'time': {'greaterThanOrEqual': day.toUtc().toIso8601String()},
      },
    });
  });
}
