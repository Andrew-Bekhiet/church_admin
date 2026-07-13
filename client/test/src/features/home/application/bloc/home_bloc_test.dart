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
  MockSpec<DatabaseService>(),
  MockSpec<UserSettingsService>(),
  MockSpec<PageController>(),
])
void main() {
  final birthdaysQuery = AdvancedQuery(
    queryableType: AdvancedQueriesMetadata().person,
    filters: [
      Filter(
        PersonFields().birthday,
        BirthdayOperator.equals,
        '${DateTime.now().month.toString().padLeft(2, '0')}'
        '-'
        '${DateTime.now().day.toString().padLeft(2, '0')}',
      ),
    ],
  );

  const lastHomeMode = HomeMode.sundaySchool;

  late MockHomeDailyDataRepository repository;
  late MockDatabaseService mockDatabaseService;
  late MockUserSettingsService mockUserSettingsService;

  setUp(() {
    repository = MockHomeDailyDataRepository();
    mockDatabaseService = MockDatabaseService();
    mockUserSettingsService = MockUserSettingsService();

    when(repository.getTodaysBirthdaysQuery()).thenReturn(null);
    when(repository.getTodaysBirthdaysData()).thenAnswer((_) async => []);
    when(mockUserSettingsService.lastHomeMode).thenAnswer((_) => lastHomeMode);
    when(
      mockUserSettingsService.setLastHomeMode(lastHomeMode),
    ).thenAnswer((_) async {});

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
        when(
          repository.getTodaysBirthdaysData(),
        ).thenAnswer((_) async => ['person']);
        when(repository.getTodaysBirthdaysQuery()).thenReturn(birthdaysQuery);
      });

      blocTest<HomeBloc, HomeState>(
        'emits [HomeState] with initial data',
        build: () => HomeBloc(
          userSettingsService: mockUserSettingsService,
          pageController: MockPageController(),
          homeDailyDataRepository: repository,
          databaseService: mockDatabaseService,
          userDataStream: Stream.value(null),
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
              )
              .having(
                (s) => s.pages.map((e) => e.objectsController),
                'every page has objectsController',
                [anything, isNotNull, isNotNull],
              ),
          isA<HomeState>().having(
            (s) => s.dailyData,
            'dailyData',
            HomeDailyData(
              verse: 'test verse',
              sneksar: 'test sneksar',
              saying: 'test saying',
              birthdaysText: 'person',
              birthdaysQuery: birthdaysQuery,
            ),
          ),
        ],
        verify: (_) {
          verify(repository.getVerse()).called(1);
          verify(repository.getTodaysSneksar()).called(1);
          verify(repository.getSaying()).called(1);
          verify(repository.getTodaysBirthdaysData()).called(1);
          verify(repository.getTodaysBirthdaysQuery()).called(1);
          verify(mockUserSettingsService.lastHomeMode).called(1);
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
          userSettingsService: mockUserSettingsService,
          pageController: MockPageController(),
          homeDailyDataRepository: repository,
          databaseService: mockDatabaseService,
          userDataStream: Stream.value(null),
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
        HomeMode lastHomeMode = HomeMode.churchData;
        blocTest(
          'Changes mode and emits new pages',
          setUp: () {
            when(mockUserSettingsService.lastHomeMode).thenReturn(lastHomeMode);
            when(
              mockUserSettingsService.setLastHomeMode(captureAny),
            ).thenAnswer((i) async {
              lastHomeMode = i.positionalArguments.first as HomeMode;
            });
          },
          build: () => HomeBloc(
            userSettingsService: mockUserSettingsService,
            pageController: MockPageController(),
            homeDailyDataRepository: repository,
            databaseService: mockDatabaseService,
            userDataStream: Stream.value(null),
          ),
          act: (bloc) => bloc
            ..add(const HomeChangeMode(HomeMode.churchData))
            ..add(const HomeChangeMode(HomeMode.sundaySchool))
            ..add(const HomeSwitchMode())
            ..add(const HomeSwitchMode()),
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
                )
                .having(
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
                )
                .having(
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
                )
                .having(
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
                )
                .having(
                  (s) => s.pages.map((e) => e.objectsController),
                  'every page has objectsController',
                  [
                    anything,
                    isNotNull,
                    isNotNull,
                  ],
                ),
          ],
          verify: (_) {
            verify(mockUserSettingsService.setLastHomeMode(any)).called(4);
            expect(lastHomeMode, HomeMode.sundaySchool);
          },
        );
      },
    );
    group(
      '$HomeSwitchPageListType',
      () {
        blocTest(
          'Switches page list type and preserves it across modes',
          build: () => HomeBloc(
            userSettingsService: mockUserSettingsService,
            pageController: MockPageController(),
            homeDailyDataRepository: repository,
            databaseService: mockDatabaseService,
            userDataStream: Stream.value(null),
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

    group(
      '$HomePageChange',
      () {
        late MockPageController mockPageController;
        setUp(
          () {
            double page = 0;
            final List<VoidCallback> listeners = [];

            mockPageController = MockPageController();
            when(mockPageController.page).thenAnswer((_) => page);
            when(mockPageController.addListener(any)).thenAnswer((
              invocation,
            ) {
              final listener =
                  invocation.positionalArguments.first as VoidCallback;
              listeners.add(listener);
            });
            when(mockPageController.hasClients).thenReturn(true);
            when(mockPageController.initialPage).thenReturn(0);
            when(mockPageController.removeListener(any)).thenAnswer((
              invocation,
            ) {
              final listener =
                  invocation.positionalArguments.first as VoidCallback;
              listeners.remove(listener);
            });
            when(mockPageController.jumpToPage(captureAny)).thenAnswer(
              (invocation) async {
                page = (invocation.positionalArguments.first as int).toDouble();
                for (final listener in listeners) {
                  listener();
                }
              },
            );
          },
        );
        blocTest(
          'Listens to PageController page changes',
          build: () => HomeBloc(
            userSettingsService: mockUserSettingsService,
            pageController: mockPageController,
            homeDailyDataRepository: repository,
            databaseService: mockDatabaseService,
            userDataStream: Stream.value(null),
          ),
          act: (bloc) async {
            await bloc.stream.first;

            bloc
              ..add(const HomePageChange(0.1))
              ..add(const HomePageChange(0.2))
              ..add(const HomePageChange(0.5))
              ..add(const HomePageChange(0.8));
            mockPageController.jumpToPage(1);
          },
          expect: () => [
            isA<HomeState>().having(
              (s) => s.currentPage,
              'current page',
              0,
            ),
            isA<HomeState>().having(
              (s) => s.currentPage,
              'current page',
              0.1,
            ),
            isA<HomeState>().having(
              (s) => s.currentPage,
              'current page',
              0.2,
            ),
            isA<HomeState>().having(
              (s) => s.currentPage,
              'current page',
              0.5,
            ),
            isA<HomeState>().having(
              (s) => s.currentPage,
              'current page',
              0.8,
            ),
            isA<HomeState>().having(
              (s) => s.currentPage,
              'current page',
              1.0,
            ),
          ],
        );
      },
    );
  });
}
