import 'package:flutter/material.dart';
import 'package:posthog_flutter/posthog_flutter.dart';

class SignOutConfirmationDialog extends StatelessWidget {
  const SignOutConfirmationDialog({super.key});

  @override
  Widget build(BuildContext context) {
    return PostHogUnmaskWidget(
      child: AlertDialog(
        title: const Text('تسجيل الخروج؟'),
        content: const Text(
          'سيتم حذف جميع بيانات البرنامج المحفوظة على هذا الجهاز. '
          'يمكنك بعد ذلك إعادة تعيين كلمة المرور من شاشة تسجيل الدخول.',
        ),
        actions: [
          OutlinedButton(
            onPressed: () => Navigator.of(context).pop(false),
            child: const Text('إلغاء'),
          ),
          FilledButton(
            onPressed: () => Navigator.of(context).pop(true),
            child: const Text('تسجيل الخروج'),
          ),
        ],
      ),
    );
  }
}
