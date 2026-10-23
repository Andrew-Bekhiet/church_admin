import 'package:church_admin/church_admin.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:material_ui/material_ui.dart';

class AttendanceLetterGutter extends StatelessWidget {
  static const double kGutterWidth = 16;
  static const double _slotHeight = 32;

  final List<String> letters;
  final ValueChanged<String> onLetterSelected;

  const AttendanceLetterGutter({
    required this.letters,
    required this.onLetterSelected,
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    if (letters.isEmpty) return const SizedBox.shrink();

    final theme = Theme.of(context);

    return Center(
      child: GestureDetector(
        behavior: HitTestBehavior.opaque,
        onTapDown: (details) => _selectAt(details.localPosition.dy),
        onTapUp: (_) => _trackUse(context, AttendanceLetterGutterGesture.tap),
        onVerticalDragUpdate: (details) => _selectAt(details.localPosition.dy),
        onVerticalDragEnd: (_) =>
            _trackUse(context, AttendanceLetterGutterGesture.drag),
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

  void _trackUse(BuildContext context, AttendanceLetterGutterGesture gesture) =>
      context.read<RecordAttendanceCubit>().trackForCurrentMeeting(
        (meeting) => AttendanceLetterGutterUse(meeting, gesture),
      );

  void _selectAt(double dy) {
    if (letters.isEmpty) return;
    final index = (dy / _slotHeight).floor().clamp(0, letters.length - 1);
    onLetterSelected(letters[index]);
  }
}
