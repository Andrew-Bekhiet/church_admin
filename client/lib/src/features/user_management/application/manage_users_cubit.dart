import 'dart:async';

import 'package:church_admin/church_admin.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:rxdart/rxdart.dart';

class ManageUsersCubit extends Cubit<ManageUsersState> {
  final BehaviorSubject<String?> _search = BehaviorSubject.seeded(null);
  late final PaginatableStreamBase<User> _users;
  late final StreamSubscription<List<User>> _usersSubscription;

  ManageUsersCubit({UsersDAO? usersDao}) : super(const ManageUsersState()) {
    _users = (usersDao ?? DatabaseService.I.users).streamAll(
      searchQuery: _search.stream,
      where: Stream.value([
        Filter(
          UserFields().currentUserCanManageThisUser,
          PrimitiveOperator.eq,
          true,
        ),
      ]),
    );

    _usersSubscription = _users.listen(
      _onUsersPageArrived,
      onError: (Object error) =>
          emit(state.copyWith(isLoading: false, error: error)),
    );
  }

  void search(String query) {
    _search.add(query.isEmpty ? null : query);
    emit(state.copyWith(searchQuery: query, isLoading: true));
  }

  void showGrouped() {
    emit(state.copyWith(preferredView: ManageUsersView.grouped));
    _maybeDrainRemainingPages();
  }

  void showFlat() => emit(state.copyWith(preferredView: ManageUsersView.flat));

  Future<void> loadMore() async {
    if (!_users.hasMore || _users.isLoading) return;

    emit(state.copyWith(isLoading: true));
    await _users.listenToNextPage();
  }

  void _onUsersPageArrived(List<User> users) {
    emit(state.copyWith(users: users, hasMore: _users.hasMore));
    _maybeDrainRemainingPages();
  }

  void _maybeDrainRemainingPages() {
    final groupedViewStillIncomplete =
        state.view == ManageUsersView.grouped && _users.hasMore;

    emit(state.copyWith(isLoading: groupedViewStillIncomplete));

    if (groupedViewStillIncomplete) unawaited(loadMore());
  }

  @override
  Future<void> close() async {
    await _usersSubscription.cancel();
    await _users.dispose();
    await _search.close();
    await super.close();
  }
}
