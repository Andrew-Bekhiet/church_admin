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
    final bodySmall = TextTheme.of(context).bodySmall;
    final linkStyle = bodySmall?.copyWith(
      color: ColorScheme.of(context).primary,
    );

    return RichText(
      textAlign: TextAlign.center,
      text: TextSpan(
        style: bodySmall,
        children: [
          const TextSpan(
            text: 'بإنشائك حساب فإنك توافق على ',
          ),
          TextSpan(
            style: linkStyle,
            text: 'شروط الاستخدام',
            recognizer: termsOfServiceRecognizer,
          ),
          const TextSpan(text: ' و'),
          TextSpan(
            style: linkStyle,
            text: 'سياسة الخصوصية',
            recognizer: privacyPolicyRecognizer,
          ),
        ],
      ),
    );
  }
}
