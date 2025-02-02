import 'dart:async';

import 'package:church_admin/church_admin.dart';
import 'package:flutter/material.dart';

class UnapprovedUser extends StatefulWidget {
  const UnapprovedUser({super.key});

  @override
  State<UnapprovedUser> createState() => _UnapprovedUserState();
}

class _UnapprovedUserState extends State<UnapprovedUser> {
  final TextEditingController _codeController = TextEditingController();
  final authBloc = AuthBloc.I;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('في انتظار الموافقة'),
        actions: const [SignOutButton()],
      ),
      body: Padding(
        padding: const EdgeInsets.all(8),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          spacing: 15,
          children: [
            Text(
              'يجب ان يتم الموافقة على دخولك للبيانات '
              'من قبل أحد '
              'المشرفين أو المسؤلين في البرنامج',
              textAlign: TextAlign.center,
              style: Theme.of(context).textTheme.headlineSmall,
            ),
            Text(
              'أو',
              style: Theme.of(context).textTheme.bodyLarge,
            ),
            Text(
              'يمكنك ادخال كود الدعوة هنا',
              style: Theme.of(context).textTheme.bodyLarge,
            ),
            const SizedBox(height: 10),
            TextFormField(
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
              onPressed: () => _registerUserWithCode(_codeController.text),
              child: const Text('تفعيل الحساب بالكود'),
            ),
          ],
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
