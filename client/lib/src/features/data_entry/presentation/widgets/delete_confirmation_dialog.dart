import 'package:church_admin/church_admin.dart';
import 'package:flutter/material.dart';

class DeleteConfirmationDialog extends StatelessWidget {
  final String objectName;

  const DeleteConfirmationDialog({required this.objectName, super.key});

  @override
  Widget build(BuildContext context) {
    return ConfirmationDialog(
      title: 'هل تريد حذف $objectName؟',
      explanation: 'لا يمكن التراجع عن الحذف.',
      confirmLabel: 'حذف',
      isDestructive: true,
    );
  }
}
