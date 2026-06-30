import 'package:flutter/material.dart';

/// Right-edge alphabet gutter for rapidly jumping to a person by name. Supports
/// tap and vertical drag scrubbing. Each letter occupies a fixed slot so the hit
/// area lines up exactly with what's drawn, and the strip stays compact (and
/// centred) regardless of how tall the surrounding scroll body grows.
class AttendanceLetterGutter extends StatelessWidget {
  static const double kGutterWidth = 18;
  static const double _slotHeight = 16;

  final List<String> letters;
  final ValueChanged<String> onLetterSelected;

  const AttendanceLetterGutter({
    required this.letters,
    required this.onLetterSelected,
    super.key,
  });

  void _selectAt(double dy) {
    if (letters.isEmpty) return;
    final index = (dy / _slotHeight).floor().clamp(0, letters.length - 1);
    onLetterSelected(letters[index]);
  }

  @override
  Widget build(BuildContext context) {
    if (letters.isEmpty) return const SizedBox.shrink();

    final theme = Theme.of(context);

    return Center(
      child: GestureDetector(
        behavior: HitTestBehavior.opaque,
        onTapDown: (details) => _selectAt(details.localPosition.dy),
        onVerticalDragUpdate: (details) => _selectAt(details.localPosition.dy),
        child: SizedBox(
          width: kGutterWidth,
          child: Column(
            mainAxisSize: MainAxisSize.min,
            children: [
              for (final letter in letters)
                SizedBox(
                  height: _slotHeight,
                  child: Center(
                    child: Text(
                      letter,
                      style: theme.textTheme.labelSmall?.copyWith(
                        color: theme.colorScheme.primary,
                        fontWeight: FontWeight.bold,
                      ),
                      textAlign: TextAlign.center,
                    ),
                  ),
                ),
            ],
          ),
        ),
      ),
    );
  }
}
