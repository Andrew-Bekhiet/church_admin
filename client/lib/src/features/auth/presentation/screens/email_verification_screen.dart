import 'package:church_admin/church_admin.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class EmailVerificationScreen extends StatelessWidget {
  const EmailVerificationScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final authBloc = AuthBloc.I;
    final themeData = Theme.of(context);

    return BlocBuilder<AuthBloc, AuthState>(
      bloc: authBloc,
      builder: (context, state) {
        final isLoading = state is AuthLoading;

        final email = switch (state.unwrapped) {
          AuthAuthenticated(:final authUser) => authUser.email,
          _ => 'بريدك الإلكتروني',
        };

        return Scaffold(
          appBar: AppBar(
            title: const Text('التحقق من البريد الإلكتروني'),
            actions: const [SignOutButton()],
          ),
          body: Padding(
            padding: const EdgeInsets.all(8),
            child: SingleChildScrollView(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.stretch,
                spacing: 10,
                children: [
                  Image.asset(
                    'assets/images/email-verification.png',
                  ),
                  Text(
                    'تم إرسال رسالة إلى $email \n'
                    'افتحها واضغط على الرابط، ثم ارجع للتطبيق واضغط على تأكيد البريد الإلكتروني',
                    style: themeData.textTheme.titleLarge,
                    textAlign: TextAlign.center,
                  ),
                  Text(
                    'لا تنس التحقق من الرسائل غير المرغوب فيها (Spam/Junk)',
                    style: themeData.textTheme.titleMedium,
                    textAlign: TextAlign.center,
                  ),
                  if (isLoading)
                    const Center(child: CircularProgressIndicator())
                  else
                    const SizedBox(height: 10),
                  FilledButton(
                    key: EmailVerificationScreenKeys.confirmEmailButtonKey,
                    onPressed: () => authBloc.add(const ReloadUser()),
                    child: const Text('تمام! ضغطت على الرابط'),
                  ),
                  FilledButton.tonal(
                    key: EmailVerificationScreenKeys.resendEmailButtonKey,
                    style: themeData.filledTonalButtonStyleWorkaround,
                    onPressed: isLoading
                        ? null
                        : () async {
                            final scaffoldMessenger = ScaffoldMessenger.of(
                              context,
                            );

                            authBloc.add(const SendEmailVerification());
                            final nextState = await authBloc.stream.firstWhere(
                              (state) => state is! AuthLoading,
                            );

                            if (nextState is AuthExceptionState) {
                              scaffoldMessenger.showErrorSnackBar(
                                nextState.exception.toString(),
                              );
                            } else {
                              scaffoldMessenger.showInfoSnackBar(
                                'تم إعادة إرسال رسالة التحقق',
                              );
                            }
                          },
                    child: const Text('إعادة إرسال رسالة التحقق'),
                  ),
                  Text(
                    'إذا كان لديك كود دعوة، يمكنك تفعيل الحساب الآن',
                    style: themeData.textTheme.titleMedium,
                    textAlign: TextAlign.center,
                  ),
                  const InvitationCodeForm(),
                  const SizedBox(height: 50),
                ],
              ),
            ),
          ),
        );
      },
    );
  }
}

final class EmailVerificationScreenKeys {
  static const confirmEmailButtonKey = Key('Confirm Email Button Key');
  static const resendEmailButtonKey = Key('Resend Email Button Key');
}
