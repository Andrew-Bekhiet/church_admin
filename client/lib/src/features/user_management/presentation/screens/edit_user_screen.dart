import 'dart:async';

import 'package:church_admin/church_admin.dart';
import 'package:church_admin/src/features/user_management/presentation/widgets/edit_user_form.dart';
import 'package:cloud_functions/cloud_functions.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class EditUserScreen extends StatefulWidget {
  final UserEditIntent intent;

  const EditUserScreen({required this.intent, super.key});

  @override
  State<EditUserScreen> createState() => _EditUserScreenState();
}

class _EditUserScreenState extends State<EditUserScreen> {
  late final UserFormCubit _cubit = switch (widget.intent) {
    CreateUser(:final initial) => CreateUserCubit(initial: initial),
    UpdateUser(:final user) => EditUserCubit(user: user),
  };

  @override
  Widget build(BuildContext context) {
    return BlocProvider.value(
      value: _cubit,
      child: Scaffold(
        appBar: AppBar(
          title: Text(
            switch (widget.intent) {
              CreateUser() => 'إضافة خادم',
              UpdateUser() => 'تعديل بيانات الخادم',
            },
          ),
        ),
        body: BlocConsumer<UserFormCubit, UserFormState>(
          listener: _listenToFormState,
          builder: (context, state) => SingleChildScrollView(
            child: EditUserForm(intent: widget.intent, draft: state.draft),
          ),
        ),
        floatingActionButton: BlocBuilder<UserFormCubit, UserFormState>(
          builder: (context, state) => FloatingActionButton.extended(
            label: const Text('حفظ'),
            icon: state is UserFormSaving
                ? const SizedBox.square(
                    dimension: 18,
                    child: CircularProgressIndicator(strokeWidth: 2),
                  )
                : const Icon(Icons.save),
            onPressed: state is UserFormSaving ? null : _cubit.save,
          ),
        ),
      ),
    );
  }

  @override
  void dispose() {
    unawaited(_cubit.close());

    super.dispose();
  }

  void _listenToFormState(BuildContext context, UserFormState state) {
    switch (state) {
      case UserFormSaved(:final uid):
        Navigator.of(context).pop();

        if (widget.intent case CreateUser()) {
          unawaited(ViewUserRoute(uid: uid).push(context));
        }
      case UserFormEditing(error: final error?):
        ScaffoldMessenger.of(context)
          ..hideCurrentSnackBar()
          ..showSnackBar(SnackBar(content: Text(_messageFor(error))));
      case UserFormEditing() || UserFormSaving():
        return;
    }
  }

  String _messageFor(Object error) => switch (error) {
    UserFormValidationError() => 'برجاء إكمال البيانات المطلوبة',
    PersonAlreadyLinkedException() => 'هذا الشخص مرتبط بحساب آخر بالفعل',
    FirebaseFunctionsException(message: 'user/person-already-linked') =>
      'هذا الشخص مرتبط بحساب آخر بالفعل',
    FirebaseFunctionsException(message: 'user/email-taken') =>
      'البريد الإلكتروني مستخدم بحساب آخر',
    FirebaseFunctionsException(message: 'user/name-taken') =>
      'الاسم مستخدم بحساب آخر',
    FirebaseFunctionsException(message: 'invitation/scope-required') =>
      'يجب تعيين المستخدم الجديد أميناً على منطقة أو خدمة أو مجموعة',
    FirebaseFunctionsException(message: 'invitation/scope-not-manageable') =>
      'لا يمكنك إضافة مستخدم خارج نطاق صلاحياتك',
    _ => error.toString(),
  };
}
