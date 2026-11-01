import 'package:church_admin/church_admin.dart';
import 'package:material_ui/material_ui.dart';

class DiscardChangesDialog extends StatelessWidget {
  static Future<void> popAfterConfirmingDiscard(
    BuildContext context, {
    required bool wasModified,
    required ViewableWithID Function() editedEntity,
    required Object? result,
  }) async {
    final navigator = Navigator.of(context);
    if (!wasModified) {
      navigator.pop(result);

      return;
    }

    final entity = editedEntity();
    final discard = await showDialog<bool>(
      context: context,
      builder: (context) => const DiscardChangesDialog(),
    );
    final isDiscarded = discard ?? false;
    AnalyticsService.I.track(
      DiscardPromptAnswer(entity, isDiscarded: isDiscarded),
    );

    if (isDiscarded) navigator.pop(result);
  }

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
