import 'dart:async';

import 'package:church_admin/church_admin.dart';
import 'package:material_symbols_icons/material_symbols_icons.dart';
import 'package:material_ui/material_ui.dart';

class UpdateUserSpiritDataScreen extends StatefulWidget {
  final Person? userData;
  const UpdateUserSpiritDataScreen({this.userData, super.key});

  @override
  State<UpdateUserSpiritDataScreen> createState() =>
      _UpdateUserSpiritDataState();
}

abstract final class UpdateUserSpiritDataScreenKeys {
  static const Key lastCommunionField = ValueKey('Last Communion Field Key');
  static const Key lastConfessionField = ValueKey('Last Confession Field Key');
  static const Key saveButton = ValueKey('Save Spirit Data Button Key');
}

class _UpdateUserSpiritDataState extends State<UpdateUserSpiritDataScreen> {
  late Person _userData =
      widget.userData ?? AuthBloc.I.currentUserData!.person!;
  final _formKey = GlobalKey<FormState>();
  bool _isSaving = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('تحديث البيانات الروحية'),
      ),
      body: Form(
        key: _formKey,
        child: Padding(
          padding: const EdgeInsets.all(8),
          child: Column(
            children: [
              Text(
                'الخادم مثال حى للنفس التائبة - يمارس التوبة فى حياته الخاصة'
                ' وفى أصوامه وصلواته ، وحب المسيح المصلوب\n'
                'أبونا بيشوي كامل\n'
                'يرجي مراجعة حياتك الروحية والاهتمام بها',
                style: Theme.of(context).textTheme.bodyLarge,
              ),
              const SizedBox(height: 40),
              SpiritDataDateField(
                key: UpdateUserSpiritDataScreenKeys.lastCommunionField,
                label: 'تاريخ أخر تناول',
                initialValue: _userData.lastKodas?.time,
                onSaved: (v) => _userData = _userData.copyWith(
                  lastKodas: LastRecordedByInfo(
                    time: v,
                    recordedBy: AuthBloc.I.currentUser!.uid,
                  ),
                ),
              ),
              const SizedBox(height: 20),
              SpiritDataDateField(
                key: UpdateUserSpiritDataScreenKeys.lastConfessionField,
                label: 'تاريخ أخر اعتراف',
                initialValue: _userData.lastConfession?.time,
                onSaved: (v) => _userData = _userData.copyWith(
                  lastConfession: LastRecordedByInfo(
                    time: v,
                    recordedBy: AuthBloc.I.currentUser!.uid,
                  ),
                ),
              ),
              const SizedBox(height: 40),
            ],
          ),
        ),
      ),
      floatingActionButton: FloatingActionButton(
        key: UpdateUserSpiritDataScreenKeys.saveButton,
        onPressed: _save,
        tooltip: 'حفظ',
        child: const Icon(Symbols.done),
      ),
    );
  }

  Future<void> _save() async {
    if (_isSaving) return;
    try {
      if (!_formKey.currentState!.validate()) return;
      _formKey.currentState!.save();

      _isSaving = true;

      scaffoldMessenger.showSnackBar(
        const SnackBar(
          content: Text('جار الحفظ'),
        ),
      );

      await DatabaseService.I.persons.updatePersonSpiritData(
        personId: _userData.id,
        lastConfession: _userData.lastConfession!.time,
        lastKodas: _userData.lastKodas!.time,
      );

      if (mounted) {
        scaffoldMessenger
          ..hideCurrentSnackBar()
          ..showSnackBar(
            const SnackBar(
              content: Text('تم بنجاح'),
            ),
          );
      }
    } on Exception catch (error, stackTrace) {
      scaffoldMessenger.hideCurrentSnackBar();

      if (mounted) {
        await LoggingService.I.showErrorDialogAndReport(
          context,
          LogRecord(
            moduleName: '$UpdateUserSpiritDataScreen',
            eventName: 'updateUserSpiritData',
            error: error,
            stackTrace: stackTrace,
            data: _userData.toJson(),
          ),
        );
      }
    } finally {
      _isSaving = false;
    }
  }
}
