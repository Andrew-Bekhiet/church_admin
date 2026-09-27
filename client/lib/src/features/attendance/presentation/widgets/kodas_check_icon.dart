import 'package:church_admin/church_admin.dart';
import 'package:flutter/material.dart';
import 'package:material_symbols_icons/material_symbols_icons.dart';

class KodasCheckIcon extends StatelessWidget {
  static const double _badgeSize = 13;
  static const double _badgeIconSize = 10;
  static const double _badgeOffset = -5;

  final bool checked;

  const KodasCheckIcon({required this.checked, super.key});

  @override
  Widget build(BuildContext context) {
    final iconColor = IconTheme.of(context).color;
    final colorScheme = ColorScheme.of(context);

    return Stack(
      clipBehavior: Clip.none,
      children: [
        KodasChaliceIcon(filled: checked),
        if (checked)
          PositionedDirectional(
            end: _badgeOffset,
            bottom: _badgeOffset,
            child: DecoratedBox(
              decoration: ShapeDecoration(
                shape: CircleBorder(
                  side: BorderSide(color: colorScheme.primaryContainer),
                ),
                color: iconColor,
              ),
              child: SizedBox.square(
                dimension: _badgeSize,
                child: Icon(
                  Symbols.check,
                  size: _badgeIconSize,
                  weight: 700,
                  color: colorScheme.primaryContainer,
                ),
              ),
            ),
          ),
      ],
    );
  }
}
