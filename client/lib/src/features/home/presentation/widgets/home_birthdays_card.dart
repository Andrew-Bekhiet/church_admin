import 'package:church_admin/church_admin.dart';
import 'package:material_symbols_icons/symbols.dart';
import 'package:material_ui/material_ui.dart';

class HomeBirthdaysCard extends StatelessWidget {
  final HomeBirthdays birthdays;
  final VoidCallback onTap;

  const HomeBirthdaysCard({
    required this.birthdays,
    required this.onTap,
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Card.filled(
      color: ColorScheme.of(context).surfaceContainerHigh,
      clipBehavior: Clip.antiAlias,
      child: ListTile(
        onTap: onTap,
        leading: const Icon(Symbols.cake),
        title: Text(
          'أعياد الميلاد اليوم',
          style: TextTheme.of(context).titleMedium?.copyWith(
            fontWeight: FontWeight.bold,
          ),
        ),
        subtitle: Text(
          birthdays.preview,
          maxLines: 2,
          overflow: TextOverflow.ellipsis,
        ),
        trailing: const Icon(Symbols.chevron_forward),
      ),
    );
  }
}
