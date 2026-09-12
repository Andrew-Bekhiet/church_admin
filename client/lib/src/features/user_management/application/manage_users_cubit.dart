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
      (users) => emit(
        state.copyWith(
          users: users,
          isLoading: _users.isLoading,
          hasMore: _users.hasMore,
        ),
      ),
      onError: (Object error) =>
          emit(state.copyWith(isLoading: false, error: error)),
    );
  }

  @override
  Future<void> close() async {
    await _usersSubscription.cancel();
    await _users.dispose();
    await _search.close();
    await super.close();
  }
}
