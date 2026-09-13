import 'package:flutter/material.dart';

class ManageUsersSubgroupHeader extends StatelessWidget {
  final String title;
  final int userCount;

  const ManageUsersSubgroupHeader({
    required this.title,
    required this.userCount,
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    final colors = theme.colorScheme;

    return Padding(
      padding: const EdgeInsetsDirectional.only(start: 16, top: 4, end: 16),
      child: Row(
        children: [
          Text(
            title,
            style: theme.textTheme.labelMedium?.copyWith(
              color: colors.primary,
              fontWeight: FontWeight.w600,
            ),
          ),
          const Expanded(child: Divider()),
          Text(
            userCount.toString(),
            style: theme.textTheme.labelSmall?.copyWith(
              color: colors.onSurfaceVariant,
            ),
          ),
        ],
      ),
    );
  }
}
