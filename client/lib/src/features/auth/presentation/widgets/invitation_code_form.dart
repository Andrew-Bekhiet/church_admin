import 'package:church_admin/church_admin.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class InvitationCodeForm extends StatefulWidget {
  const InvitationCodeForm({super.key});

  @override
  State<InvitationCodeForm> createState() => _InvitationCodeFormState();
}

abstract final class InvitationCodeFormKeys {
  static const Key codeField = ValueKey('Invitation Code Field Key');
  static const Key applyButton = ValueKey('Apply Invitation Code Button Key');
}

class _InvitationCodeFormState extends State<InvitationCodeForm> {
  final _formKey = GlobalKey<FormState>();
  final _codeController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<AuthBloc, AuthState>(
      bloc: AuthBloc.I,
      builder: (context, state) => Form(
        key: _formKey,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          spacing: 10,
          children: [
            TextFormField(
              key: InvitationCodeFormKeys.codeField,
              controller: _codeController,
              decoration: const InputDecoration(
                labelText: 'كود الدعوة',
                helperText: 'يمكنك أن تسأل أحد المشرفين ليعطيك كود دعوة',
              ),
              maxLines: null,
              textInputAction: TextInputAction.done,
              onFieldSubmitted: (_) => _applyInvitationCode(),
              validator: (value) {
                if (value?.trim().isEmpty ?? true) {
                  return 'برجاء إدخال كود الدخول لتفعيل حسابك';
                }

                return null;
              },
            ),
            FilledButton(
              key: InvitationCodeFormKeys.applyButton,
              onPressed: state is AuthLoading ? null : _applyInvitationCode,
              child: const Text('تفعيل الحساب بالكود'),
            ),
          ],
        ),
      ),
    );
  }

  @override
  void dispose() {
    _codeController.dispose();
    super.dispose();
  }

  void _applyInvitationCode() {
    if (!(_formKey.currentState?.validate() ?? false)) {
      return;
    }

    AuthBloc.I.add(ApplyInvitationCode(_codeController.text.trim()));
  }
}
