import 'package:flutter/material.dart';
import 'package:material_symbols_icons/material_symbols_icons.dart';

class AttendancePersonToggle extends StatelessWidget {
  final bool isPresent;
  final VoidCallback onTap;

  const AttendancePersonToggle({
    required this.isPresent,
    required this.onTap,
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return IconButton(
      onPressed: onTap,
      iconSize: 32,
      tooltip: isPresent ? 'إلغاء الحضور' : 'تسجيل الحضور',
      icon: Icon(
        isPresent ? Symbols.check_circle : Symbols.radio_button_unchecked,
        fill: isPresent ? 1 : 0,
      ),
    );
  }
}
