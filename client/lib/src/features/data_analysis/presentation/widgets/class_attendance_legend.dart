import 'package:flutter/material.dart';

class ClassAttendanceLegend extends StatelessWidget {
  const ClassAttendanceLegend({required this.entries, super.key});

  @override
  Widget build(BuildContext context) {
    final textTheme = TextTheme.of(context);

    return Wrap(
      alignment: WrapAlignment.center,
      spacing: 16,
      runSpacing: 8,
      children: [
        for (final (label, color) in entries)
          Row(
            mainAxisSize: MainAxisSize.min,
            spacing: 6,
            children: [
              Container(
                width: 12,
                height: 12,
                decoration: BoxDecoration(
                  color: color,
                  borderRadius: BorderRadius.circular(3),
                ),
              ),
              Text(label, style: textTheme.bodySmall),
            ],
          ),
      ],
    );
  }

  final List<(String label, Color color)> entries;
}
