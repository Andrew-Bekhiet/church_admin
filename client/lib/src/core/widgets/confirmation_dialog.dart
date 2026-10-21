import 'package:material_ui/material_ui.dart';

class ConfirmationDialog extends StatelessWidget {
  static const String defaultCancelLabel = 'إلغاء';

  final String title;
  final String? explanation;
  final String confirmLabel;
  final String cancelLabel;
  final bool isDestructive;

  const ConfirmationDialog({
    required this.title,
    required this.confirmLabel,
    this.cancelLabel = defaultCancelLabel,
    this.isDestructive = false,
    this.explanation,
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    final colorScheme = ColorScheme.of(context);

    return AlertDialog(
      title: Text(title),
      content: switch (explanation) {
        final explanation? => Text(explanation),
        null => null,
      },
      actions: [
        TextButton(
          onPressed: () => Navigator.of(context).pop(false),
          child: Text(cancelLabel),
        ),
        FilledButton(
          key: ConfirmationDialogKeys.confirmButton,
          style: isDestructive
              ? FilledButton.styleFrom(
                  backgroundColor: colorScheme.error,
                  foregroundColor: colorScheme.onError,
                )
              : null,
          onPressed: () => Navigator.of(context).pop(true),
          child: Text(confirmLabel),
        ),
      ],
    );
  }
}

abstract final class ConfirmationDialogKeys {
  static const Key confirmButton = ValueKey('Confirmation Dialog Confirm Key');
}
