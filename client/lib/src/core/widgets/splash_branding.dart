import 'package:flutter/material.dart';

class SplashBranding extends StatelessWidget {
  final Widget? footer;

  const SplashBranding({this.footer, super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          Expanded(child: Image.asset('assets/logo.png')),
          Image.asset('assets/branding.png', height: 80),
          ?footer,
        ],
      ),
    );
  }
}
