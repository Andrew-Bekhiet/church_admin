import 'dart:async';

import 'package:church_admin/church_admin.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

class UnapprovedUser extends StatefulWidget {
  static final route = GoRoute(
    path: '/unapprovedUser',
    builder: (context, state) => const UnapprovedUser(),
    redirect: (context, state) {
      if (AuthService.I.currentUser?.permissions.approved ?? false) {
        return HomeScreen.route.path;
      }
      return null;
    },
  );

  const UnapprovedUser({super.key});

  @override
  State<UnapprovedUser> createState() => _UnapprovedUserState();
}

class _UnapprovedUserState extends State<UnapprovedUser> {
  final TextEditingController _codeController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('في انتظار الموافقة'),
        actions: [
          IconButton(
            icon: const Icon(Icons.logout),
            onPressed: AuthService.I.signOut,
          ),
        ],
      ),
      body: Padding(
        padding: const EdgeInsets.all(8),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              'يجب ان يتم الموافقة على دخولك للبيانات '
              'من قبل أحد '
              'المشرفين أو المسؤلين في البرنامج',
              textAlign: TextAlign.center,
              style: Theme.of(context).textTheme.bodyLarge,
            ),
            const Text('أو'),
            Text(
              'يمكنك ادخال كود الدعوة هنا',
              style: Theme.of(context).textTheme.bodyLarge,
            ),
            Container(height: 10),
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
          builder: (context) => const Row(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              CircularProgressIndicator(),
              Text('جار تفعيل الحساب...'),
            ],
          ),
        ),
      );

      await FunctionsService.I.registerUserWithCode(registerCode);
      await AuthService.I.refreshToken();

      navigator.pop();
    } on Exception catch (e, stackTrace) {
      navigator.pop();

      unawaited(
        showDialog(
          context: context,
          builder: (context) => CAErrorDialog(exception: e),
        ),
      );

      unawaited(
        LoggingService.I.reportError(
          e,
          stackTrace: stackTrace,
          data: {
            'user': AuthService.I.currentUser?.toJson(),
            'registerCode': registerCode,
          },
        ),
      );
    }
  }
}
