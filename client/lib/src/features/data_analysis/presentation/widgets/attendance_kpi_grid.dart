import 'package:flutter/material.dart';

class AttendanceKpiGrid extends StatelessWidget {
  static const double _mainAxisExtent = 100;

  final List<Widget> children;

  const AttendanceKpiGrid({required this.children, super.key});

  @override
  Widget build(BuildContext context) {
    return GridView.count(
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
