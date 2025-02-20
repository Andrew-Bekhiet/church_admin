import 'package:bloc_test/bloc_test.dart';
import 'package:church_admin/church_admin.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:mockito/annotations.dart';
import 'package:mockito/mockito.dart';

import '../../../../utils.dart';
import 'home_daily_data_bloc_test.mocks.dart';

@GenerateNiceMocks([MockSpec<HomeDailyDataRepository>()])
void main() {
  late MockHomeDailyDataRepository repository;

  setUp(() => repository = MockHomeDailyDataRepository());

  tearDown(defaultTearDown);

  group('HomeDailyDataBloc', () {
    group('LoadHomeDailyData', () {
      setUp(() {
        when(repository.getVerse()).thenReturn('test verse');
        when(repository.getTodaysSneksar()).thenReturn('test sneksar');
        when(repository.getSaying()).thenReturn('test saying');
      });

      blocTest<HomeDailyDataBloc, HomeDailyDataState>(
        'emits [HomeDailyDataLoaded] with initial data',
        build: () => HomeDailyDataBloc(homeDailyDataRepository: repository),
        wait: Duration.zero,
        expect:
            () => [
              const HomeDailyDataLoaded(
                data: HomeDailyData(
                  verse: 'test verse',
                  sneksar: 'test sneksar',
                  saying: 'test saying',
                ),
              ),
            ],
        verify: (_) {
          verify(repository.getVerse()).called(1);
          verify(repository.getTodaysSneksar()).called(1);
          verify(repository.getSaying()).called(1);
        },
      );
    });

    group('HomeDailyDataGetNew', () {
      setUp(() {
        when(
          repository.getVerse(forceRefresh: true),
        ).thenReturn('new test verse');
        when(
          repository.getSaying(forceRefresh: true),
        ).thenReturn('new test saying');
        when(repository.getVerse()).thenReturn('test verse');
        when(repository.getTodaysSneksar()).thenReturn('test sneksar');
        when(repository.getSaying()).thenReturn('test saying');
      });

      blocTest<HomeDailyDataBloc, HomeDailyDataState>(
        'updates data when requesting new data',
        build: () => HomeDailyDataBloc(homeDailyDataRepository: repository),
        seed:
            () => const HomeDailyDataLoaded(
              data: HomeDailyData(
                verse: 'test verse',
                sneksar: 'test sneksar',
                saying: 'test saying',
              ),
            ),
        act:
            (bloc) =>
                bloc
                  ..add(const HomeDailyDataGetNew(HomeDailyDataType.verse))
                  ..add(const HomeDailyDataGetNew(HomeDailyDataType.saying)),
        expect:
            () => [
              const HomeDailyDataLoaded(
                data: HomeDailyData(
                  verse: 'new test verse',
                  sneksar: 'test sneksar',
                  saying: 'test saying',
                ),
              ),
              const HomeDailyDataLoaded(
                data: HomeDailyData(
                  verse: 'new test verse',
                  sneksar: 'test sneksar',
                  saying: 'new test saying',
                ),
              ),
            ],
        verify: (_) {
          verify(repository.getVerse(forceRefresh: true)).called(1);
          verify(repository.getSaying(forceRefresh: true)).called(1);
        },
      );
    });
  });
}
