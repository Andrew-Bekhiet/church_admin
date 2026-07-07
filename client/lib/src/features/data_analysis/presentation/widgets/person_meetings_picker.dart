import 'package:church_admin/church_admin.dart';
import 'package:flutter/material.dart';
import 'package:rxdart/rxdart.dart';

class PersonMeetingsPicker extends StatelessWidget {
  final List<Meeting> meetings;
  final String emptyText;
  final BehaviorSubject<Set<Meeting>> selected;

  const PersonMeetingsPicker({
    required this.meetings,
    required this.emptyText,
    required this.selected,
    super.key,
  });

  // Tracked by meeting id, not object equality: seeded meetings round-trip
  // through JSON and won't deep-equal the freshly fetched ones.
  bool _isSelected(Meeting meeting) =>
      selected.value.any((e) => e.id == meeting.id);

  void _toggle(Meeting meeting, bool isSelected) {
    final withoutMeeting = selected.value
        .where((e) => e.id != meeting.id)
        .toSet();
    selected.add(isSelected ? {...withoutMeeting, meeting} : withoutMeeting);
  }

  @override
  Widget build(BuildContext context) {
    if (meetings.isEmpty) {
      return Padding(
        padding: const EdgeInsets.all(8),
        child: Text(emptyText),
      );
    }

    return Padding(
      padding: const EdgeInsets.only(right: 26),
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          for (final meeting in meetings)
            StreamBuilder<bool>(
              initialData: _isSelected(meeting),
              stream: selected.map((_) => _isSelected(meeting)),
              builder: (context, checked) => CheckboxListTile(
                value: checked.requireData,
                title: Text(meeting.name),
                subtitle: Text(
                  meeting.service?.name ?? meeting.group?.name ?? '',
                ),
                onChanged: (v) => _toggle(meeting, v ?? false),
              ),
            ),
        ],
      ),
    );
  }
}
