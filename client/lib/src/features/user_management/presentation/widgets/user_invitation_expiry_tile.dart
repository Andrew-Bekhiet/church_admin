import 'package:church_admin/src/features/user_management/presentation/widgets/user_invitation_code_tile.dart';
import 'package:flutter/material.dart';
import 'package:intl/intl.dart';

class UserInvitationExpiryTile extends StatelessWidget {
  final String? code;
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
    required this.code,
    required this.expiresAt,
    required this.firstDate,
    required this.lastDate,
    required this.onExpiryChanged,
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return UserInvitationCodeTile(
      code: code,
      caption: 'صالحة حتى ${DateFormat('yyyy/M/d').format(expiresAt)}',
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
