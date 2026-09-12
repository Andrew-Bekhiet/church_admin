import 'package:church_admin/church_admin.dart';
import 'package:flutter/material.dart';

class ManageUsersGroupedList extends StatelessWidget {
  final List<UserAdminGroup> groups;
  final bool isLoading;

  const ManageUsersGroupedList({
    required this.groups,
    required this.isLoading,
    super.key,
  });

  List<Object> get _rows => [
    for (final group in groups) ...[group, ...group.users],
  ];

  @override
  Widget build(BuildContext context) {
    final rows = _rows;

    return ListView.builder(
      padding: const EdgeInsets.all(2),
      keyboardDismissBehavior: ScrollViewKeyboardDismissBehavior.onDrag,
      itemCount: rows.length + 1,
      itemBuilder: (context, index) {
        if (index == rows.length) {
          return ManageUsersListFooter(isLoading: isLoading);
        }

        return switch (rows[index]) {
          final UserAdminGroup group => ManageUsersGroupHeader(
            group,
            key: ValueKey(group.scope?.id ?? UserAdminGroup.unscopedTitle),
          ),
          final User user => ManageUserListItem(user),
          _ => const SizedBox.shrink(),
        };
      },
    );
  }
}
