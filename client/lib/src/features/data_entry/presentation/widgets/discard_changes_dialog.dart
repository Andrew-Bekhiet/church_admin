import 'package:church_admin/church_admin.dart';
import 'package:material_ui/material_ui.dart';

class DiscardChangesDialog extends StatelessWidget {
  const DiscardChangesDialog({super.key});

  @override
  Widget build(BuildContext context) {
    return const ConfirmationDialog(
      title: 'هل تريد تجاهل التغييرات؟',
      explanation: 'التغييرات التي لم يتم حفظها سيتم فقدانها.',
      confirmLabel: 'تجاهل',
      cancelLabel: 'متابعة التعديل',
      isDestructive: true,
    );
  }
}
