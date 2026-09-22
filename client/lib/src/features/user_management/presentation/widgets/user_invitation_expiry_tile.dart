import 'package:flutter/material.dart';
import 'package:intl/intl.dart';
import 'package:material_symbols_icons/material_symbols_icons.dart';

class UserInvitationExpiryTile extends StatelessWidget {
  final DateTime expiresAt;
  final DateTime firstDate;
  final DateTime lastDate;
  final ValueChanged<DateTime> onExpiryChanged;

  bool get _canExtend => !lastDate.isBefore(firstDate);

  DateTime get _initialDate {
    if (expiresAt.isBefore(firstDate)) return firstDate;
    if (expiresAt.isAfter(lastDate)) return lastDate;

    return expiresAt;
  }

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
      subtitle: Text(DateFormat.yMd('ar-EG').add_jm().format(expiresAt)),
      trailing: const Icon(Symbols.edit_calendar),
      enabled: _canExtend,
      onTap: _canExtend ? () => _pickExpiry(context) : null,
    );
  }

  Future<void> _pickExpiry(BuildContext context) async {
    final picked = await showDatePicker(
      context: context,
      initialDate: _initialDate,
      firstDate: firstDate,
      lastDate: lastDate,
    );

    if (picked != null) onExpiryChanged(picked);
  }
}
