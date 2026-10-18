import 'package:church_admin/church_admin.dart';
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
    return ActionChip(
      avatar: Icon(mode.icon),
      label: Text(mode.label),
      tooltip: 'تبديل إلى ${mode.other.label}',
      onPressed: onPressed,
    );
  }
}
