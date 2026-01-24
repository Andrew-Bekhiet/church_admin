import 'package:church_admin/church_admin.dart';
import 'package:flutter/material.dart';
import 'package:material_symbols_icons/material_symbols_icons.dart';
import 'package:tinycolor2/tinycolor2.dart';

class ObjectMarkerWidget extends StatelessWidget {
  final Viewable object;
  final bool isFocused;
  final bool enableTap;
  final VoidCallback? afterTap;

  const ObjectMarkerWidget({
    required this.object,
    required this.isFocused,
    this.enableTap = true,
    this.afterTap,
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    final objectColor = object.color ?? Theme.of(context).colorScheme.primary;

    final color = isFocused
        ? objectColor.brighten(18).saturate(8)
        : objectColor;

    final child = Stack(
      alignment: Alignment.center,
      children: [
        const Icon(
          Symbols.location_pin,
          size: 42,
          fill: 1,
          weight: 100,
          color: Colors.black45,
        ),
        Icon(
          Symbols.location_pin,
          size: 40,
          fill: 1,
          weight: 100,
          shadows: [
            if (!isFocused)
              Shadow(
                color: Colors.black.withValues(alpha: 0.1),
                offset: const Offset(4, 3),
                blurRadius: 3,
              )
            else
              Shadow(
                color: color.withValues(alpha: 0.35),
                blurRadius: 8,
              ),
          ],
          color: color,
        ),
      ],
    );

    if (!enableTap) return IgnorePointer(child: child);

    return GestureDetector(
      onTap: () {
        ScaffoldMessenger.of(context).hideCurrentSnackBar();
        ScaffoldMessenger.of(context).showSnackBar(
          SnackBar(
            content: Text(object.name),
            backgroundColor:
                object.color != null && object.color != Colors.transparent
                ? object.color?.withValues(alpha: 1)
                : null,
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
