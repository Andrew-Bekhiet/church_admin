import 'package:church_admin/church_admin.dart';
import 'package:flutter/material.dart';
import 'package:material_symbols_icons/material_symbols_icons.dart';
import 'package:tinycolor2/tinycolor2.dart';

class ObjectMarkerWidget extends StatelessWidget {
  final Viewable object;
  final bool isFocused;
  final bool enableTap;
  final bool ignoreOnFocused;
  final VoidCallback? afterTap;

  const ObjectMarkerWidget({
    required this.object,
    required this.isFocused,
    this.ignoreOnFocused = true,
    this.afterTap,
    this.enableTap = true,
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    final effectiveColor =
        object.color ?? Theme.of(context).colorScheme.primary;
    final child = Stack(
      alignment: Alignment.center,
      children: [
        if (isFocused) ...[
          Positioned(
            width: 50,
            height: 50,
            child: Icon(
              Symbols.location_pin,
              size: 50,
              fill: isFocused ? 1 : 0,
              color: effectiveColor.darken(50),
            ),
          ),
          Positioned(
            width: 47,
            height: 47,
            child: Icon(
              Symbols.location_pin,
              size: 47,
              color: effectiveColor.brighten(50),
            ),
          ),
        ],
        Positioned(
          width: 40,
          height: 40,
          child: Icon(
            Symbols.location_pin,
            size: 40,
            fill: isFocused ? 1 : 0,
            shadows: [
              if (!isFocused)
                Shadow(
                  color: Colors.black.withValues(alpha: 0.1),
                  offset: const Offset(4, 3),
                  blurRadius: 3,
                ),
            ],
            color: effectiveColor,
          ),
        ),
      ],
    );

    if (!enableTap) return child;

    if (isFocused && ignoreOnFocused) {
      return IgnorePointer(child: child);
    }

    return GestureDetector(
      onTap: () {
        ScaffoldMessenger.of(context).hideCurrentSnackBar();
        ScaffoldMessenger.of(context).showSnackBar(
          SnackBar(
            content: Text(object.name),
            backgroundColor:
                object.color == Colors.transparent ? null : object.color,
            action: SnackBarAction(
              label: 'فتح',
              onPressed: () => ViewableObjectService.I.onTap(object),
            ),
          ),
        );
        afterTap?.call();
      },
      child: child,
    );
  }
}
