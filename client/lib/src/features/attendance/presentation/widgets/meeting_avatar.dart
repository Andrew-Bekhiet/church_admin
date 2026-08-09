import 'package:church_admin/church_admin.dart';
import 'package:flutter/material.dart';

class MeetingAvatar extends StatelessWidget {
  final Meeting meeting;
  final double radius;

  String get _initial {
    final trimmed = meeting.name.trim();
    return trimmed.isEmpty ? '؟' : trimmed.substring(0, 1);
  }

  const MeetingAvatar({required this.meeting, this.radius = 22, super.key});

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    final background = meeting.color ?? theme.colorScheme.secondaryContainer;
    final foreground =
        ThemeData.estimateBrightnessForColor(background) == Brightness.dark
        ? Colors.white
        : Colors.black87;

    return CircleAvatar(
      radius: radius,
      backgroundColor: background,
      child: Text(
        _initial,
        style: theme.textTheme.titleMedium?.copyWith(
          color: foreground,
          fontWeight: FontWeight.bold,
        ),
      ),
    );
  }
}
