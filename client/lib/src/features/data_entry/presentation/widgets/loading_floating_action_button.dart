import 'package:flutter/material.dart';

class LoadingFloatingActionButton extends StatelessWidget {
  static const button = ValueKey('loadingFloatingActionButton');

  const LoadingFloatingActionButton({super.key});

  @override
  Widget build(BuildContext context) {
    return const FloatingActionButton(
      key: button,
      onPressed: null,
      child: SizedBox.square(
        dimension: 24,
        child: CircularProgressIndicator(),
      ),
    );
  }
}
