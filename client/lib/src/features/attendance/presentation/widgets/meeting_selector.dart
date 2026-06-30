import 'package:church_admin/church_admin.dart';
import 'package:flutter/material.dart';
import 'package:material_symbols_icons/material_symbols_icons.dart';

class MeetingSelector extends StatelessWidget {
  final Meeting currentMeeting;
  final void Function(Meeting) onChanged;

  const MeetingSelector({
    required this.currentMeeting,
    required this.onChanged,
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return OutlinedButton.icon(
      icon: const Icon(Symbols.expand_circle_down),
      label: Text(currentMeeting.name),
      onPressed: () => _selectMeeting(context),
    );
  }

  Future<void> _selectMeeting(BuildContext context) async {
    final selectedMeeting = await showModalBottomSheet<Meeting?>(
      context: context,
      scrollControlDisabledMaxHeightRatio: 0.8,
      useSafeArea: true,
      builder: (context) =>
          SelectMeetingBottomSheet(currentMeeting: currentMeeting),
    );
    if (selectedMeeting == null) return;

    onChanged(selectedMeeting);
  }
}
