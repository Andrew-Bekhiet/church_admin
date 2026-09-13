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

    return Padding(
      padding: const EdgeInsetsDirectional.fromSTEB(48, 12, 16, 4),
      child: Row(
        children: [
          Expanded(
            child: Text(
              title,
              style: theme.textTheme.labelLarge?.copyWith(
                color: theme.colorScheme.primary,
              ),
            ),
          ),
          Text(userCount.toString(), style: theme.textTheme.labelSmall),
        ],
      ),
    );
  }
}
