import 'dart:async';

import 'package:church_admin/church_admin.dart';
import 'package:flutter/material.dart';
import 'package:flutter_localizations/flutter_localizations.dart';

class ChurchAdminSplashScreen extends StatefulWidget {
  const ChurchAdminSplashScreen({super.key});

  @override
  State<ChurchAdminSplashScreen> createState() =>
      _ChurchAdminSplashScreenState();
}

class _ChurchAdminSplashScreenState extends State<ChurchAdminSplashScreen> {
  Timer? _timeoutTimer;
  bool _showTimeoutMessage = false;

  @override
  void initState() {
    super.initState();
    // Add a timeout to show a message if the app gets stuck
    _timeoutTimer = Timer(const Duration(seconds: 15), () {
      if (mounted) {
        setState(() {
          _showTimeoutMessage = true;
        });
      }
    });
  }

  @override
  void dispose() {
    _timeoutTimer?.cancel();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemingService.I.theme,
      scaffoldMessengerKey: scaffoldMessengerKey,
      localizationsDelegates: const [
        GlobalMaterialLocalizations.delegate,
        GlobalWidgetsLocalizations.delegate,
        GlobalCupertinoLocalizations.delegate,
      ],
      supportedLocales: const [
        Locale('ar', 'EG'),
      ],
      locale: const Locale('ar', 'EG'),
      title: 'St Mary Church',
      home: Scaffold(
        body: SafeArea(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              Expanded(
                child: Image.asset('assets/logo.png'),
              ),
              Image.asset('assets/branding.png', height: 80),
              Center(
                child: Column(
                  children: [
                    RepaintBoundary(
                      child: CircularProgressIndicator(
                        constraints: BoxConstraints.tight(const Size(20, 20)),
                        strokeWidth: 2,
                      ),
                    ),
                    if (_showTimeoutMessage) ...[
                      const SizedBox(height: 16),
                      const Text(
                        'جاري التحميل...',
                        style: TextStyle(fontSize: 14),
                      ),
                    ],
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
