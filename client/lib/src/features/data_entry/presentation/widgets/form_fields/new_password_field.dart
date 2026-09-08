import 'package:fancy_password_field/fancy_password_field.dart';
import 'package:flutter/material.dart';
import 'package:material_symbols_icons/material_symbols_icons.dart';

class NewPasswordField extends StatefulWidget {
  final TextEditingController? controller;

  /// If given, the password will be checked to not be similar to the email.
  final String Function()? getEmail;

  const NewPasswordField({this.controller, this.getEmail, super.key});

  @override
  State<NewPasswordField> createState() => _NewPasswordFieldState();
}

class _NewPasswordFieldState extends State<NewPasswordField> {
  static const _minPasswordLength = 8;

  final _passwordRulesController = FancyPasswordController();
  late final _passwordController = widget.controller ?? TextEditingController();

  @override
  Widget build(BuildContext context) {
    return FancyPasswordField(
      showPasswordIcon: const Icon(Symbols.visibility_off),
      hidePasswordIcon: const Icon(Symbols.visibility),
      autovalidateMode: AutovalidateMode.onUserInteraction,
      validationRules: {
        if (widget.getEmail != null)
          PreventEmailSimilarityRule(getEmail: widget.getEmail),
        DigitValidationRule(customText: 'تحتوي على أرقام (0-9)'),
        UppercaseValidationRule(customText: 'تحتوي على حروف كبيرة (A-Z)'),
        LowercaseValidationRule(customText: 'تحتوي على حروف صغيرة (a-z)'),
        RegexValidationRule(
          name:
              'تحتوي على رموز (^ \$ * . [ ] { } ( ) ? " ! @ # % & / \\ , > < \' : ; | _ ~ `)',
          regex: "[^\$*.[]{}()?\"!@#%&/\\,><':;|_~`]",
        ),
        MinCharactersValidationRule(
          _minPasswordLength,
          customText: 'تتكون من على الأقل $_minPasswordLength حروف',
        ),
      },
      textInputAction: TextInputAction.next,
      decoration: const InputDecoration(
        labelText: 'كلمة المرور',
        errorMaxLines: 6,
        errorStyle: TextStyle(fontSize: 14),
      ),
      autofillHints: const [AutofillHints.newPassword],
      passwordController: _passwordRulesController,
      hasValidationRules: false,
      strengthIndicatorBuilder: (score) {
        return Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            const SizedBox(height: 10),
            LinearProgressIndicator(
              value: score,
              color: switch (score) {
                >= 0.9 => Colors.green,
                >= 0.7 => Colors.yellow,
                >= 0.5 => Colors.orange,
                _ => Colors.red,
              },
            ),
            const SizedBox(height: 10),
            Text(
              switch (score) {
                >= 0.9 => 'قوية',
                >= 0.7 => 'متوسطة',
                >= 0.5 => 'ضعيفة',
                _ => 'ضعيفة جداً',
              },
              style: Theme.of(context).textTheme.bodyLarge,
            ),
          ],
        );
      },
      controller: _passwordController,
      validator: (password) {
        if (password?.isEmpty ?? true) return 'يجب ادخال كلمة المرور';

        // Required to reevaluate rules
        _passwordRulesController.onChange(password!);

        final reason = _passwordRulesController.ofendingRules
            .map((e) => e.name)
            .join('\n');

        if (reason.isNotEmpty) {
          return 'يجب على كلمة المرور أن:\n${reason.trim()}';
        }

        return null;
      },
    );
  }
}

class PreventEmailSimilarityRule extends ValidationRule {
  final String Function()? getEmail;

  @override
  String get name => 'لا تحتوي على اسم المستخدم';

  PreventEmailSimilarityRule({required this.getEmail});

  @override
  bool validate(String value) {
    final email = getEmail!();

    if (!email.contains('@')) return true;

    final [username, _] = email.split('@');

    return !value.toLowerCase().contains(username.toLowerCase()) &&
        !value.toLowerCase().contains(email.toLowerCase());
  }
}
