import 'package:church_admin/church_admin.dart';
import 'package:flutter/material.dart';

class LoginPasswordFields extends StatelessWidget {
  const LoginPasswordFields({
    required this.passwordController,
    required this.onSubmit,
    super.key,
  });

  final TextEditingController passwordController;
  final Future<void> Function() onSubmit;

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);

    return Column(
      mainAxisSize: MainAxisSize.min,
      crossAxisAlignment: CrossAxisAlignment.stretch,
      children: [
        PasswordFormField(
          key: LoginScreenKeys.passwordFieldKey,
          labelText: 'كلمة المرور',
          autoValidateMode: AutovalidateMode.onUserInteraction,
          textInputAction: TextInputAction.done,
          controller: passwordController,
          onFieldSubmitted: (_) => onSubmit,
          validator: (password) {
            if (password?.isEmpty ?? true) {
              return 'كلمة المرور لا يمكن أن تكون فارغة';
            }

            return null;
          },
        ),
        Container(
          alignment: AlignmentDirectional.centerStart,
          padding: const EdgeInsetsDirectional.only(bottom: 20, start: 8),
          child: InkWell(
            key: LoginScreenKeys.forgotPasswordButtonKey,
            onTap: () => const ForgotPasswordRoute().push(context),
            child: Text(
              'نسيت كلمة المرور؟',
              style: theme.textTheme.bodyLarge?.copyWith(
                color: theme.colorScheme.primary,
              ),
            ),
          ),
        ),
      ],
    );
  }
}
