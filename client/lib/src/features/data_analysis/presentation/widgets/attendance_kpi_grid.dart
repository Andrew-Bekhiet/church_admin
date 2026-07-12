import 'package:flutter/material.dart';

class AttendanceKpiGrid extends StatelessWidget {
  static const double _mainAxisExtent = 100;

  final List<Widget> children;
  final EdgeInsets? padding;

  const AttendanceKpiGrid({required this.children, this.padding, super.key});

  @override
  Widget build(BuildContext context) {
    return GridView.count(
      padding: padding,
      crossAxisCount: 2,
      shrinkWrap: true,
      physics: const NeverScrollableScrollPhysics(),
      mainAxisSpacing: 8,
      crossAxisSpacing: 8,
      mainAxisExtent: _mainAxisExtent,
      children: children,
    );
  }
}
