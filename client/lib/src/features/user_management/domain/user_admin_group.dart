import 'package:church_admin/church_admin.dart';
import 'package:collection/collection.dart';
import 'package:equatable/equatable.dart';

class UserAdminGroup with Equatable {
  static List<UserAdminGroup> groupUsers(List<User> users) {
    final superAdmins = users.where((u) => u.permissions.isSuperAdmin);
    final byScope = <ViewableWithIDAndImage, List<AdminOnData>>{};
    final unscoped = <User>[];

    for (final user in users) {
      final scopedAdminOn = user.adminOn?.where(_hasAreaOrService) ?? [];

      if (scopedAdminOn.isEmpty && !user.permissions.isSuperAdmin) {
        unscoped.add(user);
        continue;
      }

      for (final adminOn in scopedAdminOn) {
        final scopeKey = switch (adminOn) {
          AdminOnData(:final area?) => area,
          AdminOnData(:final service?) => service,
          _ => throw ArgumentError('AdminOnData has no area or service'),
        };

        byScope
            .putIfAbsent(scopeKey, () => [])
            .add(adminOn.copyWith(user: user));
      }
    }

    return [
      if (superAdmins.isNotEmpty)
        UserAdminGroup.ofKind(
          UserAdminGroupKind.superAdmins,
          users: superAdmins.toList(),
        ),
      ...byScope.entries
          .map((e) => UserAdminGroup._forScope(e.key, e.value))
          .sorted(_compareByKindThenTitle),
      if (unscoped.isNotEmpty)
        UserAdminGroup.ofKind(UserAdminGroupKind.unscoped, users: unscoped),
    ];
  }

  static bool _hasAreaOrService(AdminOnData adminOn) =>
      adminOn.area != null || adminOn.service != null;

  static int _compareByKindThenTitle(UserAdminGroup a, UserAdminGroup b) {
    final byKind = a.kind.index.compareTo(b.kind.index);
    if (byKind != 0) return byKind;

    return a.title.compareTo(b.title);
  }

  static List<UserAdminSubgroup> _subgroupsByStudyYear(
    List<AdminOnData> adminOn,
  ) {
    final byStudyYearOrder = adminOn.groupListsBy(
      (a) => a.serviceStudyYearData?.order,
    );

    int nullStudyYearsFirst(int? a, int? b) => switch ((a, b)) {
      (null, null) => 0,
      (null, _) => -1,
      (_, null) => 1,
      (final a?, final b?) => a.compareTo(b),
    };

    return byStudyYearOrder.entries
        .sortedByCompare((e) => e.key, nullStudyYearsFirst)
        .map(
          (e) => UserAdminSubgroup(
            splitByStudyYear: true,
            studyYear: e.value.first.serviceStudyYearData,
            users: _distinctUsers(e.value),
          ),
        )
        .toList();
  }

  static List<User> _distinctUsers(List<AdminOnData> adminOn) =>
      EqualitySet.from(
        EqualityBy((User u) => u.uid),
        adminOn.map((a) => a.user).nonNulls,
      ).toList();

  final UserAdminGroupKind kind;
  final ViewableWithIDAndImage? scope;
  final List<UserAdminSubgroup> subgroups;

  String get key => scope?.id ?? kind.name;

  String get title => scope?.name ?? kind.title ?? '';

  int get userCount => subgroups.map((s) => s.users.length).sum;

  @override
  List<Object?> get props => [kind, scope, subgroups];

  const UserAdminGroup({
    required this.kind,
    required this.subgroups,
    this.scope,
  });

  UserAdminGroup.ofKind(this.kind, {required List<User> users})
    : scope = null,
      subgroups = [UserAdminSubgroup(users: users)];

  factory UserAdminGroup._forScope(
    ViewableWithIDAndImage scope,
    List<AdminOnData> adminOn,
  ) => switch (scope) {
    Service() => UserAdminGroup(
      kind: UserAdminGroupKind.service,
      scope: scope,
      subgroups: _subgroupsByStudyYear(adminOn),
    ),
    _ => UserAdminGroup(
      kind: UserAdminGroupKind.area,
      scope: scope,
      subgroups: [UserAdminSubgroup(users: _distinctUsers(adminOn))],
    ),
  };
}
