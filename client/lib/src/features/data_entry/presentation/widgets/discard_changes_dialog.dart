import 'package:church_admin/church_admin.dart';
import 'package:material_ui/material_ui.dart';

class DiscardChangesDialog extends StatelessWidget {
  const DiscardChangesDialog({super.key});

  static Future<void> popAfterConfirmingDiscard(
    BuildContext context, {
    required bool wasModified,
    required Object? result,
  }) async {
    final navigator = Navigator.of(context);
    if (!wasModified) {
      navigator.pop(result);

      return;
    }

    final discard = await showDialog<bool>(
      context: context,
      builder: (context) => const DiscardChangesDialog(),
    );

    if (discard ?? false) navigator.pop(result);
  }

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
