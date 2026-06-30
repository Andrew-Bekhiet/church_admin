import 'dart:async';

import 'package:church_admin/church_admin.dart';
import 'package:flutter/material.dart';

/// Bottom sheet that lists the available meetings and lets the user switch the
/// active recording session. Pops with the chosen [Meeting], or `null` on cancel.
class SelectMeetingBottomSheet extends StatefulWidget {
  final Meeting currentMeeting;

  const SelectMeetingBottomSheet({required this.currentMeeting, super.key});

  static Future<Meeting?> show(
    BuildContext context, {
    required Meeting currentMeeting,
  }) {
    return showModalBottomSheet<Meeting>(
      context: context,
      showDragHandle: true,
      useSafeArea: true,
      isScrollControlled: true,
      builder: (_) => SelectMeetingBottomSheet(currentMeeting: currentMeeting),
    );
  }

  @override
  State<SelectMeetingBottomSheet> createState() =>
      _SelectMeetingBottomSheetState();
}

class _SelectMeetingBottomSheetState extends State<SelectMeetingBottomSheet> {
  late final PaginatableStreamBase<Meeting> _meetingsStream = DatabaseService
      .I
      .meetings
      .streamAll(
        orderBy: Stream.value([
          OrderBy(field: MeetingFields().serviceStudyYear),
          OrderBy(
            field: MeetingFields().service.redirectTo(ServiceFields().name),
          ),
          OrderBy(
            field: MeetingFields().group.redirectTo(GroupFields().name),
          ),
        ]),
      );

  @override
  void dispose() {
    unawaited(_meetingsStream.dispose());
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);

    return DraggableScrollableSheet(
      expand: false,
      initialChildSize: 0.6,
      maxChildSize: 0.9,
      builder: (context, scrollController) => Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          Padding(
            padding: const EdgeInsets.fromLTRB(20, 4, 20, 12),
            child: Text(
              'تبديل الاجتماع',
              style: theme.textTheme.headlineSmall?.copyWith(
                fontWeight: FontWeight.bold,
              ),
            ),
          ),
          Expanded(
            child: StreamBuilder<List<Meeting>>(
              stream: _meetingsStream,
              builder: (context, snapshot) {
                if (snapshot.hasError) {
                  return const Center(child: Text('تعذر تحميل الاجتماعات'));
                }
                if (!snapshot.hasData) {
                  return const Center(child: CircularProgressIndicator());
                }

                final meetings = snapshot.data!
                    .where((meeting) => !meeting.isArchived)
                    .toList();

                if (meetings.isEmpty) {
                  return const Center(child: Text('لا توجد اجتماعات'));
                }

                return ListView.builder(
                  controller: scrollController,
                  padding: const EdgeInsets.only(bottom: 16),
                  itemCount: meetings.length,
                  itemBuilder: (context, index) {
                    final meeting = meetings[index];

                    return MeetingListTile(
                      meeting: meeting,
                      selected: meeting.id == widget.currentMeeting.id,
                      onTap: () => Navigator.of(context).pop(meeting),
                    );
                  },
                );
              },
            ),
          ),
        ],
      ),
    );
  }
}
