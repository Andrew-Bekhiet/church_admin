import 'package:church_admin/church_admin.dart';
import 'package:flutter/material.dart';

class ManageUsersGroupedList extends StatefulWidget {
  final List<UserAdminGroup> groups;
  final bool isLoading;

  const ManageUsersGroupedList({
    required this.groups,
    required this.isLoading,
    super.key,
  });

  @override
  State<ManageUsersGroupedList> createState() => _ManageUsersGroupedListState();
}

class _ManageUsersGroupedListState extends State<ManageUsersGroupedList> {
  final Set<String> _expandedKeys = {};

  @override
  Widget build(BuildContext context) {
    return CustomScrollView(
      keyboardDismissBehavior: ScrollViewKeyboardDismissBehavior.onDrag,
      slivers: [
        for (final group in widget.groups)
          ManageUsersGroupSection(
            key: ValueKey(group.key),
            group: group,
            expanded: _expandedKeys.contains(group.key),
            onToggle: () => _toggle(group.key),
          ),
        SliverToBoxAdapter(
          child: ManageUsersListFooter(isLoading: widget.isLoading),
        ),
      ],
    );
  }

  void _toggle(String key) {
    setState(() {
      if (_expandedKeys.remove(key)) return;

      _expandedKeys.add(key);
    });
  }
}
