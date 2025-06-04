import 'dart:async';

import 'package:church_admin/church_admin.dart';
import 'package:collection/collection.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:material_symbols_icons/symbols.dart';
import 'package:rxdart/rxdart.dart';

abstract final class _HomePagesConfig {
  static const summaryPage = HomePageConfig(
    label: 'الرئيسية',
    pageIcon: Symbols.home,
  );

  static final services = HomePageConfig<Service>(
    label: 'الخدمات',
    pageIcon: Symbols.volunteer_activism,
    fabIcon: const Icon(Symbols.add),
    listType: ViewableObjectListType.grid,
    fabOnTapLocation: const EditServiceRoute().location,
  );
  static final sundaySchoolPersons = HomePageConfig<Person>(
    label: 'المخدومين',
    pageIcon: Symbols.person,
    fabIcon: const Icon(Symbols.person_add),
    fabOnTapLocation: const EditPersonRoute().location,
  );

  static final areas = HomePageConfig<Area>(
    label: 'المناطق',
    fabIcon: const Icon(Symbols.add_location),
    pageIcon: Symbols.pin_drop,
    fabOnTapLocation: const EditAreaRoute().location,
  );
  static final streets = HomePageConfig<Street>(
    label: 'الشوراع',
    fabIcon: const Icon(Symbols.add_road),
    pageIcon: Symbols.road,
    fabOnTapLocation: const EditStreetRoute().location,
  );
  static final families = HomePageConfig<Family>(
    label: 'العائلات',
    fabIcon: const Icon(Symbols.group_add),
    pageIcon: Symbols.diversity_1,
    fabOnTapLocation: const EditFamilyRoute().location,
  );
  static final stores = HomePageConfig<Store>(
    label: 'المتاجر',
    fabIcon: const Icon(Symbols.add_business),
    pageIcon: Symbols.store,
    fabOnTapLocation: const EditStoreRoute().location,
  );
  static final churchDataPersons = HomePageConfig<Person>(
    label: 'الأفراد',
    pageIcon: Symbols.person,
    fabIcon: const Icon(Symbols.person_add),
    fabOnTapLocation: const EditPersonRoute().location,
  );
}

/// Manages and handles [HomeScreen] state like switching between
/// [HomeMode]s, switching pages, and loading daily data.
class HomeBloc extends Bloc<HomeEvent, HomeState> {
  static HomeBloc get I => globalProviderContainer.read(homeBlocProvider);

  final HomeDailyDataRepository _homeDailyDataRepository;
  final DatabaseService _databaseService;
  final AdvancedQueryParser _advancedQueryParser;

  VoidCallback? _pageControllerListener;

  late final PageController _pageController;
  final Map<Type, ViewableObjectListController> _controllersToDispose = {};

  late final Map<HomeMode, List<HomePageConfig>> _pagesConfigState = {
    HomeMode.sundaySchool: [
      _HomePagesConfig.summaryPage,
      _ensureControllerWillDispose<Service>(
        _HomePagesConfig.services,
        _databaseService.services.streamAll,
      ),
      _ensureControllerWillDispose<Person>(
        _HomePagesConfig.sundaySchoolPersons,
        _databaseService.persons.streamAll,
      ),
    ],
    HomeMode.churchData: [
      _HomePagesConfig.summaryPage,
      _ensureControllerWillDispose<Area>(
        _HomePagesConfig.areas,
        _databaseService.areas.streamAll,
      ),
      _ensureControllerWillDispose<Street>(
        _HomePagesConfig.streets,
        _databaseService.streets.streamAll,
      ),
      _ensureControllerWillDispose<Family>(
        _HomePagesConfig.families,
        _databaseService.families.streamAll,
      ),
      _ensureControllerWillDispose<Store>(
        _HomePagesConfig.stores,
        _databaseService.stores.streamAll,
      ),
      _ensureControllerWillDispose<Person>(
        _HomePagesConfig.churchDataPersons,
        _databaseService.persons.streamAll,
      ),
    ],
  };

  HomeBloc({
    required HomeDailyDataRepository homeDailyDataRepository,
    required AdvancedQueryParser advancedQueryParser,
    required DatabaseService databaseService,
  })  : _databaseService = databaseService,
        _homeDailyDataRepository = homeDailyDataRepository,
        _advancedQueryParser = advancedQueryParser,
        super(
          HomeState(
            pageController: PageController(),
            pages: const [_HomePagesConfig.summaryPage],
            showSnowflakeAnimation:
                LiturgySeason.current == LiturgySeason.christmas,
          ),
        ) {
    _pageController = state.pageController;

    on<LoadHomeSummaryAndTabs>(
      _onLoadHomeSummaryAndTabs,
      transformer: (events, mapper) => events
          .scan(
            (_, event, i) => i == 0
                ? event
                : throw Exception('Already loaded home summary and tabs'),
            const LoadHomeSummaryAndTabs(),
          )
          .switchMap(mapper),
    );
    on<HomeDailyDataGetNew>(_onHomeDailyDataGetNew);
    on<HomeChangeMode>(_onHomeChangeMode);
    on<HomeSwitchMode>(_onHomeSwitchMode);
    on<HomeSwitchPageListType>(_onHomeSwitchPageListType);

    add(const LoadHomeSummaryAndTabs());
  }

