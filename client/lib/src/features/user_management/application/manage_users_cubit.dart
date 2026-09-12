import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:church_admin/church_admin.dart';
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

  Future<void> loadMore() async {
    if (!_users.hasMore || _users.isLoading) return;

    await _users.listenToNextPage();
  }

  void _onUsersPageArrived(List<User> users) {
    final groupedViewStillIncomplete =
        state.view == ManageUsersView.grouped && _users.hasMore;

    emit(
      state.copyWith(
        users: users,
        isLoading: groupedViewStillIncomplete,
        hasMore: _users.hasMore,
      ),
    );

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
