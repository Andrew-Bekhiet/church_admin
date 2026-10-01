import 'package:church_admin/church_admin.dart';
import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';

class AboutAppService {
  static AboutAppService get I =>
      globalProviderContainer.read(aboutAppServiceProvider);

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
    final theme = Theme.of(context);

    return showDialog<void>(
      context: context,
      builder: (context) => SessionReplayUnmask(
        child: AboutDialog(
          applicationIcon: appIcon,
          applicationName: 'كنيسة السيدة العذراء مريم',
          applicationVersion: version,
          children: [
            const Text('جميع الحقوق محفوظة © 2022-2025'),
            RichText(
              text: TextSpan(
                children: [
                  TextSpan(
                    style: theme.textTheme.bodyMedium,
                    text: 'التطبيق مفتوح المصدر ومتاح على ',
                  ),
                  TextSpan(
                    style: theme.textTheme.bodyMedium!.copyWith(
                      color: Colors.blue,
                    ),
                    text: 'GitHub',
                    recognizer: TapGestureRecognizer()
                      ..onTap = () => _launchUrl(githubUrl),
                  ),
                  TextSpan(
                    style: theme.textTheme.bodyMedium,
                    text: ' تحت ترخيص Apache License 2.0',
                  ),
                ],
              ),
            ),
            const SizedBox(height: 10),
            RichText(
              text: TextSpan(
                children: [
                  TextSpan(
                    style: theme.textTheme.bodyMedium!.copyWith(
                      color: Colors.blue,
                    ),
                    text: 'شروط الاستخدام',
                    recognizer: TapGestureRecognizer()
                      ..onTap = () => _launchUrl(termsOfServiceUrl),
                  ),
                  TextSpan(
                    style: theme.textTheme.bodyMedium,
                    text: ' • ',
                  ),
                  TextSpan(
                    style: theme.textTheme.bodyMedium!.copyWith(
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
        ),
      ),
    );
  }
}
