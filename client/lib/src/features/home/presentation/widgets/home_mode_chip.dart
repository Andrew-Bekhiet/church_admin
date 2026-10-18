import 'package:church_admin/church_admin.dart';
import 'package:material_symbols_icons/symbols.dart';
import 'package:material_ui/material_ui.dart';

class HomeModeChip extends StatelessWidget {
  final HomeMode mode;
  final VoidCallback onPressed;

  const HomeModeChip({
    required this.mode,
    required this.onPressed,
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    final colorScheme = ColorScheme.of(context);

    return SizedBox(
      height: 40,
      child: ActionChip(
        avatar: Icon(mode.icon, color: colorScheme.onSurfaceVariant),
        label: Row(
          mainAxisSize: MainAxisSize.min,
          spacing: 4,
          children: [
            Text(mode.label),
            Icon(
              Symbols.swap_horiz,
              size: 18,
              color: colorScheme.onSurfaceVariant,
            ),
          ],
        ),
        labelStyle: TextTheme.of(context).titleSmall,
        tooltip: 'تبديل إلى ${mode.other.label}',
        onPressed: onPressed,
        color: WidgetStatePropertyAll(colorScheme.surfaceContainerHigh),
        side: BorderSide.none,
        shape: const StadiumBorder(),
        materialTapTargetSize: MaterialTapTargetSize.shrinkWrap,
      ),
    );
  }
}
