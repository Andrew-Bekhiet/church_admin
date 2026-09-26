import 'package:church_admin/church_admin.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:material_symbols_icons/material_symbols_icons.dart';

class SendPasswordResetButton extends StatelessWidget {
  final String email;

  const SendPasswordResetButton({required this.email, super.key});

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (_) => PasswordResetCubit(),
      child: BlocConsumer<PasswordResetCubit, PasswordResetState>(
        listener: _listenToPasswordResetState,
        builder: (context, state) => ListTile(
          title: FilledButton.tonalIcon(
            style: Theme.of(context).filledTonalButtonStyleWorkaround,
            icon: const Icon(Symbols.lock_reset),
            label: const Text('إرسال رابط إعادة تعيين كلمة المرور'),
            onPressed: () => _confirmAndSend(context),
          ),
        ),
      ),
    );
  }

  void _listenToPasswordResetState(
    BuildContext context,
    PasswordResetState state,
  ) {
    final isolatedEmail = '${Unicode.LRI}$email${Unicode.PDI}';

    switch (state) {
      case PasswordResetIdle():
      case PasswordResetSending():
        return;

      case PasswordResetSent():
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

      case PasswordResetFailed():
        scaffoldMessenger.showErrorSnackBar(
          'حدث خطأ أثناء إرسال رابط إعادة تعيين كلمة المرور، يرجى المحاولة لاحقا',
        );
    }
  }

  Future<void> _confirmAndSend(BuildContext context) async {
    final isolatedEmail = '${Unicode.LRI}$email${Unicode.PDI}';
    final cubit = context.read<PasswordResetCubit>();

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

    if (!(confirmed ?? false)) return;

    await cubit.sendPasswordResetEmail(email);
  }
}
