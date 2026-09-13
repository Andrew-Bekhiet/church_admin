import 'package:church_admin/church_admin.dart';
import 'package:collection/collection.dart';
import 'package:equatable/equatable.dart';

class UserAdminGroup with Equatable {
  static const unscopedTitle = 'بدون مسؤولية';

  static List<UserAdminGroup> groupUsers(List<User> users) {
    final byScope = <ViewableWithID?, List<User>>{};

    for (final user in users) {
      final scopes = user.adminOn?.map(_scopeOf).nonNulls.toSet() ?? {};

      for (final scope in scopes.isEmpty ? {null} : scopes) {
        byScope.putIfAbsent(scope, () => []).add(user);
      }
    }

    return byScope.entries
        .map((e) => UserAdminGroup(scope: e.key, users: e.value))
        .sorted(_byScopeTypeThenName);
  }

  static ViewableWithID? _scopeOf(AdminOnData adminOn) =>
      adminOn.area ?? adminOn.service;

  static int _byScopeTypeThenName(UserAdminGroup a, UserAdminGroup b) {
    final byType = a._scopeRank.compareTo(b._scopeRank);
    if (byType != 0) return byType;

    return (a.scope?.name ?? '').compareTo(b.scope?.name ?? '');
  }

  final ViewableWithID? scope;
  final List<User> users;

  String get title => scope?.name ?? unscopedTitle;

  int get _scopeRank => switch (scope) {
    Area() => 0,
    Service() => 1,
    _ => 2,
  };

  @override
  List<Object?> get props => [scope, users];

  const UserAdminGroup({required this.scope, required this.users});
}
