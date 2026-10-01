import 'package:flutter/material.dart';
import 'package:posthog_flutter/posthog_flutter.dart';

class SplashBranding extends StatelessWidget {
  final Widget? footer;

  const SplashBranding({this.footer, super.key});

  @override
  Widget build(BuildContext context) {
    return PostHogUnmaskWidget(
      child: SafeArea(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            Expanded(child: Image.asset('assets/logo.png')),
            Image.asset('assets/branding.png', height: 80),
            ?footer,
          ],
        ),
      ),
    );
  }
}
