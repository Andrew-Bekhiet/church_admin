import 'package:church_admin/church_admin.dart';
import 'package:clock/clock.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:intl/date_symbol_data_local.dart';
import 'package:mockito/annotations.dart';
import 'package:mockito/mockito.dart';

import '../../../fakes/fake_box.dart';
import '../../../utils.dart';
import 'home_daily_data_repository_test.mocks.dart';

@GenerateNiceMocks([
  MockSpec<AdvancedQueryParser>(),
  MockSpec<SyncKVStore<Map>>(),
])
void main() {
  late MockAdvancedQueryParser mockAdvancedQueryParser;

  const testVersesData = ['verse 1', 'verse 2'];
  const testSayingData = ['saying 1', 'saying 2'];
  final manyVerses = List.generate(1000, (index) => 'verse $index');
  final manySayings = List.generate(1000, (index) => 'saying $index');
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

  setUp(() {
    mockAdvancedQueryParser = MockAdvancedQueryParser();
    when(
      mockAdvancedQueryParser.createPaginatableStream(any),
    ).thenAnswer((_) => PaginatableStream.simple(factory: (_) async* {}));
  });

  tearDown(defaultTearDown);

  group('getVerse, getSaying', () {
    test('returns cached verse when available', () {
      final mockBox = MockSyncKVStore();
      when(mockBox.get(dateKey)).thenReturn({'verse': 0, 'saying': 1});

      final unit = HomeDailyDataRepository(
        advancedQueryParser: mockAdvancedQueryParser,
        currentIndexes: mockBox,
        versesData: testVersesData,
        sayingData: testSayingData,
        sneksarData: testSneksarData,
        clock: Clock.fixed(date),
      );

      expect(unit.getVerse(), testVersesData[0]);
      expect(unit.getSaying(), testSayingData[1]);
    });

    test('a forced refresh is what the next plain read returns', () {
      final store = FakeSyncKVStore<Map>()
        ..put(dateKey, {'verse': 0, 'saying': 1});

      final unit = HomeDailyDataRepository(
        advancedQueryParser: mockAdvancedQueryParser,
        currentIndexes: store,
        versesData: manyVerses,
        sayingData: manySayings,
        sneksarData: testSneksarData,
        clock: Clock.fixed(date),
      );

      final refreshedVerse = unit.getVerse(forceRefresh: true);
      final refreshedSaying = unit.getSaying(forceRefresh: true);

      expect(unit.getVerse(), refreshedVerse);
      expect(unit.getSaying(), refreshedSaying);
    });
  });

  group('getTodaysSneksar', () {
    test('returns correct sneksar for date', () async {
      await initializeDateFormatting('ar-EG');

      HomeDailyDataRepository createUnit(DateTime now) =>
          HomeDailyDataRepository(
            advancedQueryParser: mockAdvancedQueryParser,
            currentIndexes: MockSyncKVStore(),
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

  group('picking for the day', () {
    test(
      'a pick made on a cache miss stays the same for the rest of the day',
      () {
        final unit = HomeDailyDataRepository(
          advancedQueryParser: mockAdvancedQueryParser,
          currentIndexes: FakeSyncKVStore<Map>(),
          versesData: manyVerses,
          sayingData: manySayings,
          sneksarData: testSneksarData,
          clock: Clock.fixed(date),
        );

        final verse = unit.getVerse();
        final saying = unit.getSaying();

        expect(manyVerses, contains(verse));
        expect(manySayings, contains(saying));
        expect(unit.getVerse(), verse);
        expect(unit.getSaying(), saying);
      },
    );
  });
}
