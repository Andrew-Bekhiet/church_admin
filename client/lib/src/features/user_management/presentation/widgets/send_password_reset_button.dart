import 'package:church_admin/church_admin.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:material_symbols_icons/material_symbols_icons.dart';

class SendPasswordResetButton extends StatelessWidget {
  final String email;

  const SendPasswordResetButton({required this.email, super.key});

  @override
  Widget build(BuildContext context) {
    return ListTile(
      title: FilledButton.tonalIcon(
        style: Theme.of(context).filledTonalButtonStyleWorkaround,
        icon: const Icon(Symbols.lock_reset),
        label: const Text('إرسال رابط إعادة تعيين كلمة المرور'),
        onPressed: () => _confirmAndSend(context),
      ),
    );
  }

  Future<void> _confirmAndSend(BuildContext context) async {
    final isolatedEmail = '${Unicode.LRI}$email${Unicode.PDI}';

    final confirmed = await showDialog<bool>(
      context: context,
      builder: (context) => AlertDialog(
        title: const Text('إرسال رابط إعادة تعيين كلمة المرور؟'),
        content: Text(
          'سيتم إرسال رابط إعادة تعيين كلمة المرور إلى $isolatedEmail',
        ),
        actions: [
          OutlinedButton(
            onPressed: () => Navigator.of(context).pop(false),
            child: const Text('إلغاء'),
          ),
          FilledButton(
            onPressed: () => Navigator.of(context).pop(true),
            child: const Text('إرسال'),
          ),
        ],
      ),
    );

    if (confirmed != true) return;

    try {
      await globalProviderContainer
          .read(authRepositoryProvider)
          .sendPasswordResetEmail(email: email);
    } catch (err, stkTrace) {
      await LoggingService.I.exception(
        LogRecord(error: err, stackTrace: stkTrace),
      );

      scaffoldMessenger.showErrorSnackBar(
        'حدث خطأ أثناء إرسال رابط إعادة تعيين كلمة المرور، يرجى المحاولة لاحقا',
      );

      return;
    }

    scaffoldMessenger
      ..hideCurrentSnackBar()
      ..showSnackBar(
        SnackBar(
          content: Text(
            'تم إرسال رابط إعادة تعيين كلمة المرور إلى $isolatedEmail',
          ),
          duration: const Duration(seconds: 3),
        ),
      );
  }
}
