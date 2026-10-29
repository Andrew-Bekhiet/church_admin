import 'package:material_symbols_icons/material_symbols_icons.dart';
import 'package:material_ui/material_ui.dart';

class SelectAllOrNoneButton extends StatelessWidget {
  final bool areAllShownItemsSelected;
  final VoidCallback onSelectAll;
  final VoidCallback onSelectNone;

  const SelectAllOrNoneButton({
    required this.areAllShownItemsSelected,
    required this.onSelectAll,
    required this.onSelectNone,
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return areAllShownItemsSelected
        ? IconButton(
            tooltip: 'تحديد لا شئ',
            icon: const Icon(Symbols.deselect),
            onPressed: onSelectNone,
          )
        : IconButton(
            tooltip: 'تحديد الكل',
            icon: const Icon(Symbols.select_all),
            onPressed: onSelectAll,
          );
  }
}
