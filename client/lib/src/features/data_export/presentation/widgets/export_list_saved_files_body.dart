import 'package:flutter/material.dart';
import 'package:intl/intl.dart';
import 'package:material_symbols_icons/material_symbols_icons.dart';
import 'package:universal_io/universal_io.dart';

class ExportListSavedFilesBody extends StatelessWidget {
  final List<File> files;
  final void Function(File) onTap;
  final VoidCallback onNewExport;

  const ExportListSavedFilesBody({
    required this.files,
    required this.onTap,
    required this.onNewExport,
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    final colorScheme = theme.colorScheme;

    if (files.isEmpty) {
      return Center(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 32),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            spacing: 16,
            children: [
              Icon(
                Symbols.file_export,
                size: 72,
                color: colorScheme.outline,
              ),
              Text(
                'لا توجد ملفات تصدير محفوظة',
                style: theme.textTheme.headlineSmall,
                textAlign: TextAlign.center,
              ),
              Text(
                'عند إكمال التصدير يُحفظ الملف هنا ويمكنك فتحه لاحقًا من نفس الشاشة.',
                style: theme.textTheme.bodyMedium?.copyWith(
                  color: colorScheme.onSurfaceVariant,
                ),
                textAlign: TextAlign.center,
              ),
              const SizedBox(height: 8),
              FilledButton.icon(
                onPressed: onNewExport,
                icon: const Icon(Symbols.add),
                label: const Text('بدء تصدير جديد'),
              ),
            ],
          ),
        ),
      );
    }

    return ListView.builder(
      padding: const EdgeInsets.symmetric(horizontal: 16),
      itemCount: files.length,
      itemBuilder: (context, index) {
        final file = files[index];

        final lastModifiedDate = file.lastModifiedSync();
        final lastModifiedLabel = DateFormat(
          'd MMM yyyy • h:mm a',
          'ar-EG',
        ).format(lastModifiedDate);

        return Card(
          clipBehavior: Clip.antiAlias,
          elevation: 0,
          child: InkWell(
            onTap: () => onTap(file),
            child: ListTile(
              leading: CircleAvatar(
                backgroundColor: colorScheme.surfaceContainer,
                child: Icon(
                  Symbols.table,
                  color: colorScheme.onSurface,
                ),
              ),
              title: Text(
                lastModifiedLabel,
                maxLines: 1,
                overflow: TextOverflow.ellipsis,
              ),
              trailing: Icon(
                Symbols.open_in_new,
                color: colorScheme.onSurfaceVariant,
              ),
            ),
          ),
        );
      },
    );
  }
}