  HomePageConfig<T> _ensureControllerWillDispose<T extends Viewable>(
    HomePageConfig<T> config,
    PaginatableStreamBase<T> Function() paginatableStreamFactory,
  ) {
    return config.copyWith(
      objectsController: () => _controllersToDispose.putIfAbsent(
        T,
        () => ViewableObjectListController<T>(
          objectsPaginatableStream: paginatableStreamFactory(),
        ),
      ) as ViewableObjectListController<T>,
    );
  }

  Future<void> _onLoadHomeSummaryAndTabs(
    LoadHomeSummaryAndTabs event,
    Emitter<HomeState> emit,
  ) async {
    _pageController.addListener(
      _pageControllerListener = () {
        if (isClosed || !_pageController.hasClients) return;

        if (_pageController.page != null &&
            _pageController.page != state.currentPage) {
          emit(state.copyWith(currentPage: _pageController.page));
        }
      },
    );

    final pages = _pagesConfigState[state.mode]!;

    final verse = _homeDailyDataRepository.getVerse();
    final sneksar = _homeDailyDataRepository.getTodaysSneksar();
    final saying = _homeDailyDataRepository.getSaying();

    emit(
      state.copyWith(
        pages: pages,
        dailyData: HomeDailyData(
          verse: verse,
          sneksar: sneksar,
          saying: saying,
        ),
      ),
    );

    await _loadBirthdays(emit);

    // Await until last event to keep the [_pageControllerListener] alive
    await stream.last;
  }

  Future<void> _loadBirthdays(Emitter<HomeState> emit) async {
    final now = DateTime.now();

    final birthdaysQuery = AdvancedQuery(
      name: 'أعياد الميلاد',
      queryableType: Person.queryableType,
      conditions: [
        Condition(
          queryableType: Person.queryableType,
          field: 'birthday',
          operator: Operator.eq,
          value:
              '${now.month.toString().padLeft(2, '0')}-${now.day.toString().padLeft(2, '0')}',
        ),
      ],
      orderBy: [
        OrderBy(fieldName: 'birthdate'),
        OrderBy(fieldName: 'name'),
      ],
    );

    final persons = await _advancedQueryParser
        .createPaginatableStream(birthdaysQuery)
        .first;

    final currentData = state.dailyData!;

    emit(
      state.copyWith(
        dailyData: HomeDailyData(
          verse: currentData.verse,
          sneksar: currentData.sneksar,
          saying: currentData.saying,
          birthdays: persons.map((e) => e.name).toList(),
          birthdaysQuery: birthdaysQuery,
        ),
      ),
    );
  }

  void _onHomeDailyDataGetNew(
    HomeDailyDataGetNew event,
    Emitter<HomeState> emit,
  ) {
    final newText = switch (event.type) {
      HomeDailyDataType.verse =>
        _homeDailyDataRepository.getVerse(forceRefresh: true),
      HomeDailyDataType.sneksar => _homeDailyDataRepository.getTodaysSneksar(),
      HomeDailyDataType.saying =>
        _homeDailyDataRepository.getSaying(forceRefresh: true),
    };

    final newData = state.dailyData!.copyWithNewText(
      type: event.type,
      text: newText,
    );

    emit(state.copyWith(dailyData: newData));
  }

  Future<void> _changeHomeMode(
    HomeMode mode,
    Emitter<HomeState> emit,
  ) async {
    final newPages = _pagesConfigState[mode]!;
    final currentPage = state.pages[state.pageController.page!.round()];

    final commonPageIndex = newPages.indexWhere(
      (p) => p.type == currentPage.type,
    );

    _pageController.jumpToPage(commonPageIndex == -1 ? 1 : commonPageIndex);

    emit(
      state.copyWith(
        mode: mode,
        pages: newPages,
        currentPage: commonPageIndex == -1 ? 1.0 : commonPageIndex.toDouble(),
      ),
    );
  }

  Future<void> _onHomeChangeMode(
    HomeChangeMode event,
    Emitter<HomeState> emit,
  ) async {
    await _changeHomeMode(event.mode, emit);
  }

  Future<void> _onHomeSwitchMode(
    HomeSwitchMode event,
    Emitter<HomeState> emit,
  ) async {
    final newMode = switch (state.mode) {
      HomeMode.sundaySchool => HomeMode.churchData,
      HomeMode.churchData => HomeMode.sundaySchool,
    };

    await _changeHomeMode(newMode, emit);
  }

  void _onHomeSwitchPageListType(
    HomeSwitchPageListType event,
    Emitter<HomeState> emit,
  ) {
    final newPages = state.pages
        .mapIndexed(
          (i, p) =>
              i == event.pageIndex ? p.copyWith(listType: event.listType) : p,
        )
        .toList(growable: false);

    _pagesConfigState[state.mode] = newPages;

    emit(state.copyWith(pages: newPages));
  }

  @override
  Future<void> close() async {
    if (_pageControllerListener != null) {
      _pageController.removeListener(_pageControllerListener!);
    }

    _pageController.dispose();

    await Future.wait(
      _controllersToDispose.values.map((c) => c.dispose()),
    );
    _controllersToDispose.clear();

    return super.close();
  }
}
