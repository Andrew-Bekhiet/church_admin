import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';

class SignupAgreementText extends StatelessWidget {
  const SignupAgreementText({
    required this.termsOfServiceRecognizer,
    required this.privacyPolicyRecognizer,
    super.key,
  });

  final TapGestureRecognizer termsOfServiceRecognizer;
  final TapGestureRecognizer privacyPolicyRecognizer;

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);

    return RichText(
      textAlign: TextAlign.center,
      text: TextSpan(
        style: const TextStyle(fontSize: 13, fontWeight: FontWeight.w600),
        children: [
          TextSpan(
            style: theme.textTheme.bodySmall,
            text: 'بإنشائك حساب فإنك توافق على ',
          ),
          TextSpan(
            style: theme.textTheme.bodySmall?.copyWith(color: Colors.blue),
            text: 'شروط الاستخدام',
            recognizer: termsOfServiceRecognizer,
          ),
          TextSpan(style: theme.textTheme.bodySmall, text: ' و'),
          TextSpan(
            style: theme.textTheme.bodySmall?.copyWith(color: Colors.blue),
            text: 'سياسة الخصوصية',
            recognizer: privacyPolicyRecognizer,
          ),
        ],
      ),
    );
  }
}
