import 'package:church_admin/church_admin.dart';
import 'package:flutter/material.dart';

class UnapprovedUserScreen extends StatelessWidget {
  const UnapprovedUserScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);

    return SessionReplayUnmask(
      child: Scaffold(
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
                const InvitationCodeForm(),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
