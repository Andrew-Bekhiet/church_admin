import 'package:church_admin/church_admin.dart';
import 'package:flutter/material.dart';
import 'package:material_symbols_icons/material_symbols_icons.dart';

class ManageUsersGroupHeader extends StatelessWidget {
  static const _duration = Duration(milliseconds: 200);
  static const _leadingSize = 36.0;
  static const _leadingRadius = BorderRadius.all(Radius.circular(8));

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
    final colors = theme.colorScheme;
    final collapsedTurns = switch (Directionality.of(context)) {
      TextDirection.rtl => -0.25,
      TextDirection.ltr => 0.25,
    };

    return Material(
      color: colors.surface,
      child: InkWell(
        onTap: onTap,
        child: AnimatedContainer(
          duration: _duration,
          padding: const EdgeInsets.symmetric(horizontal: 12, vertical: 6),
          decoration: BoxDecoration(
            color: expanded ? colors.surfaceContainerHigh : colors.surface,
            border: Border(
              bottom: BorderSide(color: colors.outlineVariant, width: 0.5),
            ),
          ),
          child: Row(
            spacing: 10,
            children: [
              switch (group.scope) {
                final IImage image => ImageObjectWidget(
                  image,
                  isDense: true,
                  circleCrop: false,
                  size: _leadingSize,
                  borderRadius: _leadingRadius,
                ),
                _ => ManageUsersGroupKindIcon(kind: group.kind),
              },
              Expanded(
                child: Text(
                  group.title,
                  style: theme.textTheme.titleSmall,
                  maxLines: 1,
                  overflow: TextOverflow.ellipsis,
                ),
              ),
              ManageUsersCountBadge(
                count: group.userCount,
                highlighted: expanded,
              ),
              AnimatedRotation(
                turns: expanded ? 0 : collapsedTurns,
                duration: _duration,
                child: Icon(
                  Symbols.expand_more,
                  size: 20,
                  color: colors.onSurfaceVariant,
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
