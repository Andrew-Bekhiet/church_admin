import 'package:flutter/material.dart';
import 'package:material_symbols_icons/material_symbols_icons.dart';

extension SnackbarIcons on ScaffoldMessengerState {
  void showErrorSnackBar(
    String message, {
    Duration duration = const Duration(seconds: 8),
  }) {
    final theme = Theme.of(context);
    final colorScheme = theme.colorScheme;

    showSnackBar(
      SnackBar(
        backgroundColor: colorScheme.error,
        content: Row(
          spacing: 10,
          children: [
            Icon(Symbols.error, color: colorScheme.onError),
            Text(message),
          ],
        ),
        duration: duration,
      ),
    );
  }

  void showInfoSnackBar(String message) {
    showSnackBar(
      SnackBar(
        content: Row(
          children: [
            const Icon(Symbols.info),
            Text(message),
          ],
        ),
      ),
    );
  }
}
