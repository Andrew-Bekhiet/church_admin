import 'package:flutter/material.dart';

class EditObjectPointsMapEditablePoint extends StatelessWidget {
  final double markerSize;
  final Color? color;
  final IconData icon;
  const EditObjectPointsMapEditablePoint({
    required this.markerSize,
    required this.icon,
    this.color,
  });

  @override
  Widget build(BuildContext context) {
    return Stack(
      alignment: Alignment.center,
      children: [
        Positioned(
          width: markerSize,
          height: markerSize,
          child: Icon(
            icon,
            size: markerSize,
            shadows: [
              Shadow(
                color: Colors.black.withValues(alpha: 0.1),
                // offset: const Offset(4, 3),
                blurRadius: 3,
              ),
            ],
            color: color ?? Theme.of(context).colorScheme.primary,
          ),
        ),
      ],
    );
  }
}
