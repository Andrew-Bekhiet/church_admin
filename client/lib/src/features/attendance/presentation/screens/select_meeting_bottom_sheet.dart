import 'package:church_admin/church_admin.dart';
import 'package:flutter/material.dart';

class SelectMeetingBottomSheet extends StatelessWidget {
  final Meeting currentMeeting;

  const SelectMeetingBottomSheet({required this.currentMeeting, super.key});

  @override
  Widget build(BuildContext context) {
    return BottomSheet(
      onClosing: () {},
      showDragHandle: true,
      builder: (context) => Column(
        children: [
          Text(currentMeeting.name),
        ],
      ),
    );
  }
}
