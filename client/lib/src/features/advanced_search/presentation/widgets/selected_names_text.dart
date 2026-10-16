import 'package:church_admin/church_admin.dart';
import 'package:flutter/material.dart';

class SelectedNamesText<T extends ViewableWithID> extends StatelessWidget {
  final Set<T> selected;

  const SelectedNamesText({required this.selected, super.key});

  @override
  Widget build(BuildContext context) =>
      Text(selected.map((e) => e.name).join(', '));
}
