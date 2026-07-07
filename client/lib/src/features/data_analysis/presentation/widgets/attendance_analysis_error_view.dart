import 'package:flutter/material.dart';

class AttendanceAnalysisErrorView extends StatelessWidget {
  final Object error;
  final VoidCallback onRetry;

  const AttendanceAnalysisErrorView({
    required this.error,
    required this.onRetry,
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 24),
      child: Column(
        mainAxisSize: MainAxisSize.min,
        spacing: 8,
        children: [
          Text('تعذر تحميل تحليل الحضور: $error'),
          OutlinedButton.icon(
            onPressed: onRetry,
            icon: const Icon(Icons.refresh),
            label: const Text('إعادة المحاولة'),
          ),
        ],
      ),
    );
  }
}
