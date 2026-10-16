import 'package:material_ui/material_ui.dart';

class HomeDrawerDestination {
  final Widget label;
  final Widget icon;
  final VoidCallback onTap;

  const HomeDrawerDestination({
    required this.label,
    required this.icon,
    required this.onTap,
  });
}
