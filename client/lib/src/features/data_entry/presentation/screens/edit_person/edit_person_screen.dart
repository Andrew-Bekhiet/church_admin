import 'package:church_admin/church_admin.dart';
import 'package:flutter/material.dart';

class EditPersonScreen extends StatelessWidget {
  final PersonEditIntent intent;

  const EditPersonScreen({required this.intent, super.key});

  @override
  Widget build(BuildContext context) => const Scaffold();
}

abstract final class EditPersonScreenKeys {
  static const Key saveButton = ValueKey('Edit Person Save Button Key');
}
