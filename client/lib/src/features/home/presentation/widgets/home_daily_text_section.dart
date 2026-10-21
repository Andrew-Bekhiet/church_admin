import 'package:church_admin/church_admin.dart';
import 'package:material_ui/material_ui.dart';

class HomeDailyTextSection extends StatelessWidget {
  final HomeDailyDataType type;
  final String text;
  final VoidCallback onTap;

  const HomeDailyTextSection({
    required this.type,
    required this.text,
    required this.onTap,
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    final textTheme = TextTheme.of(context);
    final colorScheme = ColorScheme.of(context);

    return InkWell(
      onTap: onTap,
      child: Column(
        mainAxisSize: MainAxisSize.min,
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          Ink(
            color: colorScheme.primary,
            child: Padding(
              padding: const EdgeInsetsDirectional.symmetric(
                horizontal: 16,
                vertical: 10,
              ),
              child: Row(
                spacing: 8,
                children: [
                  Icon(type.icon, color: colorScheme.onPrimary),
                  Text(
                    type.title,
                    style: textTheme.titleMedium?.copyWith(
                      color: colorScheme.onPrimary,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ],
              ),
            ),
          ),
          switch (type) {
            HomeDailyDataType.sneksar => HomeDailySneksarBody(
              sneksar: HomeDailySneksar.parse(text),
            ),
            HomeDailyDataType.verse ||
            HomeDailyDataType.saying => HomeDailyQuotedTextBody(
              quotedText: HomeDailyQuotedText.parse(text),
            ),
          },
          Padding(
            padding: const EdgeInsetsDirectional.symmetric(
              horizontal: 16,
              vertical: 12,
            ),
            child: Align(
              alignment: AlignmentDirectional.centerEnd,
              child: Text(
                'اقرأ المزيد',
                style: textTheme.labelMedium?.copyWith(
                  color: colorScheme.primary,
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
