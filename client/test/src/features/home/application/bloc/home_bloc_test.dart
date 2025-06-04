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
  MockSpec<PageController>(),
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

  group('HomeBloc', () {
    group('$LoadHomeSummaryAndTabs', () {
      setUp(() {
        when(repository.getVerse()).thenReturn('test verse');
        when(repository.getTodaysSneksar()).thenReturn('test sneksar');
        when(repository.getSaying()).thenReturn('test saying');
      });

      blocTest<HomeBloc, HomeState>(
        'emits [HomeState] with initial data',
        build: () => HomeBloc(
          pageController: MockPageController(),
          homeDailyDataRepository: repository,
          advancedQueryParser: mockAdvancedQueryParser,
          databaseService: mockDatabaseService,
        ),
        wait: Duration.zero,
        expect: () => [
          isA<HomeState>()
              .having(
                (s) => s.dailyData,
                'dailyData',
                const HomeDailyData(
                  verse: 'test verse',
                  sneksar: 'test sneksar',
                  saying: 'test saying',
                ),
              )
              .having(
                (s) => s.mode,
                'mode',
                HomeMode.sundaySchool,
              )
              .having(
            (s) => s.pages.map((e) => e.type),
            'pages types',
            [anything, Service, Person],
          ).having(
            (s) => s.pages.map((e) => e.objectsController),
            'every page has objectsController',
            [anything, isNotNull, isNotNull],
          ),
        ],
        verify: (_) {
          verify(repository.getVerse()).called(1);
          verify(repository.getTodaysSneksar()).called(1);
          verify(repository.getSaying()).called(1);
        },
      );
    });

    group('$HomeDailyDataGetNew', () {
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
          pageController: MockPageController(),
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

    group(
      '$HomeChangeMode and $HomeSwitchMode',
      () {
        blocTest(
          'Changes mode and emits new pages',
          build: () => HomeBloc(
            pageController: MockPageController(),
            homeDailyDataRepository: repository,
            advancedQueryParser: mockAdvancedQueryParser,
            databaseService: mockDatabaseService,
          ),
          act: (bloc) => bloc
            ..add(const HomeChangeMode(HomeMode.churchData))
            ..add(const HomeChangeMode(HomeMode.sundaySchool))
            ..add(const HomeSwitchMode())
            ..add(const HomeSwitchMode()),
          skip: 1,
          expect: () => [
            isA<HomeState>()
                .having(
              (s) => s.mode,
              'mode',
              HomeMode.churchData,
            )
                .having(
              (s) => s.pages.map((e) => e.type),
              'pages types',
              [
                anything,
                Area,
                Street,
                Family,
                Store,
                Person,
              ],
            ).having(
              (s) => s.pages.map((e) => e.objectsController),
              'every page has objectsController',
              [
                anything,
                isNotNull,
                isNotNull,
                isNotNull,
                isNotNull,
                isNotNull,
              ],
            ),
            isA<HomeState>()
                .having(
              (s) => s.mode,
              'mode',
              HomeMode.sundaySchool,
            )
                .having(
              (s) => s.pages.map((e) => e.type),
              'pages types',
              [
                anything,
                Service,
                Person,
              ],
            ).having(
              (s) => s.pages.map((e) => e.objectsController),
              'every page has objectsController',
              [
                anything,
                isNotNull,
                isNotNull,
              ],
            ),
            isA<HomeState>()
                .having(
              (s) => s.mode,
              'mode',
              HomeMode.churchData,
            )
                .having(
              (s) => s.pages.map((e) => e.type),
              'pages types',
              [
                anything,
                Area,
                Street,
                Family,
                Store,
                Person,
              ],
            ).having(
              (s) => s.pages.map((e) => e.objectsController),
              'every page has objectsController',
              [
                anything,
                isNotNull,
                isNotNull,
                isNotNull,
                isNotNull,
                isNotNull,
              ],
            ),
            isA<HomeState>()
                .having(
              (s) => s.mode,
              'mode',
              HomeMode.sundaySchool,
            )
                .having(
              (s) => s.pages.map((e) => e.type),
              'pages types',
              [
                anything,
                Service,
                Person,
              ],
            ).having(
              (s) => s.pages.map((e) => e.objectsController),
              'every page has objectsController',
              [
                anything,
                isNotNull,
                isNotNull,
              ],
            ),
          ],
        );
      },
    );
    group(
      '$HomeSwitchPageListType',
      () {
        blocTest(
          'Switches page list type and preserves it across modes',
          build: () => HomeBloc(
            pageController: MockPageController(),
            homeDailyDataRepository: repository,
            advancedQueryParser: mockAdvancedQueryParser,
            databaseService: mockDatabaseService,
          ),
          act: (bloc) async {
            bloc
              ..add(
                const HomeSwitchPageListType(1, ViewableObjectListType.list),
              )
              ..add(const HomeSwitchMode());
            await Future.delayed(Duration.zero);

            bloc.add(const HomeSwitchMode());
            await Future.delayed(Duration.zero);

            bloc
              ..add(
                const HomeSwitchPageListType(1, ViewableObjectListType.grid3),
              )
              ..add(const HomeSwitchMode());
            await Future.delayed(Duration.zero);

            bloc.add(const HomeSwitchMode());
          },
          skip: 1,
          expect: () => [
            isA<HomeState>().having(
              (s) => s.pages[1].listType,
              'first page list type',
              ViewableObjectListType.list,
            ),
            isA<HomeState>(),
            isA<HomeState>().having(
              (s) => s.pages[1].listType,
              'first page list type',
              ViewableObjectListType.list,
            ),
            isA<HomeState>().having(
              (s) => s.pages[1].listType,
              'first page list type',
              ViewableObjectListType.grid3,
            ),
            isA<HomeState>(),
            isA<HomeState>().having(
              (s) => s.pages[1].listType,
              'first page list type',
              ViewableObjectListType.grid3,
            ),
          ],
        );
      },
    );
  });
}
