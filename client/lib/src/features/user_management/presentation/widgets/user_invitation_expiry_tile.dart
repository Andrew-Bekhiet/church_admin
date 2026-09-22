import 'package:flutter/material.dart';
import 'package:intl/intl.dart';

class UserInvitationExpiryTile extends StatelessWidget {
  final DateTime expiresAt;
  final DateTime firstDate;
  final DateTime lastDate;
  final ValueChanged<DateTime> onExpiryChanged;

  const UserInvitationExpiryTile({
    required this.expiresAt,
    required this.firstDate,
    required this.lastDate,
    required this.onExpiryChanged,
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return ListTile(
      title: const Text('تاريخ انتهاء الدعوة'),
      subtitle: Text(DateFormat('yyyy/M/d').format(expiresAt)),
      onTap: () async {
        final picked = await showDatePicker(
          context: context,
          initialDate: expiresAt,
          firstDate: firstDate,
          lastDate: lastDate,
        );

        if (picked != null) onExpiryChanged(picked);
      },
    );
  }
}
