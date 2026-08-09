import 'package:church_admin/church_admin.dart';
import 'package:flutter/material.dart';
import 'package:material_symbols_icons/material_symbols_icons.dart';
import 'package:rxdart/rxdart.dart';

class MeetingsFilterChip extends StatelessWidget {
  final List<Meeting> meetings;
  final List<Meeting> selected;
  final ValueChanged<List<Meeting>> onChanged;

  const MeetingsFilterChip({
    required this.meetings,
    required this.selected,
    required this.onChanged,
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return ActionChip(
      avatar: const Icon(Symbols.groups, size: 18),
      label: Text('الاجتماعات (${selected.length}/${meetings.length})'),
      onPressed: () => _openPicker(context),
    );
  }

  Future<void> _openPicker(BuildContext context) async {
    final picked = BehaviorSubject<Set<Meeting>>.seeded(selected.toSet());

    final applied = await showModalBottomSheet<List<Meeting>>(
      context: context,
      isScrollControlled: true,
      showDragHandle: true,
      builder: (context) => SafeArea(
        child: Column(
          mainAxisSize: MainAxisSize.min,
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            ListTile(
              title: Text(
                'الاجتماعات',
                style: TextTheme.of(context).titleLarge,
              ),
            ),
            Flexible(
              child: SingleChildScrollView(
                child: PersonMeetingsPicker(
                  meetings: meetings,
                  selected: picked,
                  emptyText: 'لا يوجد اجتماعات',
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(16),
              child: FilledButton(
                onPressed: () =>
                    Navigator.of(context).pop(picked.value.toList()),
                child: const Text('تطبيق'),
              ),
            ),
          ],
        ),
      ),
    );

    await picked.close();

    if (applied != null) onChanged(applied);
  }
}
