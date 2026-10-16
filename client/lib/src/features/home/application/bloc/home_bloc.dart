import 'dart:async';

import 'package:church_admin/church_admin.dart';
import 'package:collection/collection.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:rxdart/rxdart.dart';

/// Manages and handles [HomeScreen] state like switching between
/// [HomeMode]s, switching pages, and loading daily data.
class HomeBloc extends Bloc<HomeEvent, HomeState> {
  static HomeBloc get I => globalProviderContainer.read(homeBlocProvider);

  final HomeDailyDataRepository _homeDailyDataRepository;
  final DatabaseService _databaseService;
  final UserPreferencesService _userPreferencesService;

  VoidCallback? _pageControllerListener;

  late final PageController _pageController;
  final Map<Type, ViewableObjectListController> _controllersToDispose = {};

  final Map<
    Type,
    ({Stream<List<Filter>>? where, Stream<List<OrderBy>>? orderBy})
  >
  _paginatableStreamsParams = {};

  late final Map<HomeMode, List<HomePageConfig>> _pagesConfigState = {
    HomeMode.sundaySchool: [
      HomePagesConfig.summaryPage,
      _ensureControllerWillDispose<Service>(
        HomePagesConfig.services,
        _databaseService.services.streamAll,
      ),
      _ensureControllerWillDispose<Person>(
        HomePagesConfig.sundaySchoolPersons,
        _databaseService.persons.streamAll,
      ),
    ],
    HomeMode.churchData: [
      HomePagesConfig.summaryPage,
      _ensureControllerWillDispose<Area>(
        HomePagesConfig.areas,
        _databaseService.areas.streamAll,
      ),
      _ensureControllerWillDispose<Street>(
        HomePagesConfig.streets,
        _databaseService.streets.streamAll,
      ),
      _ensureControllerWillDispose<Family>(
        HomePagesConfig.families,
        _databaseService.families.streamAll,
      ),
      _ensureControllerWillDispose<Store>(
        HomePagesConfig.stores,
        _databaseService.stores.streamAll,
      ),
      _ensureControllerWillDispose<Person>(
        HomePagesConfig.churchDataPersons,
        _databaseService.persons.streamAll,
      ),
    ],
  };

  HomeBloc({
    required this._homeDailyDataRepository,
    required this._databaseService,
    required UserPreferencesService userPreferencesService,
    required PageController pageController,
    required Stream<User?> userDataStream,
  }) : _pageController = pageController,
       _userPreferencesService = userPreferencesService,
       super(
         HomeState(
           mode: userPreferencesService.lastHomeMode ?? HomeMode.sundaySchool,
           pageController: pageController,
           pages: const [HomePagesConfig.summaryPage],
           showSnowflakeAnimation:
               LiturgySeason.current == LiturgySeason.christmas,
         ),
       ) {
    final visibilityStream = userDataStream
        .map(HomeContainerVisibility.fromUser)
        .shareReplay(maxSize: 1);
    _paginatableStreamsParams.addAll({
      Area: (
        where: visibilityStream.map((visibility) => visibility.areaFilters),
        orderBy: null,
      ),
      Street: (
        where: visibilityStream.map((visibility) => visibility.streetFilters),
        orderBy: null,
      ),
      Service: (
        where: visibilityStream.map((visibility) => visibility.serviceFilters),
        orderBy: null,
      ),
    });

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
    on<HomePageChange>(_onHomePageChange);
    on<HomeDailyDataGetNew>(_onHomeDailyDataGetNew);
    on<HomeChangeMode>(_onHomeChangeMode);
    on<HomeSwitchMode>(_onHomeSwitchMode);
    on<HomeSwitchPageListType>(_onHomeSwitchPageListType);

    add(const LoadHomeSummaryAndTabs());
  }

  HomePageConfig<T> _ensureControllerWillDispose<T extends Viewable>(
    HomePageConfig<T> config,
    PaginatableStreamBase<T> Function({
      Stream<String?>? searchQuery,
      Stream<List<Filter>>? where,
      Stream<List<OrderBy>>? orderBy,
    })
    paginatableStreamFactory,
  ) {
    return config.copyWith(
      objectsController: () => _controllersToDispose.putIfAbsent(
        T,
        () {
          return ViewableObjectListController<T>(
            objectsPaginatableStream: paginatableStreamFactory(
              where: _paginatableStreamsParams[T]?.where,
              orderBy: _paginatableStreamsParams[T]?.orderBy,
            ),
          );
        },
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
        if (_pageController.page == null ||
            _pageController.page == state.currentPage) {
          return;
        }

        add(HomePageChange(_pageController.page!));
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
  }

  Future<void> _loadBirthdays(Emitter<HomeState> emit) async {
    final birthdays = await _homeDailyDataRepository.getTodaysBirthdaysData();

    final currentData = state.dailyData!;

    emit(
      state.copyWith(
        dailyData: HomeDailyData(
          verse: currentData.verse,
          sneksar: currentData.sneksar,
          saying: currentData.saying,
          birthdaysText:
              birthdays.take(3).join('، ') +
              (birthdays.length > 3 ? '، ...' : ''),
          birthdaysQuery: _homeDailyDataRepository.getTodaysBirthdaysQuery(),
        ),
      ),
    );
  }

  void _onHomePageChange(
    HomePageChange event,
    Emitter<HomeState> emit,
  ) {
    final newPage = event.page.clamp(0.0, state.pages.length - 1.0);

    if (newPage == state.currentPage) return;

    emit(state.copyWith(currentPage: newPage));
  }

  void _onHomeDailyDataGetNew(
    HomeDailyDataGetNew event,
    Emitter<HomeState> emit,
  ) {
    final newText = switch (event.type) {
      HomeDailyDataType.verse => _homeDailyDataRepository.getVerse(
        forceRefresh: true,
      ),
      HomeDailyDataType.sneksar => _homeDailyDataRepository.getTodaysSneksar(),
      HomeDailyDataType.saying => _homeDailyDataRepository.getSaying(
        forceRefresh: true,
      ),
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
    final currentPage = state.pages[state.currentPage.round()];

    final commonPageIndex = newPages.indexWhere(
      (p) => p.type == currentPage.type,
    );

    _pageController.jumpToPage(commonPageIndex == -1 ? 1 : commonPageIndex);

    await _userPreferencesService.setLastHomeMode(mode);

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
