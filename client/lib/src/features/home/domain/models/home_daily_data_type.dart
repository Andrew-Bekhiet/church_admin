import 'package:material_symbols_icons/symbols.dart';
import 'package:material_ui/material_ui.dart';

enum HomeDailyDataType {
  verse('الآية', 'آية', Symbols.menu_book),
  sneksar('السنكسار', 'سنكسار', Symbols.history_edu),
  saying('أقوال أباء', 'مقولة', Symbols.format_quote);

  final String title;
  final String label;
  final IconData icon;

  bool get canShowAnother => this != sneksar;

  const HomeDailyDataType(this.title, this.label, this.icon);
}
