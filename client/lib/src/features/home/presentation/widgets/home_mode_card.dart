import 'package:church_admin/church_admin.dart';
import 'package:material_symbols_icons/symbols.dart';
import 'package:material_ui/material_ui.dart';

class HomeModeCard extends StatelessWidget {
  final HomeMode mode;
  final bool isSelected;
  final VoidCallback onTap;

  const HomeModeCard({
    required this.mode,
    required this.isSelected,
    required this.onTap,
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    final textTheme = TextTheme.of(context);
    final colorScheme = ColorScheme.of(context);
    final contentColor = isSelected
        ? colorScheme.onPrimaryContainer
        : colorScheme.onSurface;

    final content = InkWell(
      onTap: onTap,
      child: Padding(
        padding: const EdgeInsetsDirectional.all(16),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          spacing: 8,
          children: [
            Row(
              spacing: 8,
              children: [
                Icon(mode.icon, color: contentColor),
                Expanded(
                  child: Text(
                    mode.label,
                    style: textTheme.titleMedium?.copyWith(
                      color: contentColor,
                    ),
                  ),
                ),
                if (isSelected) Icon(Symbols.check_circle, color: contentColor),
              ],
            ),
            Text(
              mode.contents,
              maxLines: 2,
              overflow: TextOverflow.ellipsis,
              style: textTheme.bodySmall?.copyWith(color: contentColor),
            ),
          ],
        ),
      ),
    );

    return MergeSemantics(
      child: Semantics(
        selected: isSelected,
        button: true,
        child: isSelected
            ? Card.filled(
                color: colorScheme.primaryContainer,
                clipBehavior: Clip.antiAlias,
                child: content,
              )
            : Card.outlined(
                color: colorScheme.surface,
                clipBehavior: Clip.antiAlias,
                child: content,
              ),
      ),
    );
  }
}
