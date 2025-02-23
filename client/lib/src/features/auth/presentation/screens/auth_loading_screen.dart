import 'package:church_admin/church_admin.dart';
import 'package:flutter/material.dart';

class AuthLoadingScreen extends StatelessWidget {
  const AuthLoadingScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        actions: const [SignOutButton()],
      ),
      body: const Column(
        mainAxisAlignment: MainAxisAlignment.center,
        spacing: 15,
        children: [
          Center(child: CircularProgressIndicator()),
          Text('جاري التحميل...'),
        ],
      ),
    );
  }
}
