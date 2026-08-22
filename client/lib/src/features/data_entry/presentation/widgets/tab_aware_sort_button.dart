import 'package:flutter/material.dart';
import 'package:material_symbols_icons/material_symbols_icons.dart';

class TabAwareSortButton extends StatelessWidget {
  final void Function(int tabIndex) onPressed;

  const TabAwareSortButton({required this.onPressed, super.key});

  @override
  Widget build(BuildContext context) {
    return Builder(
      builder: (context) => IconButton(
        visualDensity: VisualDensity.compact,
        padding: EdgeInsets.zero,
        icon: const Icon(Symbols.sort),
        onPressed: () => onPressed(DefaultTabController.of(context).index),
      ),
    );
  }
}
