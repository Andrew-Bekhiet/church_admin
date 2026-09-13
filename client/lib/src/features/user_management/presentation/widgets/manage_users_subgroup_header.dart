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
      padding: const EdgeInsetsDirectional.fromSTEB(16, 6, 16, 0),
      child: Row(
        spacing: 8,
        children: [
          Text(
            title,
            style: theme.textTheme.labelMedium?.copyWith(
              color: colors.primary,
              fontWeight: FontWeight.w600,
            ),
          ),
          Expanded(child: Divider(color: colors.outlineVariant, height: 1)),
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
