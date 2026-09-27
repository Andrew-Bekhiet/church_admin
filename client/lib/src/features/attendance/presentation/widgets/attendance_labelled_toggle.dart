import 'package:flutter/material.dart';

class AttendanceLabelledToggle extends StatelessWidget {
  static const double totalWidth = 58;

  static const double _circleSize = 30;
  static const double _labelLineHeight = 1.2;
  static const double _iconSize = 22;
  static const double _outlineWidth = 1.5;
  static const double _disabledOpacity = 0.38;

  final bool selected;
  final Widget icon;
  final String label;
  final String semanticsLabel;
  final Color fillColor;
  final Color iconColor;
  final Color selectedLabelColor;
  final VoidCallback? onTap;
  final VoidCallback? onLongPress;

  const AttendanceLabelledToggle({
    required this.selected,
    required this.icon,
    required this.label,
    required this.semanticsLabel,
    required this.fillColor,
    required this.iconColor,
    required this.selectedLabelColor,
    required this.onTap,
    this.onLongPress,
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    final colorScheme = ColorScheme.of(context);
    final enabled = onTap != null;
    final outlineColor = enabled
        ? colorScheme.outline
        : colorScheme.outline.withValues(alpha: _disabledOpacity);
    final labelColor = switch ((enabled, selected)) {
      (false, _) => colorScheme.onSurface.withValues(alpha: _disabledOpacity),
      (true, true) => selectedLabelColor,
      (true, false) => colorScheme.onSurfaceVariant,
    };

    return Semantics(
      button: true,
      toggled: selected,
      enabled: enabled,
      label: semanticsLabel,
      excludeSemantics: true,
      child: SizedBox(
        width: totalWidth,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          spacing: 1,
          children: [
            InkWell(
              onTap: onTap,
              onLongPress: onLongPress,
              customBorder: const CircleBorder(),
              child: AnimatedContainer(
                duration: Durations.short4,
                curve: Curves.easeOut,
                width: _circleSize,
                height: _circleSize,
                decoration: ShapeDecoration(
                  shape: CircleBorder(
                    side: selected
                        ? BorderSide.none
                        : BorderSide(color: outlineColor, width: _outlineWidth),
                  ),
                  color: selected ? fillColor : fillColor.withValues(alpha: 0),
                ),
                child: AnimatedSwitcher(
                  duration: Durations.short4,
                  transitionBuilder: (child, animation) =>
                      ScaleTransition(scale: animation, child: child),
                  child: selected
                      ? IconTheme.merge(
                          key: const ValueKey(true),
                          data: IconThemeData(
                            color: iconColor,
                            size: _iconSize,
                          ),
                          child: Center(child: icon),
                        )
                      : const SizedBox.shrink(key: ValueKey(false)),
                ),
              ),
            ),
            GestureDetector(
              onTap: onTap,
              onLongPress: onLongPress,
              child: Text(
                label,
                maxLines: 1,
                overflow: TextOverflow.fade,
                softWrap: false,
                style: TextTheme.of(context).labelMedium?.copyWith(
                  color: labelColor,
                  height: _labelLineHeight,
                  fontWeight: selected ? FontWeight.w700 : FontWeight.w500,
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
