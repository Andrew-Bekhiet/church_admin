import 'package:church_admin/church_admin.dart';
import 'package:fancy_password_field/fancy_password_field.dart';
import 'package:flutter/material.dart';
import 'package:zxcvbn/zxcvbn.dart';

class NewPasswordField extends StatefulWidget {
  final TextEditingController? controller;
  const NewPasswordField({super.key, this.controller});

  @override
  State<NewPasswordField> createState() => _NewPasswordFieldState();
}

class _NewPasswordFieldState extends State<NewPasswordField> {
  final _passwordRulesController = FancyPasswordController();
  late final _passwordController = widget.controller ?? TextEditingController();

  @override
  Widget build(BuildContext context) {
    return FancyPasswordField(
      showPasswordIcon: const Icon(Icons.visibility_off),
      hidePasswordIcon: const Icon(Icons.visibility),
      autovalidateMode: AutovalidateMode.onUserInteraction,
      validationRules: {
        DigitValidationRule(customText: 'تحتوي على أرقام'),
        UppercaseValidationRule(customText: 'تحتوي على حروف كبيرة'),
        LowercaseValidationRule(customText: 'تحتوي على حروف صغيرة'),
        SpecialCharacterValidationRule(customText: 'تحتوي على رموز'),
        MinCharactersValidationRule(
          10,
          customText: 'تتكون من على الأقل 10 حروف',
        ),
      },
      textInputAction: TextInputAction.next,
      decoration: const InputDecoration(
        labelText: 'كلمة المرور',
        errorMaxLines: 6,
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
              backgroundColor: switch (score) {
                >= 0.9 => Colors.greenAccent,
                >= 0.7 => Colors.yellowAccent,
                >= 0.5 => Colors.orangeAccent,
                _ => Colors.redAccent,
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

        final passwordStrength = _evaluatePasswordStrength();
        final score = passwordStrength.score!;

        final msg = switch (score) {
          >= 3 => null,
          >= 2 => 'كلمة المرور متوسطة القوة',
          >= 1 => 'كلمة المرور ضعيفة',
          >= 0 => 'كلمة المرور ضعيفة جداً',
          _ => '',
        };
        final reason = (passwordStrength.feedback.warning ?? '') +
            '\n' +
            _passwordRulesController.ofendingRules
                .map((e) => 'لا ' + e.name)
                .join('\n');

        if (msg != null && msg.isNotEmpty) {
          return msg + '\nالسبب: $reason';
        } else if (_passwordRulesController.ofendingRules.isNotEmpty) {
          return 'يجب على كلمة المرور أن:\n' +
              _passwordRulesController.ofendingRules
                  .map((e) => e.name)
                  .join('\n');
        }

        return null;
      },
    );
  }

  Result _evaluatePasswordStrength() {
    return globalProviderContainer
        .read(zxcvbnProvider)
        .evaluate(_passwordController.text);
  }
}
