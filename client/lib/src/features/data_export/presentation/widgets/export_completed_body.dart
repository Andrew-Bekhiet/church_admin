import 'package:flutter/material.dart';
import 'package:material_symbols_icons/material_symbols_icons.dart';

class ExportCompletedBody extends StatelessWidget {
  final VoidCallback onDownload;
  final VoidCallback onDismiss;

  const ExportCompletedBody({
    required this.onDownload,
    required this.onDismiss,
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    final colorScheme = theme.colorScheme;

    return Center(
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 24),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.stretch,
          spacing: 16,
          children: [
            Icon(
              Symbols.check_circle,
              size: 80,
              color: colorScheme.primary,
            ),
            Text(
              'تم تصدير البيانات بنجاح',
              style: theme.textTheme.headlineSmall,
              textAlign: TextAlign.center,
            ),
            const SizedBox(height: 8),
            FilledButton.icon(
              onPressed: onDownload,
              icon: const Icon(Symbols.open_in_new),
              label: const Text('فتح الملف'),
            ),
            OutlinedButton(
              onPressed: onDismiss,
              child: const Text('العودة لقائمة الملفات المحفوظة'),
            ),
          ],
        ),
      ),
    );
  }
}
