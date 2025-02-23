import 'dart:async';

import 'package:church_admin/church_admin.dart';
import 'package:flutter/material.dart';

abstract final class UnapprovedUserScreenKeys {
  static const Key codeField = ValueKey('Code Field Key');
  static const Key registerButton = ValueKey('Register Button Key');
}

class UnapprovedUserScreen extends StatefulWidget {
  const UnapprovedUserScreen({super.key});

  @override
  State<UnapprovedUserScreen> createState() => _UnapprovedUserScreenState();
}

class _UnapprovedUserScreenState extends State<UnapprovedUserScreen> {
  final TextEditingController _codeController = TextEditingController();
  final authBloc = AuthBloc.I;

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);

    return Scaffold(
      appBar: AppBar(
        title: const Text('في انتظار الموافقة'),
        actions: const [SignOutButton()],
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 16),
          child: Column(
            spacing: 15,
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              Image.asset('assets/images/awaiting-approval.png'),
              Text(
                'يجب ان يتم الموافقة على دخولك للبيانات '
                'من قبل أحد '
                'المشرفين أو المسؤلين في البرنامج',
                textAlign: TextAlign.center,
                style: theme.textTheme.headlineSmall,
              ),
              Text(
                'أو قم بإدخال كود الدعوة لتفعيل حسابك',
                textAlign: TextAlign.center,
                style: theme.textTheme.titleLarge,
              ),
              const SizedBox(height: 10),
              TextFormField(
                key: UnapprovedUserScreenKeys.codeField,
                decoration: const InputDecoration(
                  labelText: 'كود الدعوة',
                  helperText: 'يمكنك أن تسأل أحد المشرفين ليعطيك كود دعوة',
                ),
                maxLines: null,
                textInputAction: TextInputAction.done,
                controller: _codeController,
                onFieldSubmitted: _registerUserWithCode,
                validator: (value) {
                  if (value!.isEmpty) {
                    return 'برجاء ادخال كود الدخول لتفعيل حسابك';
                  }
                  return null;
                },
              ),
              FilledButton(
                key: UnapprovedUserScreenKeys.registerButton,
                onPressed: () => _registerUserWithCode(_codeController.text),
                child: const Text('تفعيل الحساب بالكود'),
              ),
            ],
          ),
        ),
      ),
    );
  }

  Future<void> _registerUserWithCode(String? registerCode) async {
    final navigator = Navigator.of(context);
    try {
      unawaited(
        showDialog(
          context: context,
          builder: (context) => const AlertDialog(
            content: Row(
              spacing: 10,
              children: [
                CircularProgressIndicator(),
                Text('جار تفعيل الحساب...'),
              ],
            ),
          ),
        ),
      );

      await FunctionsService.I.registerUserWithCode(registerCode);
      authBloc.add(const ReloadUser());

      await authBloc.stream.first;

      navigator.pop();
    } on Exception catch (e, stackTrace) {
      navigator.pop();

      if (navigator.mounted) {
        await LoggingService.I.showErrorDialogAndReport(
          navigator.context,
          e,
          stackTrace: stackTrace,
          data: {'registerCode': registerCode},
        );
      }
    }
  }
}
