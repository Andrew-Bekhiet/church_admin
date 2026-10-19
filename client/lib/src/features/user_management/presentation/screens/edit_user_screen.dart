import 'dart:async';

import 'package:church_admin/church_admin.dart';
import 'package:church_admin/src/features/user_management/presentation/widgets/edit_user_form.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:material_ui/material_ui.dart';

class EditUserScreen extends StatefulWidget {
  final UserEditIntent intent;

  const EditUserScreen({required this.intent, super.key});

  @override
  State<EditUserScreen> createState() => _EditUserScreenState();
}

abstract final class EditUserScreenKeys {
  static const Key saveButton = ValueKey('Save User Button Key');
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
          title: Text(switch (widget.intent) {
            CreateUser() => 'إضافة خادم',
            UpdateUser() => 'تعديل بيانات الخادم',
          }),
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
          unawaited(ViewUserRoute(uid: uid).pushReplacement(context));
        } else {
          Navigator.of(context).pop();
        }

      case UserFormEditing(error: final error?):
        ScaffoldMessenger.of(context)
          ..hideCurrentSnackBar()
          ..showSnackBar(
            SnackBar(content: Text(UserFormErrorMessage.of(error))),
          );

      case UserFormEditing() || UserFormSaving():
        return;
    }
  }
}
