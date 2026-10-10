import 'package:church_admin/church_admin.dart';
import 'package:flutter/material.dart';
import 'package:material_symbols_icons/material_symbols_icons.dart';

class DataCheckItemRow extends StatelessWidget {
  static ValueKey<String> keyFor(DataCheckItem item) =>
      ValueKey('dataCheckItem.${item.check}');

  final DataCheckItem item;

  DataCheckItemRow({required this.item}) : super(key: keyFor(item));

  @override
  Widget build(BuildContext context) {
    return Row(
      spacing: 12,
      children: [
        Icon(
          item.passed ? Symbols.check_circle : Symbols.cancel,
          fill: 1,
          color: item.passed
              ? DataCheckColors.of(context).complete
              : ColorScheme.of(context).error,
        ),
        Expanded(child: Text(item.label)),
      ],
    );
  }
}
