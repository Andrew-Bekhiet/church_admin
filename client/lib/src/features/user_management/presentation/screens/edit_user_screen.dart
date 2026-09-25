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

abstract final class EditUserScreenKeys {
  static const Key saveButton = ValueKey('Save User Button Key');
  static const Key linkExistingPersonSegment = ValueKey(
    'Link Existing Person Segment Key',
  );
  static const Key createNewPersonSegment = ValueKey(
    'Create New Person Segment Key',
  );
  static const Key personField = ValueKey('User Person Field Key');
  static const Key nameField = ValueKey('User Name Field Key');
  static const Key emailField = ValueKey('User Email Field Key');
  static const Key addScopeButton = ValueKey('Add Admin Scope Button Key');
  static const Key servicesTab = ValueKey('Admin Scope Services Tab Key');
  static const Key confirmScopesButton = ValueKey(
    'Confirm Admin Scopes Button Key',
  );
  static const Key scopeWriteDataCheckbox = ValueKey(
    'Admin Scope Write Data Checkbox Key',
  );
  static const Key scopeManageUsersCheckbox = ValueKey(
    'Admin Scope Manage Users Checkbox Key',
  );

  static Key permission(UserPermission permission) =>
      ValueKey(('User Permission Key', permission));

  static Key scope(String objectId) => ValueKey(('Admin Scope Key', objectId));
}

class _EditUserScreenState extends State<EditUserScreen> {
  late final UserFormCubit _cubit = switch (widget.intent) {
    CreateUser() => CreateUserCubit(
      initial: UserDraft.forNewUser(DateTime.now()),
    ),
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
            key: EditUserScreenKeys.saveButton,
            label: const Text('حفظ'),
            icon: state is UserFormSaving
                ? SizedBox.square(
                    dimension: 18,
                    child: CircularProgressIndicator(
                      strokeWidth: 2,
                      color: ColorScheme.of(context).onPrimaryContainer,
                    ),
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
        if (widget.intent case CreateUser()) {
          ViewUserRoute(uid: uid).pushReplacement(context);
        } else {
          Navigator.of(context).pop();
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
    PersonAlreadyLinkedException() => 'هذا المخدوم مرتبط بحساب آخر بالفعل',
    FirebaseFunctionsException(message: 'user/person-already-linked') =>
      'هذا المخدوم مرتبط بحساب آخر بالفعل',
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
