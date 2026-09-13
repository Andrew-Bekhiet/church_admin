import 'package:church_admin/church_admin.dart';
import 'package:flutter/material.dart';
import 'package:material_symbols_icons/material_symbols_icons.dart';

class ManageUsersGroupHeader extends StatelessWidget {
  static const _duration = Duration(milliseconds: 200);

  final UserAdminGroup group;
  final bool expanded;
  final VoidCallback onTap;

  const ManageUsersGroupHeader({
    required this.group,
    required this.expanded,
    required this.onTap,
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);

    return Material(
      color: theme.colorScheme.surfaceContainerLow,
      child: InkWell(
        onTap: onTap,
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 8),
          child: Row(
            spacing: 12,
            children: [
              AnimatedRotation(
                turns: expanded ? 0 : 0.25,
                duration: _duration,
                child: const Icon(Icons.expand_more, size: 20),
              ),
              switch (group.scope) {
                final IImage image => ImageObjectWidget(
                  image,
                  isDense: true,
                  circleCrop: false,
                ),
                _ => Icon(
                  switch (group.kind) {
                    UserAdminGroupKind.superAdmins => Symbols.shield_person,
                    _ => Symbols.person_off,
                  },
                ),
              },
              Expanded(
                child: Text(
                  group.title,
                  style: theme.textTheme.titleSmall,
                  overflow: TextOverflow.ellipsis,
                ),
              ),
              Text(
                group.userCount.toString(),
                style: theme.textTheme.bodySmall,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
