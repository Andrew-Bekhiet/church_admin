import 'package:material_symbols_icons/symbols.dart';
import 'package:material_ui/material_ui.dart';

enum HomeDailyDataType {
  verse('الآية', 'آية', Symbols.menu_book, canShowAnother: true),
  sneksar('السنكسار', 'سنكسار', Symbols.history_edu, canShowAnother: false),
  saying('أقوال أباء', 'مقولة', Symbols.format_quote, canShowAnother: true);

  final String title;
  final String label;
  final IconData icon;
  final bool canShowAnother;

  const HomeDailyDataType(
    this.title,
    this.label,
    this.icon, {
    required this.canShowAnother,
  });
}
