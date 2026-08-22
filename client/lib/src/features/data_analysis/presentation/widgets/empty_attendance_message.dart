import 'package:flutter/material.dart';

class EmptyAttendanceMessage extends StatelessWidget {
  const EmptyAttendanceMessage({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 32),
      child: Center(
        child: Text(
          'لا يوجد سجل حضور خلال هذه الفترة',
          style: Theme.of(context).textTheme.titleMedium,
        ),
      ),
    );
  }
}
