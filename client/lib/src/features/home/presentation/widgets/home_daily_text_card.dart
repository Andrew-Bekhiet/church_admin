import 'package:church_admin/church_admin.dart';
import 'package:material_ui/material_ui.dart';

class HomeDailyTextCard extends StatelessWidget {
  final HomeDailyDataType type;
  final String text;
  final VoidCallback onTap;

  const HomeDailyTextCard({
    required this.type,
    required this.text,
    required this.onTap,
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    final textTheme = TextTheme.of(context);
    final colorScheme = ColorScheme.of(context);

    return Card.filled(
      color: colorScheme.surfaceContainerHigh,
      clipBehavior: Clip.antiAlias,
      child: InkWell(
        onTap: onTap,
        child: Padding(
          padding: const EdgeInsetsDirectional.all(16),
          child: Column(
            mainAxisSize: MainAxisSize.min,
            crossAxisAlignment: CrossAxisAlignment.stretch,
            spacing: 8,
            children: [
              Row(
                spacing: 8,
                children: [
                  Icon(type.icon),
                  Text(
                    type.title,
                    style: textTheme.titleMedium?.copyWith(
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ],
              ),
              Text(
                text,
                maxLines: 3,
                overflow: TextOverflow.ellipsis,
                style: textTheme.bodyLarge,
              ),
              Align(
                alignment: AlignmentDirectional.centerEnd,
                child: Text(
                  'اقرأ المزيد',
                  style: textTheme.labelMedium?.copyWith(
                    color: colorScheme.primary,
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
