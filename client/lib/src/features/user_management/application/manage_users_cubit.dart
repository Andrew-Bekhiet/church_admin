import 'dart:async';

import 'package:church_admin/church_admin.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:rxdart/rxdart.dart';

class ManageUsersCubit extends Cubit<ManageUsersState> {
  static const int _pageSize = 1000;

  final BehaviorSubject<String?> _search = BehaviorSubject.seeded(null);
  late final PaginatableStreamBase<User> _users;
  late final StreamSubscription<List<User>> _usersSubscription;
  late final StreamSubscription<String> _searchTrackingSubscription;
  final AnalyticsService _analyticsService;

  ManageUsersCubit({UsersDAO? usersDao, AnalyticsService? analyticsService})
    : _analyticsService = analyticsService ?? AnalyticsService.I,
      super(const ManageUsersState()) {
    final dao = usersDao ?? DatabaseService.I.users;

    _users = dao.streamAllWithConfig(
      streamAllConfig: dao.baseStreamAllConfig,
      searchQuery: _search.stream,
      where: Stream.value([
        Filter(
          UserFields().currentUserCanManageThisUser,
          PrimitiveOperator.eq,
          true,
        ),
      ]),
      overrideTotalLimit: _pageSize,
    );

    _usersSubscription = _users.listen(
      _loadNextPage,
      onError: (Object error) =>
          emit(state.copyWith(isLoading: false, error: error)),
    );

    _searchTrackingSubscription = _search
        .debounceTime(HomeSearchCubit.debounceDuration)
        .whereNotNull()
        .distinct()
        .listen(
          (query) => _analyticsService.track(
            ManageUsersSearchRun(
              queryLength: query.length,
              preferredView: state.preferredView,
            ),
          ),
        );
  }

  void search(String query) {
    _search.add(query.isEmpty ? null : query);
    emit(state.copyWith(searchQuery: query, isLoading: true));
  }

  void showGrouped() => _showView(ManageUsersView.grouped);

  void showFlat() => _showView(ManageUsersView.flat);

  void _showView(ManageUsersView view) {
    _analyticsService.track(ManageUsersViewSwitch(view));
    emit(state.copyWith(preferredView: view));
  }

  void _loadNextPage(List<User> users) {
    emit(state.copyWith(users: users, isLoading: _users.hasMore));

    if (_users.hasMore) unawaited(_users.listenToNextPage());
  }

  @override
  Future<void> close() async {
    await _usersSubscription.cancel();
    await _searchTrackingSubscription.cancel();
    await _users.dispose();
    await _search.close();
    await super.close();
  }
}
