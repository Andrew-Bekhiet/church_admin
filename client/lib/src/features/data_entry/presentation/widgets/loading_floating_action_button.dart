import 'package:flutter/material.dart';

class LoadingFloatingActionButton extends StatelessWidget {
  const LoadingFloatingActionButton({super.key});

  @override
  Widget build(BuildContext context) {
    return const FloatingActionButton(
      key: LoadingFloatingActionButtonKeys.button,
      onPressed: null,
      child: SizedBox.square(
        dimension: 24,
        child: CircularProgressIndicator(),
      ),
    );
  }
}

class LoadingFloatingActionButtonKeys {
  static const button = ValueKey('loadingFloatingActionButton');

  const LoadingFloatingActionButtonKeys._();
}
