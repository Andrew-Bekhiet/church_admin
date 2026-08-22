import 'package:church_admin/church_admin.dart';
import 'package:flutter/material.dart';

class ObjectSelectionPreviewList<T extends Viewable> extends StatelessWidget {
  final Set<T> values;

  const ObjectSelectionPreviewList(this.values, {super.key});

  @override
  Widget build(BuildContext context) {
    return IgnorePointer(
      child: Column(
        children: [
          for (final value in values) ViewableObjectWidget(value, isDense: true),
        ],
      ),
    );
  }
}
