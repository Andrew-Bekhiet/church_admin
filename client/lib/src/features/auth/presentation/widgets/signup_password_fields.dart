import 'package:church_admin/church_admin.dart';
import 'package:flutter/material.dart';

class SignupPasswordFields extends StatelessWidget {
  const SignupPasswordFields({
    required this.emailController,
    required this.passwordController,
    required this.passwordConfirmationController,
    required this.onSubmit,
    super.key,
  });

  final TextEditingController emailController;
  final TextEditingController passwordController;
  final TextEditingController passwordConfirmationController;
  final Future<void> Function() onSubmit;

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisSize: MainAxisSize.min,
      crossAxisAlignment: CrossAxisAlignment.stretch,
      children: [
        Padding(
          padding: const EdgeInsets.symmetric(vertical: 10),
          child: NewPasswordField(
            key: LoginScreenKeys.passwordFieldKey,
            controller: passwordController,
            getEmail: () => emailController.text.trim(),
          ),
        ),
        PasswordFormField(
          key: LoginScreenKeys.passwordConfirmationFieldKey,
          labelText: 'تأكيد كلمة المرور',
          autoFillHints: const [AutofillHints.newPassword],
          controller: passwordConfirmationController,
          textInputAction: TextInputAction.done,
          onFieldSubmitted: (_) => onSubmit(),
          validator: (password) {
            if (password != passwordController.text) {
              return 'كلمتا المرور غير متطابقتين';
            }

            return null;
          },
        ),
      ],
    );
  }
}
