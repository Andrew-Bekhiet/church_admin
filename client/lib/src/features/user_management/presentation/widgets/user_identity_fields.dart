import 'package:church_admin/church_admin.dart';
import 'package:flutter/material.dart';

class UserIdentityFields extends StatelessWidget {
  final UserDraft draft;
  final User? existingUser;
  final UserFormCubit cubit;

  const UserIdentityFields({
    required this.draft,
    required this.existingUser,
    required this.cubit,
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    final canEditName = draft.person is CreateNewPerson;

    return Column(
      crossAxisAlignment: CrossAxisAlignment.stretch,
      children: [
        if (canEditName)
          TextFormField(
            key: ValueKey(draft.name),
            initialValue: draft.name,
            decoration: const InputDecoration(labelText: 'الاسم'),
            onChanged: cubit.setName,
          )
        else
          ListTile(
            title: const Text('الاسم'),
            subtitle: Text(
              draft.name.isEmpty
                  ? 'يتم أخذ الاسم من بيانات الشخص المرتبط'
                  : draft.name,
            ),
          ),
        if (existingUser?.authId != null)
          CopiablePropertyWidget('البريد الإلكتروني', draft.email)
        else
          TextFormField(
            key: ValueKey(draft.email),
            initialValue: draft.email,
            keyboardType: TextInputType.emailAddress,
            decoration: const InputDecoration(labelText: 'البريد الإلكتروني'),
            onChanged: cubit.setEmail,
          ),
        if (existingUser?.authId == null &&
            draft.email.isNotEmpty &&
            FeatureFlagsRepository.I.enableAccountClaimingByEmail)
          Padding(
            padding: const EdgeInsetsDirectional.only(start: 16, end: 16),
            child: Text(
              'سيتم ربط هذا الحساب تلقائياً بأول مستخدم يسجل ويؤكد هذا البريد الإلكتروني',
              style: TextTheme.of(context).bodySmall?.copyWith(
                color: ColorScheme.of(context).onSurfaceVariant,
              ),
            ),
          ),
      ],
    );
  }
}
