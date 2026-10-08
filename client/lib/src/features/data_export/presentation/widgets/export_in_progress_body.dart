import 'dart:async';
import 'dart:math';

import 'package:flutter/material.dart';

class ExportInProgressBody extends StatefulWidget {
  final double? progress;

  const ExportInProgressBody({this.progress, super.key});

  @override
  State<ExportInProgressBody> createState() => _ExportInProgressBodyState();
}

class _ExportInProgressBodyState extends State<ExportInProgressBody> {
  static const _ponderInterval = Duration(seconds: 4);
  static const _ponderingStatements = [
    'نرتّب البيانات داخل ملف الإكسيل...',
    'نجهّز الأعمدة والصفوف لتكون القراءة أسهل...',
    'نجمع البيانات المحددة قبل إنشاء الملف...',
    'نراجع محتوى التصدير قبل حفظ الملف...',
    'نعالج البيانات التي اخترتها...',
    'نُجهّز الملف للتنزيل...',
    'نحوّل البيانات إلى تنسيق التصدير...',
    'ما زلنا نعمل في الخلفية...',
    'شكرًا لصبرك، العملية مستمرة...',
    'نضع اللمسات الأخيرة على الملف...',
    'تقريبًا انتهينا، لا تغلق التطبيق...',
  ];

  final _random = Random();
  late String _lastPonderingStatement = _pickPonderingStatement();

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    final colorScheme = theme.colorScheme;

    final isDownloading = widget.progress != null;

    return Center(
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 32),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            CircularProgressIndicator(
              value: widget.progress,
              constraints: const BoxConstraints.tightFor(
                width: 100,
                height: 100,
              ),
              strokeWidth: isDownloading ? 51 : 4,
              color: colorScheme.primary,
              strokeCap: StrokeCap.round,
              strokeAlign: -1,
            ),
            Padding(
              padding: const EdgeInsets.symmetric(vertical: 24),
              child: Text(
                isDownloading
                    ? 'جاري تحميل الملف'
                    : 'جاري تجهيز ملف التصدير...',
                style: theme.textTheme.headlineSmall,
                textAlign: TextAlign.center,
              ),
            ),
            Text(
              'قد يستغرق ذلك بضع دقائق حسب حجم البيانات المحددة',
              style: theme.textTheme.bodyMedium?.copyWith(
                color: colorScheme.onSurfaceVariant,
              ),
              textAlign: TextAlign.center,
            ),
            if (!isDownloading)
              StreamBuilder(
                stream: Stream.periodic(
                  _ponderInterval,
                  (count) => _lastPonderingStatement = _pickPonderingStatement(
                    exclude: _lastPonderingStatement,
                  ),
                ),
                builder: (context, textSnapshot) {
                  return AnimatedSwitcher(
                    duration: const Duration(milliseconds: 300),
                    child: Text(
                      textSnapshot.data ?? '',
                      key: ValueKey(textSnapshot.data),
                      style: theme.textTheme.bodySmall?.copyWith(
                        color: colorScheme.onSurfaceVariant.withValues(
                          alpha: 0.8,
                        ),
                      ),
                      textAlign: TextAlign.center,
                    ),
                  );
                },
              ),
          ],
        ),
      ),
    );
  }

  String _pickPonderingStatement({String? exclude}) {
    final candidates = _ponderingStatements.where((s) => s != exclude).toList();

    return candidates[_random.nextInt(candidates.length)];
  }
}
