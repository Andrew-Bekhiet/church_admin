import 'dart:async';

import 'package:church_admin/church_admin.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:intl/intl.dart';

class UpdateUserSpiritData extends StatefulWidget {
  static final route = GoRoute(
    path: '/updateUserSpiritData',
    builder: (context, state) => const UpdateUserSpiritData(),
    redirect: (context, state) {
      if (!AuthService.I.isSignedIn) {
        return LoginScreen.route.path;
      } else if (AuthService.I.currentUser!.person!.spiritDataUpToDate()) {
        return HomeScreen.route.path;
      } else if (LocalAuthService.I.shouldAuthenticate) {
        return Uri(
          path: '/authenticate',
          queryParameters: {'next': state.location},
        ).toString();
      }
      return null;
    },
  );

  final Person? userData;
  const UpdateUserSpiritData({this.userData, super.key});

  @override
  State<UpdateUserSpiritData> createState() => _UpdateUserSpiritDataState();
}

class _UpdateUserSpiritDataState extends State<UpdateUserSpiritData> {
  late Person _userData = widget.userData ?? AuthService.I.currentUser!.person!;
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
              TappableFormField<DateTime?>(
                autovalidateMode: AutovalidateMode.onUserInteraction,
                decoration: (context, state) => InputDecoration(
                  errorText: state.errorText,
                  labelText: 'تاريخ أخر تناول',
                  suffixIcon: state.isValid
                      ? const Icon(Icons.done, color: Colors.green)
                      : const Icon(Icons.close, color: Colors.red),
                ),
                initialValue: _userData.lastKodas?.time,
                onTap: (state) async {
                  final _picked = await _selectDate(
                    'تاريخ أخر تناول',
                    state.value ?? DateTime.now(),
                  );
                  if (_picked != null) {
                    state.didChange(
                      _picked,
                    );
                  }
                },
                builder: (context, state) {
                  return state.value != null
                      ? Text(DateFormat('yyyy/M/d').format(state.value!))
                      : null;
                },
                onSaved: (v) => _userData = _userData.copyWith(
                  lastKodas: LastRecordedByInfo(
                    time: v!,
                    recordedBy: AuthService.I.currentUser!.uid,
                  ),
                ),
                validator: (value) => value == null
                    ? 'برجاء اختيار تاريخ أخر تناول'
                    : value.isBefore(
                        DateTime.now().subtract(const Duration(days: 60)),
                      )
                        ? 'يجب أن يكون التاريخ منذ شهرين على الأكثر'
                        : null,
              ),
              const SizedBox(height: 20),
              TappableFormField<DateTime?>(
                autovalidateMode: AutovalidateMode.onUserInteraction,
                decoration: (context, state) => InputDecoration(
                  errorText: state.errorText,
                  labelText: 'تاريخ أخر اعتراف',
                  suffixIcon: state.isValid
                      ? const Icon(Icons.done, color: Colors.green)
                      : const Icon(Icons.close, color: Colors.red),
                ),
                initialValue: _userData.lastConfession?.time,
                onTap: (state) async {
                  final _picked = await _selectDate(
                    'تاريخ أخر اعتراف',
                    state.value ?? DateTime.now(),
                  );
                  if (_picked != null) {
                    state.didChange(
                      _picked,
                    );
                  }
                },
                builder: (context, state) {
                  return state.value != null
                      ? Text(DateFormat('yyyy/M/d').format(state.value!))
                      : null;
                },
                onSaved: (v) => _userData = _userData.copyWith(
                  lastConfession: LastRecordedByInfo(
                    time: v!,
                    recordedBy: AuthService.I.currentUser!.uid,
                  ),
                ),
                validator: (value) => value == null
                    ? 'برجاء اختيار تاريخ أخر اعتراف'
                    : value.isBefore(
                        DateTime.now().subtract(const Duration(days: 60)),
                      )
                        ? 'يجب أن يكون التاريخ منذ شهرين على الأكثر'
                        : null,
              ),
              const SizedBox(height: 40),
            ],
          ),
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: _save,
        tooltip: 'حفظ',
        child: const Icon(Icons.done),
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

      await LoggingService.I.showErrorDialogAndReport(
        context,
        error,
        stackTrace: stackTrace,
        data: _userData.toJson(),
      );
    } finally {
      _isSaving = false;
    }
  }

  Future<DateTime?> _selectDate(String helpText, DateTime initialDate) async {
    final picked = await showDatePicker(
      helpText: helpText,
      locale: const Locale('ar', 'EG'),
      context: context,
      initialDate: initialDate,
      firstDate: DateTime(1900),
      lastDate: DateTime.now(),
    );
    if (picked != null && picked != initialDate) {
      return picked;
    }
    return null;
  }
}
