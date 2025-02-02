import 'package:church_admin/church_admin.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:material_symbols_icons/symbols.dart';

class EmailVerificationScreen extends StatelessWidget {
  const EmailVerificationScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final authBloc = AuthBloc.I;

    return BlocBuilder<AuthBloc, AuthState>(
      bloc: authBloc,
      builder: (context, state) {
        final isLoading = state is AuthLoading;

        return Scaffold(
          appBar: AppBar(
            title: const Text('التحقق من البريد الإلكتروني'),
            actions: const [SignOutButton()],
          ),
          body: Padding(
            padding: const EdgeInsets.all(8),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.stretch,
              spacing: 20,
              children: [
                Text(
                  'تم إرسال رسالة إلى بريدك الإلكتروني \n'
                  'افتحها واضغط على الرابط للتحقق من بريدك الإلكتروني',
                  style: Theme.of(context).textTheme.headlineMedium,
                  textAlign: TextAlign.center,
                ),
                if (isLoading)
                  const Center(child: CircularProgressIndicator())
                else
                  const SizedBox(height: 10),
                FilledButton(
                  onPressed: () => authBloc.add(const ReloadUser()),
                  child: const Text('تأكيد البريد الإلكتروني'),
                ),
                FilledButton.tonal(
                  onPressed: isLoading
                      ? null
                      : () async {
                          final scaffoldMessenger =
                              ScaffoldMessenger.of(context);

                          authBloc.add(const SendEmailVerification());
                          final nextState = await authBloc.stream
                              .firstWhere((state) => state is! AuthLoading);

                          if (nextState is AuthExceptionState) {
                            final theme = Theme.of(context);

                            scaffoldMessenger.showSnackBar(
                              SnackBar(
                                backgroundColor: theme.colorScheme.error,
                                content: Row(
                                  spacing: 10,
                                  children: [
                                    Icon(
                                      Symbols.error,
                                      color: theme.colorScheme.onError,
                                    ),
                                    Expanded(
                                      child: Text(
                                        nextState.exception.toString(),
                                      ),
                                    ),
                                  ],
                                ),
                                duration: const Duration(seconds: 8),
                              ),
                            );
                          } else {
                            scaffoldMessenger.showSnackBar(
                              const SnackBar(
                                content: Text('تم إعادة إرسال رسالة التحقق'),
                              ),
                            );
                          }
                        },
                  child: const Text('إعادة إرسال رسالة التحقق'),
                ),
              ],
            ),
          ),
        );
      },
    );
  }
}
