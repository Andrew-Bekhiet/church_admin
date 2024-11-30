import 'package:church_admin/church_admin.dart';
import 'package:flutter/material.dart';
import 'package:material_symbols_icons/material_symbols_icons.dart';

class EmailVerificationScreen extends StatelessWidget {
  const EmailVerificationScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('التحقق من البريد الإلكتروني'),
        actions: [
          IconButton(
            icon: const Icon(Symbols.logout),
            onPressed: AuthService.I.signOut,
          ),
        ],
      ),
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Column(
          children: [
            Text(
              'تم إرسال رسالة إلى بريدك الإلكتروني '
              'افتحها واضغط على الرابط للتحقق من بريدك الإلكتروني',
              style: Theme.of(context).textTheme.bodyLarge,
            ),
            const SizedBox(height: 10),
            FilledButton(
              onPressed: AuthService.I.reload,
              child: const Text('تأكيد البريد الإلكتروني'),
            ),
            const SizedBox(height: 16),
            FilledButton.tonal(
              onPressed: () async {
                final scaffoldMessenger = ScaffoldMessenger.of(context);

                await AuthService.I.sendEmailVerification();

                scaffoldMessenger.showSnackBar(
                  const SnackBar(
                    content: Text('تم إعادة إرسال رسالة التحقق'),
                  ),
                );
              },
              child: const Text('إعادة إرسال رسالة التحقق'),
            ),
          ],
        ),
      ),
    );
  }
}
