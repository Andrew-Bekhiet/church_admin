import 'package:church_admin/church_admin.dart';
import 'package:flutter/material.dart';

class ShowMoreList<T extends Viewable> extends StatelessWidget {
  final List<T> items;
  final int visibleItemsLimit;
  final void Function()? onLoadAll;

  const ShowMoreList({
    required this.items,
    this.visibleItemsLimit = 3,
    this.onLoadAll,
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Wrap(
      children: [
        for (final item in items.take(visibleItemsLimit + 1))
          if (items.length >= visibleItemsLimit + 1 &&
              item == items[visibleItemsLimit])
            ExpansionTile(
              onExpansionChanged: onLoadAll != null
                  ? (expanded) => expanded ? onLoadAll!() : null
                  : null,
              title: const Text('اظهار المزيد'),
              children: [
                ViewableObjectCard(item),
                for (final o in items.skip(visibleItemsLimit + 1))
                  ViewableObjectCard(o),
              ],
            )
          else
            ViewableObjectCard(item),
      ],
    );
  }
}
