import 'package:church_admin/church_admin.dart';
import 'package:flutter/material.dart';

class ObjectSelectionPreview<T extends Viewable> extends StatelessWidget {
  final T value;

  const ObjectSelectionPreview(this.value, {super.key});

  @override
  Widget build(BuildContext context) {
    return IgnorePointer(
      child: ViewableObjectWidget(value, isDense: true),
    );
  }
}
