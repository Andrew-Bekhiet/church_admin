import 'package:material_symbols_icons/material_symbols_icons.dart';
import 'package:material_ui/material_ui.dart';

class TabAwareSortButton extends StatelessWidget {
  final void Function(int tabIndex) onPressed;

  const TabAwareSortButton({required this.onPressed, super.key});

  @override
  Widget build(BuildContext context) {
    return Builder(
      builder: (context) => IconButton(
        key: TabAwareSortButtonKeys.button,
        visualDensity: VisualDensity.compact,
        padding: EdgeInsets.zero,
        icon: const Icon(Symbols.sort),
        onPressed: () => onPressed(DefaultTabController.of(context).index),
      ),
    );
  }
}

abstract final class TabAwareSortButtonKeys {
  static const button = Key('TabAwareSortButton.button');
}
