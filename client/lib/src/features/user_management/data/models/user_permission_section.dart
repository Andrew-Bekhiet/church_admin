import 'package:material_symbols_icons/material_symbols_icons.dart';
import 'package:material_ui/material_ui.dart';

enum UserPermissionSection {
  general(title: 'صلاحيات عامة', icon: Symbols.shield),
  scopeBound(
    icon: Symbols.shield_person,
    title: 'صلاحيات ضمن نطاق المستخدم',
    helper: 'تُطبَّق فقط على الأشخاص الذين يستطيع المستخدم تعديل بياناتهم',
  );

  final String title;
  final IconData icon;
  final String? helper;

  const UserPermissionSection({
    required this.title,
    required this.icon,
    this.helper,
  });
}
