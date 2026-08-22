import 'package:flutter/material.dart';
import 'package:material_symbols_icons/material_symbols_icons.dart';

class AttendanceKpiTile extends StatelessWidget {
  final Widget icon;
  final String label;
  final String value;
  final String? caption;
  final Color? accentColor;
  final bool emphasized;
  final VoidCallback? onTap;

  const AttendanceKpiTile({
    required this.icon,
    required this.label,
    required this.value,
    this.emphasized = false,
    this.caption,
    this.accentColor,
    this.onTap,
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    final colorScheme = ColorScheme.of(context);
    final textTheme = TextTheme.of(context);
    final accent = accentColor ?? colorScheme.primary;
    final borderRadius = BorderRadius.circular(16);

    return Material(
      color: colorScheme.surfaceContainerHigh,
      borderRadius: borderRadius,
      child: InkWell(
        onTap: onTap,
        borderRadius: borderRadius,
        child: Padding(
          padding: const EdgeInsets.all(12),
          child: Row(
            spacing: 10,
            children: [
              CircleAvatar(
                radius: 20,
                backgroundColor: accent.withValues(alpha: 0.24),
                child: IconTheme(
                  data: IconThemeData(
                    color: accent,
                    size: 24,
                    opticalSize: 40,
                  ),
                  child: icon,
                ),
              ),
              Expanded(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    Text(
                      value,
                      style: emphasized
                          ? textTheme.headlineSmall?.copyWith(
                              fontWeight: FontWeight.bold,
                              color: accent,
                            )
                          : textTheme.titleMedium?.copyWith(
                              fontWeight: FontWeight.bold,
                            ),
                      maxLines: 1,
                      overflow: TextOverflow.ellipsis,
                    ),
                    if (caption case final caption?)
                      Text(
                        caption,
                        style: textTheme.labelSmall?.copyWith(
                          color: colorScheme.onSurfaceVariant,
                          fontWeight: FontWeight.w600,
                        ),
                        maxLines: 1,
                        overflow: TextOverflow.ellipsis,
                      ),
                    Text(
                      label,
                      style: textTheme.bodyMedium?.copyWith(
                        color: colorScheme.onSurfaceVariant,
                      ),
                      maxLines: 1,
                      overflow: TextOverflow.ellipsis,
                    ),
                  ],
                ),
              ),
              if (onTap != null)
                Icon(
                  Symbols.open_in_full,
                  size: 16,
                  color: colorScheme.onSurfaceVariant,
                ),
            ],
          ),
        ),
      ),
    );
  }
}
