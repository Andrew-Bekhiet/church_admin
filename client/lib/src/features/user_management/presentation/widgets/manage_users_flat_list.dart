import 'package:church_admin/church_admin.dart';
import 'package:flutter/material.dart';

class ManageUsersFlatList extends StatelessWidget {
  final List<User> users;
  final bool isLoading;

  const ManageUsersFlatList({
    required this.users,
    required this.isLoading,
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      padding: const EdgeInsets.all(2),
      keyboardDismissBehavior: ScrollViewKeyboardDismissBehavior.onDrag,
      itemCount: users.length + 1,
      itemBuilder: (context, index) {
        if (index == users.length) {
          return ManageUsersListFooter(isLoading: isLoading);
        }

        return ManageUserListItem(users[index], key: ValueKey(users[index].id));
      },
    );
  }
}
