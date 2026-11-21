import 'package:material_ui/material_ui.dart';

class PersonFingerprintIdsSheetNotice extends StatelessWidget {
  final IconData icon;
  final String title;
  final String detail;

  const PersonFingerprintIdsSheetNotice({
    required this.icon,
    required this.title,
    required this.detail,
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    final colorScheme = ColorScheme.of(context);
    final textTheme = TextTheme.of(context);

    return Padding(
      padding: const EdgeInsetsDirectional.symmetric(vertical: 16),
      child: Column(
        mainAxisSize: .min,
        spacing: 8,
        children: [
          CircleAvatar(
            radius: 32,
            backgroundColor: colorScheme.secondaryContainer,
            foregroundColor: colorScheme.onSecondaryContainer,
            child: Icon(icon, size: 32),
          ),
          Text(title, style: textTheme.titleMedium, textAlign: .center),
          Text(
            detail,
            style: textTheme.bodyMedium?.copyWith(
              color: colorScheme.onSurfaceVariant,
            ),
            textAlign: .center,
          ),
        ],
      ),
    );
  }
}
