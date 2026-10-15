import 'package:church_admin/church_admin.dart';
import 'package:flutter/widgets.dart';

class SelectSearchTextOnAttendanceMarked extends StatelessWidget {
  final TextEditingController controller;
  final Widget child;

  const SelectSearchTextOnAttendanceMarked({
    required this.controller,
    required this.child,
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return NotificationListener<AttendanceMarkedNotification>(
      onNotification: (_) {
        controller.selection = TextSelection(
          baseOffset: 0,
          extentOffset: controller.text.length,
        );

        return true;
      },
      child: child,
    );
  }
}
