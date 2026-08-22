import 'package:church_admin/church_admin.dart';
import 'package:church_admin/src/features/auth/presentation/widgets/login_password_fields.dart';
import 'package:church_admin/src/features/auth/presentation/widgets/signup_agreement_text.dart';
import 'package:church_admin/src/features/auth/presentation/widgets/signup_password_fields.dart';
import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';

class AuthForm extends StatelessWidget {
  const AuthForm({
    required this.isLogin,
    required this.loading,
    required this.formKey,
    required this.emailController,
    required this.passwordController,
    required this.passwordConfirmationController,
    required this.termsOfServiceRecognizer,
    required this.privacyPolicyRecognizer,
    required this.onSubmit,
    super.key,
  });

  final bool isLogin;
  final bool loading;
  final GlobalKey<FormState> formKey;
  final TextEditingController emailController;
  final TextEditingController passwordController;
  final TextEditingController passwordConfirmationController;
  final TapGestureRecognizer termsOfServiceRecognizer;
  final TapGestureRecognizer privacyPolicyRecognizer;
  final Future<void> Function() onSubmit;

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);

    return Column(
      children: [
        Center(
          child: Text(
            'قم بتسجيل الدخول أو إنشاء حساب',
            style: theme.textTheme.titleLarge?.copyWith(fontSize: 16),
          ),
        ),
        const SizedBox(height: 10),
        AutofillGroup(
          child: Form(
            key: formKey,
            child: Column(
              mainAxisSize: MainAxisSize.min,
              crossAxisAlignment: CrossAxisAlignment.stretch,
              children: [
                Padding(
                  padding: const EdgeInsets.symmetric(vertical: 8.0),
                  child: TextFormField(
                    key: LoginScreenKeys.emailFieldKey,
                    decoration: const InputDecoration(
                      labelText: 'البريد الإلكتروني',
                    ),
                    keyboardType: TextInputType.emailAddress,
                    autofillHints: const [AutofillHints.email],
                    textInputAction: TextInputAction.next,
                    autovalidateMode: AutovalidateMode.onUserInteraction,
                    validator: (email) {
                      if (email == null || email.isEmpty) {
                        return 'البريد الإلكتروني لا يمكن أن يكون فارغاً';
                      } else if (!emailRegex.hasMatch(email.trim())) {
                        return 'البريد الإلكتروني غير صالح';
                      }

                      return null;
                    },
                    controller: emailController,
                  ),
                ),
                if (isLogin)
                  LoginPasswordFields(
                    passwordController: passwordController,
                    onSubmit: onSubmit,
                  )
                else
                  SignupPasswordFields(
                    emailController: emailController,
                    passwordController: passwordController,
                    passwordConfirmationController:
                        passwordConfirmationController,
                    onSubmit: onSubmit,
                  ),
                FilledButton(
                  key: LoginScreenKeys.loginSignupButtonKey,
                  onPressed: loading ? null : onSubmit,
                  child: loading
                      ? const Center(child: CircularProgressIndicator())
                      : Text(isLogin ? 'تسجيل الدخول' : 'إنشاء حساب جديد'),
                ),
                if (!isLogin) ...[
                  const SizedBox(height: 10),
                  SignupAgreementText(
                    termsOfServiceRecognizer: termsOfServiceRecognizer,
                    privacyPolicyRecognizer: privacyPolicyRecognizer,
                  ),
                ],
              ],
            ),
          ),
        ),
      ],
    );
  }
}
