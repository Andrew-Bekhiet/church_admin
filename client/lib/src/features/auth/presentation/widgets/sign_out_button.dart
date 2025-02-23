import 'package:church_admin/church_admin.dart';
import 'package:flutter/material.dart';
import 'package:material_symbols_icons/material_symbols_icons.dart';

class SignOutButton extends StatelessWidget {
  const SignOutButton({super.key});

  @override
  Widget build(BuildContext context) {
    return TextButton.icon(
      onPressed: () => AuthBloc.I.add(const SignOut()),
      icon: const Icon(Symbols.logout),
      label: const Text('تسجيل الخروج'),
    );
  }
}
