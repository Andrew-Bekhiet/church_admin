import 'package:church_admin/church_admin.dart';
import 'package:clock/clock.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:hive_flutter/hive_flutter.dart';
import 'package:intl/date_symbol_data_local.dart';
import 'package:mockito/annotations.dart';
import 'package:mockito/mockito.dart';

import '../../../utils.dart';
import 'home_daily_data_repository_test.mocks.dart';

@GenerateNiceMocks([MockSpec<Box<Map>>()])
void main() {
  const testVersesData = ['verse 1', 'verse 2'];
  const testSayingData = ['saying 1', 'saying 2'];
  final List<List<String>> testSneksarData = kRawSneksarData.fold(
    [[]],
    (acc, c) => [
      ...acc.take(acc.length - 1),
      if (acc.last.length < 30)
        [...acc.last, c]
      else ...[
        acc.last,
        [c],
      ],
    ],
  );

  final date = DateTime(2024, 1, 15);
  final dateKey = date.toIso8601String().split('T').first;

  tearDown(defaultTearDown);

  group('getVerse, getSaying', () {
    test('returns cached verse when available', () {
      final mockBox = MockBox();
      when(mockBox.get(dateKey)).thenReturn({'verse': 0, 'saying': 1});

      final unit = HomeDailyDataRepository(
        currentIndexes: mockBox,
        versesData: testVersesData,
        sayingData: testSayingData,
        sneksarData: testSneksarData,
        clock: Clock.fixed(date),
      );

      expect(unit.getVerse(), testVersesData[0]);
      expect(unit.getSaying(), testSayingData[1]);

      verify(mockBox.get(dateKey)).called(2);
    });

    test('generates new verse when forced', () {
      final mockBox = MockBox();

      when(mockBox.get(dateKey)).thenReturn({'verse': 0, 'saying': 1});
      when(mockBox.put(any, any)).thenAnswer((_) async {});

      final unit = HomeDailyDataRepository(
        currentIndexes: mockBox,
        versesData: testVersesData,
        sayingData: testSayingData,
        sneksarData: testSneksarData,
        clock: Clock.fixed(date),
      );

      expect(testVersesData, contains(unit.getVerse(forceRefresh: true)));
      expect(testSayingData, contains(unit.getSaying(forceRefresh: true)));

      verify(mockBox.put(dateKey, any)).called(2);
    });
  });

  group('getTodaysSneksar', () {
    test('returns correct sneksar for date', () {
      initializeDateFormatting('ar-EG');

      HomeDailyDataRepository createUnit(DateTime now) =>
          HomeDailyDataRepository(
            currentIndexes: MockBox(),
            versesData: testVersesData,
            sayingData: testSayingData,
            sneksarData: testSneksarData,
            clock: Clock.fixed(now),
          );

      for (
        var (date, i) = (DateTime(2022, 9, 11), 0);
        i < 366;
        date = date.add(const Duration(days: 1)), i++
      ) {
        final sneksar = createUnit(date).getTodaysSneksar();

        expect(sneksar, contains(kRawSneksarData[i].trim()));
      }
    });
  });

  group('_maybeGenerateIndexes', () {
    test('generates new data when cache miss', () {
      final mockBox = MockBox();

      dynamic savedValue;

      when(mockBox.get(any)).thenAnswer((_) => savedValue);
      when(
        mockBox.put(any, any),
      ).thenAnswer((i) async => savedValue = i.positionalArguments[1]);

      final unit = HomeDailyDataRepository(
        currentIndexes: mockBox,
        versesData: testVersesData,
        sayingData: testSayingData,
        sneksarData: testSneksarData,
      );

      final verse = unit.getVerse();
      final saying = unit.getSaying();

      expect(testVersesData, contains(verse));
      expect(testSayingData, contains(saying));

      verify(
        mockBox.put(DateTime.now().toIso8601String().split('T').first, any),
      ).called(1);
    });
  });
}
