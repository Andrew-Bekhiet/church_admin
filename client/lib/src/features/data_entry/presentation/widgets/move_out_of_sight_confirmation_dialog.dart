import 'package:church_admin/church_admin.dart';
import 'package:material_ui/material_ui.dart';

class MoveOutOfSightConfirmationDialog extends StatelessWidget {
  const MoveOutOfSightConfirmationDialog({super.key});

  @override
  Widget build(BuildContext context) {
    return const ConfirmationDialog(
      title: 'لن تتمكن من رؤية البيانات بعد الحفظ',
      explanation:
          'بعد الحفظ ستصبح هذه البيانات خارج المناطق والخدمات '
          'التي تتابعها، ولن تتمكن من رؤيتها أو تعديلها.',
      confirmLabel: 'حفظ',
    );
  }
}
