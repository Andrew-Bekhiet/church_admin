import 'package:church_admin/church_admin.dart';
import 'package:material_symbols_icons/symbols.dart';
import 'package:material_ui/material_ui.dart';

enum HomeMode {
  sundaySchool(
    label: 'مدارس الأحد',
    icon: Symbols.school,
    tabs: [
      HomeTab.summary,
      HomeTab.services,
      HomeTab.sundaySchoolPersons,
    ],
  ),
  churchData(
    label: 'الافتقاد',
    icon: Symbols.church,
    tabs: [
      HomeTab.summary,
      HomeTab.areas,
      HomeTab.streets,
      HomeTab.families,
      HomeTab.stores,
      HomeTab.churchDataPersons,
    ],
  );

  final String label;
  final IconData icon;
  final List<HomeTab> tabs;

  HomeMode get other => switch (this) {
    sundaySchool => churchData,
    churchData => sundaySchool,
  };

  const HomeMode({
    required this.label,
    required this.icon,
    required this.tabs,
  });
}
