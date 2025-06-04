import 'package:bloc_test/bloc_test.dart';
import 'package:church_admin/church_admin.dart';
import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:mockito/annotations.dart';
import 'package:mockito/mockito.dart';

import '../../../../utils.dart';
import 'home_bloc_test.mocks.dart';

@GenerateNiceMocks([
  MockSpec<HomeDailyDataRepository>(),
  MockSpec<AdvancedQueryParser>(),
  MockSpec<DatabaseService>(),
])
void main() {
  late MockHomeDailyDataRepository repository;
  late MockAdvancedQueryParser mockAdvancedQueryParser;
  late MockDatabaseService mockDatabaseService;

  setUp(() {
    repository = MockHomeDailyDataRepository();
    mockAdvancedQueryParser = MockAdvancedQueryParser();
    mockDatabaseService = MockDatabaseService();

    when(mockAdvancedQueryParser.createPaginatableStream(any))
        .thenAnswer((_) => PaginatableStream.simple(factory: (_) async* {}));

    when(mockDatabaseService.daosByType).thenReturn({
      Family: mockDatabaseService.families,
      Store: mockDatabaseService.stores,
      Person: mockDatabaseService.persons,
      Class: mockDatabaseService.classes,
      Group: mockDatabaseService.groups,
    });
  });

  tearDown(defaultTearDown);

  group('HomeDailyDataBloc', () {
    group('LoadHomeDailyData', () {
      setUp(() {
        when(repository.getVerse()).thenReturn('test verse');
        when(repository.getTodaysSneksar()).thenReturn('test sneksar');
        when(repository.getSaying()).thenReturn('test saying');
      });

      blocTest<HomeBloc, HomeState>(
        'emits [HomeDailyDataLoaded] with initial data',
        build: () => HomeBloc(
          homeDailyDataRepository: repository,
          advancedQueryParser: mockAdvancedQueryParser,
          databaseService: mockDatabaseService,
        ),
        wait: Duration.zero,
        expect: () => [
          isA<HomeState>().having(
            (s) => s.dailyData,
            'dailyData',
            const HomeDailyData(
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

      blocTest<HomeBloc, HomeState>(
        'updates data when requesting new data',
        build: () => HomeBloc(
          homeDailyDataRepository: repository,
          advancedQueryParser: mockAdvancedQueryParser,
          databaseService: mockDatabaseService,
        ),
        seed: () => HomeState(
          dailyData: const HomeDailyData(
            verse: 'test verse',
            sneksar: 'test sneksar',
            saying: 'test saying',
          ),
          pageController: PageController(),
          pages: const [],
        ),
        act: (bloc) => bloc
          ..add(const HomeDailyDataGetNew(HomeDailyDataType.verse))
          ..add(const HomeDailyDataGetNew(HomeDailyDataType.saying)),
        skip: 1,
        expect: () => [
          isA<HomeState>().having(
            (s) => s.dailyData,
            'dailyData',
            const HomeDailyData(
              verse: 'new test verse',
              sneksar: 'test sneksar',
              saying: 'test saying',
            ),
          ),
          isA<HomeState>().having(
            (s) => s.dailyData,
            'dailyData',
            const HomeDailyData(
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
