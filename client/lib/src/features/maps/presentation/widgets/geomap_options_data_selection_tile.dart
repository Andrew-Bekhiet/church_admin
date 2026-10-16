import 'dart:async';

import 'package:church_admin/church_admin.dart' hide Polygon;
import 'package:flutter/material.dart';

class GeomapOptionsDataSelectionTile extends StatelessWidget {
  final String title;
  final Set<ViewableWithID> selected;
  final Future<void> Function() onSelect;
  const GeomapOptionsDataSelectionTile({
    required this.title,
    required this.selected,
    required this.onSelect,
  });

  @override
  Widget build(BuildContext context) {
    return ListTile(
      title: Text(title),
      subtitle: selected.isEmpty
          ? const Text('الكل')
          : Text(selected.take(10).map((e) => e.name).join(',')),
      trailing: TextButton(
        onPressed: onSelect,
        child: const Text('اختيار'),
      ),
    );
  }
}
