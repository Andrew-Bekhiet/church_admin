import 'dart:async';

import 'package:church_admin/church_admin.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:rxdart/rxdart.dart';

class ManageUsersCubit extends Cubit<ManageUsersState> {
  static const int _pageSize = 1000;

  final BehaviorSubject<String?> _search = BehaviorSubject.seeded(null);
  late final PaginatableStreamBase<User> _users;
  late final StreamSubscription<List<User>> _usersSubscription;

  ManageUsersCubit({UsersDAO? usersDao}) : super(const ManageUsersState()) {
    final dao = usersDao ?? DatabaseService.I.users;

    _users = dao.streamingProxy.streamAll(
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
  }

  void search(String query) {
    _search.add(query.isEmpty ? null : query);
    emit(state.copyWith(searchQuery: query, isLoading: true));
  }

  void showGrouped() =>
      emit(state.copyWith(preferredView: ManageUsersView.grouped));

  void showFlat() => emit(state.copyWith(preferredView: ManageUsersView.flat));

  void _loadNextPage(List<User> users) {
    emit(state.copyWith(users: users, isLoading: _users.hasMore));

    if (_users.hasMore) unawaited(_users.listenToNextPage());
  }

  @override
  Future<void> close() async {
    await _usersSubscription.cancel();
    await _users.dispose();
    await _search.close();
    await super.close();
  }
}
