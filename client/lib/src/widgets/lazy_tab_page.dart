import 'package:flutter/material.dart';

class LazyTabPage extends StatelessWidget {
  const LazyTabPage({
    required this.tabController,
    required this.builder,
    required this.index,
    this.placeholder,
    super.key,
  });

  final TabController tabController;
  final Widget Function(BuildContext) builder;
  final int index;
  final Widget? placeholder;

  @override
  Widget build(BuildContext context) {
    return AnimatedBuilder(
      animation: tabController,
      builder: (context, _) => tabController.index == index
          ? builder(context)
          : placeholder ?? const Center(child: CircularProgressIndicator()),
    );
  }
}
