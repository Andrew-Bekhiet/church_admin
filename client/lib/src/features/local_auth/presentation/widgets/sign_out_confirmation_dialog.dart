import 'package:church_admin/church_admin.dart';
import 'package:material_ui/material_ui.dart';

class SignOutConfirmationDialog extends StatelessWidget {
  const SignOutConfirmationDialog({super.key});

  @override
  Widget build(BuildContext context) {
    return const SessionReplayUnmask(
      child: ConfirmationDialog(
        title: 'تسجيل الخروج؟',
        explanation:
            'سيتم حذف جميع بيانات البرنامج المحفوظة على هذا الجهاز. '
            'يمكنك بعد ذلك إعادة تعيين كلمة المرور من شاشة تسجيل الدخول.',
        confirmLabel: 'تسجيل الخروج',
        isDestructive: true,
      ),
    );
  }
}
