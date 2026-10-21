import 'package:church_admin/church_admin.dart';
import 'package:material_ui/material_ui.dart';

class HomeDailyQuotedTextBody extends StatelessWidget {
  final HomeDailyQuotedText quotedText;

  const HomeDailyQuotedTextBody({required this.quotedText, super.key});

  @override
  Widget build(BuildContext context) {
    final textTheme = TextTheme.of(context);
    final colorScheme = ColorScheme.of(context);

    return Padding(
      padding: const EdgeInsetsDirectional.only(start: 16, end: 16, top: 16),
      child: Column(
        mainAxisSize: MainAxisSize.min,
        crossAxisAlignment: CrossAxisAlignment.stretch,
        spacing: 8,
        children: [
          Text(quotedText.text, style: textTheme.titleMedium),
          if (quotedText.reference case final reference?)
            Text(
              reference,
              style: textTheme.bodyMedium?.copyWith(
                color: colorScheme.onSurfaceVariant,
              ),
            ),
        ],
      ),
    );
  }
}
