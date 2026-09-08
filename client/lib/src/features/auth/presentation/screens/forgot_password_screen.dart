import 'package:church_admin/church_admin.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class ForgotPasswordScreen extends StatefulWidget {
  const ForgotPasswordScreen({super.key});

  @override
  State<ForgotPasswordScreen> createState() => _ForgotPasswordScreenState();
}

final class ForgotPasswordScreenKeys {
  static const emailFieldKey = Key('Email Field Key');
  static const sendResetLinkButtonKey = Key('Send Reset Link Button Key');
  static const backButtonKey = Key('Back Button Key');
}

class _ForgotPasswordScreenState extends State<ForgotPasswordScreen> {
  final _formKey = GlobalKey<FormState>();
  final _emailController = TextEditingController();
  final _authBloc = AuthBloc.I;

  bool _sent = false;

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);

    return Scaffold(
      appBar: AppBar(
        title: const Text('نسيت كلمة المرور'),
      ),
      body: Form(
        key: _formKey,
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 16),
          child: BlocSelector<AuthBloc, AuthState, bool>(
            bloc: _authBloc,
            selector: (state) => state is AuthLoading,
            builder: (context, loading) {
              return SingleChildScrollView(
                child: Column(
                  spacing: 20,
                  crossAxisAlignment: CrossAxisAlignment.stretch,
                  children: !_sent
                      ? [
                          Image.asset('assets/images/forgot-password.png'),
                          Text(
                            'سيتم إرسال لينك لتغيير كلمة المرور على بريدك الإلكتروني المسجل بالتطبيق',
                            style: theme.textTheme.titleLarge,
                          ),
                          TextFormField(
                            key: ForgotPasswordScreenKeys.emailFieldKey,
                            decoration: const InputDecoration(
                              labelText: 'البريد الإلكتروني',
                            ),
                            keyboardType: TextInputType.emailAddress,
                            autofillHints: const [AutofillHints.email],
                            textInputAction: TextInputAction.done,
                            onFieldSubmitted: (value) => _sendResetLink(),
                            autovalidateMode: AutovalidateMode.onUnfocus,
                            validator: (email) {
                              if (email == null || email.isEmpty) {
                                return 'البريد الإلكتروني لا يمكن أن يكون فارغاً';
                              } else if (!emailRegex.hasMatch(email)) {
                                return 'البريد الإلكتروني غير صالح';
                              }

                              return null;
                            },
                            controller: _emailController,
                          ),
                          FilledButton(
                            key:
                                ForgotPasswordScreenKeys.sendResetLinkButtonKey,
                            onPressed: loading ? null : _sendResetLink,
                            child: loading
                                ? const CircularProgressIndicator()
                                : const Text('إرسال'),
                          ),
                        ]
                      : [
                          Image.asset('assets/images/email-verification.png'),
                          Text(
                            'إذا كان ${_emailController.text} مسجلاً بالفعل في التطبيق، سيتم إرسال لينك لتغيير كلمة المرور على بريدك الإلكتروني',
                            style: theme.textTheme.titleLarge,
                          ),
                          FilledButton(
                            key: ForgotPasswordScreenKeys.backButtonKey,
                            onPressed: () => Navigator.pop(context),
                            child: const Text('رجوع'),
                          ),
                        ],
                ),
              );
            },
          ),
        ),
      ),
    );
  }

  Future<void> _sendResetLink() async {
    if (!_formKey.currentState!.validate() || _authBloc.state is AuthLoading) {
      return;
    }

    _authBloc.add(
      SendPasswordResetEmail(
        email: _emailController.text,
      ),
    );

    final result = await _authBloc.stream.firstWhere(
      (state) => state is! AuthLoading,
    );

    if (result is AuthExceptionState && mounted) {
      ScaffoldMessenger.of(context).showErrorSnackBar(
        result.exception.toString(),
      );
    } else if (mounted) {
      // ignore: use-setstate-synchronously
      setState(() => _sent = true);
    }
  }
}
