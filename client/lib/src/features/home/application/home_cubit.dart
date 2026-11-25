import 'dart:async';
import 'dart:ui' show AppLifecycleState;

import 'package:church_admin/church_admin.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:rxdart/rxdart.dart';

class HomeCubit extends Cubit<HomeState> {
  static HomeCubit get I => globalProviderContainer.read(homeCubitProvider);

  static HomeState _initialState(
    HomeDailyDataRepository homeDailyDataRepository,
    HomeMode mode,
  ) {
    return HomeState(
      mode: mode,
      tabs: mode.tabs,
      currentTabIndex: 0,
      listTypes: {
        for (final tab in HomeTab.values)
          if (tab.defaultListType case final listType?) tab: listType,
      },
      hero: HomeHero.forSeason(LiturgySeason.current),
      dailyData: HomeDailyData(
        verse: homeDailyDataRepository.getVerse(),
        sneksar: homeDailyDataRepository.getTodaysSneksar(),
        saying: homeDailyDataRepository.getSaying(),
      ),
    );
  }

  final HomeDailyDataRepository _homeDailyDataRepository;
  final UserPreferencesService _userPreferencesService;
  final AuthRepository _authRepository;
  final LocalAuthService _localAuthService;
  final UserPersistenceService _userPersistenceService;
  final DatabaseService _databaseService;
  final Stream<User?> _userStream;
  final AnalyticsService _analyticsService;

  late final HomeListControllers _listControllers = HomeListControllers(
    databaseService: _databaseService,
    visibility: _userStream.map(HomeContainerVisibility.fromUser),
  );
  late final StreamSubscription<User?> _userSubscription;
  StreamSubscription<int?>? _currentTabTotalSubscription;

  HomeCubit({
    required this._homeDailyDataRepository,
    required this._databaseService,
    required this._userPreferencesService,
    required Stream<User?> userDataStream,
    required this._authRepository,
    required this._localAuthService,
    required this._userPersistenceService,
    required this._analyticsService,
  }) : _userStream = userDataStream.shareReplay(maxSize: 1),
       super(
         _initialState(
           _homeDailyDataRepository,
           _userPreferencesService.lastHomeMode ?? HomeMode.sundaySchool,
         ),
       ) {
    _userSubscription = _userStream.listen(_onUserChanged);
    unawaited(_loadBirthdays());
    _followCurrentTabTotal();
  }

  ViewableObjectListController? listControllerFor(HomeTab tab) =>
      _listControllers.forTab(tab);

  void selectTab(int index) {
    final newIndex = index.clamp(0, state.tabs.length - 1);

    if (newIndex == state.currentTabIndex) return;

    emit(
      state.copyWith(currentTabIndex: newIndex, currentTabTotal: () => null),
    );
    _followCurrentTabTotal();
  }

  Future<void> changeMode(HomeMode mode, HomeModeSwitchEntry entry) {
    final sameEntityIndex = mode.tabs.indexWhere(
      (tab) => tab.entity == state.currentTab.entity,
    );

    return _enterMode(
      mode,
      sameEntityIndex == -1 ? 1 : sameEntityIndex,
      entry,
    );
  }

  Future<void> openFirstTabOf(HomeMode mode) =>
      _enterMode(mode, 1, HomeModeSwitchEntry.summaryCard);

  Future<void> _enterMode(
    HomeMode mode,
    int tabIndex,
    HomeModeSwitchEntry entry,
  ) async {
    final modeChanges = state.mode != mode;
    if (modeChanges) {
      _analyticsService.track(
        HomeModeSwitch(from: state.mode, to: mode, entry: entry),
      );
    }
    await _userPreferencesService.setLastHomeMode(mode);

    if (isClosed) return;

    emit(
      state.copyWith(
        mode: mode,
        tabs: mode.tabs,
        currentTabIndex: tabIndex,
        currentTabTotal: () => null,
      ),
    );
    _followCurrentTabTotal();
  }

  Future<void> switchMode(HomeModeSwitchEntry entry) => changeMode(
    switch (state.mode) {
      HomeMode.sundaySchool => HomeMode.churchData,
      HomeMode.churchData => HomeMode.sundaySchool,
    },
    entry,
  );

  void toggleListType() {
    final currentListType = state.listTypeOf(state.currentTab);

    if (currentListType == null) return;

    final newListType = switch (currentListType) {
      ViewableObjectListType.list => ViewableObjectListType.grid,
      ViewableObjectListType.grid ||
      ViewableObjectListType.grid3 => ViewableObjectListType.list,
    };

    _analyticsService.track(HomeListTypeToggle(state.currentTab, newListType));
    emit(
      state.copyWith(
        listTypes: {...state.listTypes, state.currentTab: newListType},
      ),
    );
  }

  void showAnotherDailyText(HomeDailyDataType type) {
    _analyticsService.track(DailyTextRefresh(type));
    final newText = switch (type) {
      HomeDailyDataType.verse => _homeDailyDataRepository.getVerse(
        forceRefresh: true,
      ),
      HomeDailyDataType.sneksar => _homeDailyDataRepository.getTodaysSneksar(),
      HomeDailyDataType.saying => _homeDailyDataRepository.getSaying(
        forceRefresh: true,
      ),
    };

    final newData = state.dailyData?.copyWithNewText(
      type: type,
      text: newText,
    );

    emit(state.copyWith(dailyData: newData));
  }

  Future<void> signOut() async {
    _analyticsService.track(const SignOutRequest(SignOutSource.homeDrawer));
    _localAuthService.scheduleReauth();
    await _authRepository.signOut();
  }

  void recordLifecycle(AppLifecycleState lifecycleState) {
    switch (lifecycleState) {
      case AppLifecycleState.resumed when !_localAuthService.shouldAuthenticate:
        unawaited(_userPersistenceService.recordActive());

      case AppLifecycleState.resumed:
      case AppLifecycleState.inactive:
      case AppLifecycleState.paused:
      case AppLifecycleState.detached:
      case AppLifecycleState.hidden:
        unawaited(_userPersistenceService.recordLastSeen());
    }
  }

  Future<void> _loadBirthdays() async {
    final names = await _homeDailyDataRepository.getTodaysBirthdaysData();

    if (isClosed) return;

    emit(
      state.copyWith(
        birthdays: HomeBirthdays(
          names: names,
          query: _homeDailyDataRepository.getTodaysBirthdaysQuery(),
        ),
      ),
    );
  }

  void _onUserChanged(User? user) {
    emit(
      state.copyWith(
        canManageUsers: user?.canManageSomeUsers ?? false,
        account: () => user,
      ),
    );
  }

  void _followCurrentTabTotal() {
    unawaited(_currentTabTotalSubscription?.cancel());

    _currentTabTotalSubscription = _listControllers
        .forTab(state.currentTab)
        ?.totalCountStream
        .listen(
          (total) => emit(state.copyWith(currentTabTotal: () => total)),
        );
  }

  @override
  Future<void> close() async {
    unawaited(_userSubscription.cancel());
    unawaited(_currentTabTotalSubscription?.cancel());
    await _listControllers.dispose();

    return super.close();
  }
}
