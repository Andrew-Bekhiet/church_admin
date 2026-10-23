import 'package:church_admin/church_admin.dart';
import 'package:material_ui/material_ui.dart';

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
            onToggle: () => _toggle(group),
          ),
        SliverToBoxAdapter(
          child: ManageUsersListFooter(isLoading: widget.isLoading),
        ),
      ],
    );
  }

  void _toggle(UserAdminGroup group) {
    final isExpanded = !_expandedKeys.contains(group.key);
    AnalyticsService.I.track(
      ManageUsersGroupToggle(group, isExpanded: isExpanded),
    );

    setState(() {
      if (_expandedKeys.remove(group.key)) return;

      _expandedKeys.add(group.key);
    });
  }
}
