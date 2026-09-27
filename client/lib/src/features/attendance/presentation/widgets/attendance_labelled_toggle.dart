import 'package:flutter/material.dart';

class AttendanceLabelledToggle extends StatelessWidget {
  static const double width = 56;

  static const double _indicatorWidth = 44;
  static const double _indicatorHeight = 28;
  static const double _iconSize = 22;
  static const double _disabledOpacity = 0.38;

  final bool selected;
  final Widget icon;
  final String label;
  final String semanticsLabel;
  final Color indicatorColor;
  final Color selectedColor;
  final VoidCallback? onTap;
  final VoidCallback? onLongPress;

  const AttendanceLabelledToggle({
    required this.selected,
    required this.icon,
    required this.label,
    required this.semanticsLabel,
    required this.indicatorColor,
    required this.selectedColor,
    required this.onTap,
    this.onLongPress,
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    final colorScheme = ColorScheme.of(context);
    final enabled = onTap != null;
    final foreground = switch ((enabled, selected)) {
      (false, _) => colorScheme.onSurface.withValues(alpha: _disabledOpacity),
      (true, true) => selectedColor,
      (true, false) => colorScheme.onSurfaceVariant,
    };

    return Semantics(
      button: true,
      toggled: selected,
      enabled: enabled,
      label: semanticsLabel,
      excludeSemantics: true,
      child: InkWell(
        onTap: onTap,
        onLongPress: onLongPress,
        customBorder: const StadiumBorder(),
        child: SizedBox(
          width: width,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            spacing: 2,
            children: [
              AnimatedContainer(
                duration: Durations.short4,
                curve: Curves.easeOut,
                width: _indicatorWidth,
                height: _indicatorHeight,
                decoration: ShapeDecoration(
                  shape: const StadiumBorder(),
                  color: selected && enabled
                      ? indicatorColor
                      : indicatorColor.withValues(alpha: 0),
                ),
                child: IconTheme.merge(
                  data: IconThemeData(color: foreground, size: _iconSize),
                  child: Center(child: icon),
                ),
              ),
              Text(
                label,
                maxLines: 1,
                overflow: TextOverflow.fade,
                softWrap: false,
                style: TextTheme.of(context).labelSmall?.copyWith(
                  color: foreground,
                  fontWeight: selected ? FontWeight.w700 : FontWeight.w500,
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
