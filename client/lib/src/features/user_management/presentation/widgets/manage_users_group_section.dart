import 'package:church_admin/church_admin.dart';
import 'package:flutter/material.dart';
import 'package:sliver_tools/sliver_tools.dart';

class ManageUsersGroupSection extends StatelessWidget {
  final UserAdminGroup group;
  final bool expanded;
  final VoidCallback onToggle;

  const ManageUsersGroupSection({
    required this.group,
    required this.expanded,
    required this.onToggle,
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return MultiSliver(
      pushPinnedChildren: true,
      children: [
        SliverPinnedHeader(
          child: ManageUsersGroupHeader(
            group: group,
            expanded: expanded,
            onTap: onToggle,
          ),
        ),
        if (expanded)
          for (final subgroup in group.subgroups) ...[
            if (subgroup.title case final title?)
              SliverToBoxAdapter(
                child: ManageUsersSubgroupHeader(
                  title: title,
                  userCount: subgroup.users.length,
                ),
              ),
            SliverList.builder(
              itemCount: subgroup.users.length,
              itemBuilder: (context, index) =>
                  ManageUserListItem(subgroup.users[index]),
            ),
          ],
      ],
    );
  }
}
