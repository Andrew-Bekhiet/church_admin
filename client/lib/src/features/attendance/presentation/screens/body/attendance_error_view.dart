import 'package:flutter/material.dart';

/// Centered error message with a retry button.
class AttendanceErrorView extends StatelessWidget {
  final String message;
  final VoidCallback onRetry;

  const AttendanceErrorView({
    required this.message,
    required this.onRetry,
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          Text(message),
          const SizedBox(height: 12),
          FilledButton(onPressed: onRetry, child: const Text('إعادة المحاولة')),
        ],
      ),
    );
  }
}
