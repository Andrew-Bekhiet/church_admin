import 'package:church_admin/church_admin.dart';
import 'package:intl/intl.dart';
import 'package:material_ui/material_ui.dart';

class HomeDailySneksarBody extends StatelessWidget {
  static final NumberFormat _numberFormat = NumberFormat('#', 'ar_EG');

  final HomeDailySneksar sneksar;

  const HomeDailySneksarBody({required this.sneksar, super.key});

  @override
  Widget build(BuildContext context) {
    final textTheme = TextTheme.of(context);
    final colorScheme = ColorScheme.of(context);

    return Column(
      mainAxisSize: MainAxisSize.min,
      crossAxisAlignment: CrossAxisAlignment.stretch,
      children: [
        if (sneksar.date case final date?) ...[
          Padding(
            padding: const EdgeInsetsDirectional.only(
              start: 16,
              end: 16,
              top: 12,
            ),
            child: Text(
              date,
              style: textTheme.bodyMedium?.copyWith(
                color: colorScheme.onSurfaceVariant,
              ),
            ),
          ),
          const Divider(),
        ],
        for (final (index, commemoration)
            in sneksar.commemorations.indexed) ...[
          if (index > 0) const Divider(indent: 16, endIndent: 16),
          Padding(
            padding: const EdgeInsetsDirectional.symmetric(
              horizontal: 16,
              vertical: 4,
            ),
            child: Row(
              crossAxisAlignment: CrossAxisAlignment.start,
              spacing: 12,
              children: [
                Text(
                  _numberFormat.format(index + 1),
                  style: textTheme.bodyLarge?.copyWith(
                    color: colorScheme.primary,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                Expanded(
                  child: Text(commemoration, style: textTheme.bodyLarge),
                ),
              ],
            ),
          ),
        ],
      ],
    );
  }
}
