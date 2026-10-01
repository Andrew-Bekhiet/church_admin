import 'package:church_admin/church_admin.dart';
import 'package:flutter/material.dart';

class SplashBranding extends StatelessWidget {
  final Widget? footer;

  const SplashBranding({this.footer, super.key});

  @override
  Widget build(BuildContext context) {
    return SessionReplayUnmask(
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
