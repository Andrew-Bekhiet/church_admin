import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart' as m show showAboutDialog;
import 'package:flutter/material.dart';

class AboutAppService {
  String version;

  Widget appIcon;

  Uri githubUrl;
  Uri termsOfServiceUrl;
  Uri privacyPolicyUrl;

  final void Function(Uri) _launchUrl;

  AboutAppService({
    required this.version,
    required this.appIcon,
    required this.githubUrl,
    required this.termsOfServiceUrl,
    required this.privacyPolicyUrl,
    required void Function(Uri) urlLauncher,
  }) : _launchUrl = urlLauncher;

  Future<void> showAboutDialog(BuildContext context) async {
    return m.showAboutDialog(
      context: context,
      applicationIcon: appIcon,
      applicationName: 'كنيسة السيدة العذراء مريم',
      applicationLegalese: 'جميع الحقوق محفوظة © 2023',
      applicationVersion: version,
      children: [
        const SizedBox(height: 20),
        RichText(
          textAlign: TextAlign.center,
          text: TextSpan(
            children: [
              TextSpan(
                style: Theme.of(context).textTheme.bodyMedium,
                text: 'التطبيق مفتوح المصدر ومتاح على ',
              ),
              TextSpan(
                style: Theme.of(context).textTheme.bodyMedium!.copyWith(
                      color: Colors.blue,
                    ),
                text: 'GitHub',
                recognizer: TapGestureRecognizer()
                  ..onTap = () => _launchUrl(githubUrl),
              ),
              TextSpan(
                style: Theme.of(context).textTheme.bodyMedium,
                text: ' تحت ترخيص Apache License 2.0',
              ),
            ],
          ),
        ),
        const SizedBox(height: 10),
        RichText(
          textAlign: TextAlign.center,
          text: TextSpan(
            children: [
              TextSpan(
                style: Theme.of(context).textTheme.bodyMedium!.copyWith(
                      color: Colors.blue,
                    ),
                text: 'شروط الاستخدام',
                recognizer: TapGestureRecognizer()
                  ..onTap = () => _launchUrl(termsOfServiceUrl),
              ),
              TextSpan(
                style: Theme.of(context).textTheme.bodyMedium,
                text: ' • ',
              ),
              TextSpan(
                style: Theme.of(context).textTheme.bodyMedium!.copyWith(
                      color: Colors.blue,
                    ),
                text: 'سياسة الخصوصية',
                recognizer: TapGestureRecognizer()
                  ..onTap = () => _launchUrl(privacyPolicyUrl),
              ),
            ],
          ),
        ),
      ],
    );
  }
}
