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
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 16),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        spacing: 8,
        children: [
          if (draft.person is CreateNewPerson)
            TextFormField(
              initialValue: draft.name,
              decoration: const InputDecoration(labelText: 'الاسم'),
              onChanged: cubit.setName,
            ),
          if (existingUser?.authId != null)
            CopiablePropertyWidget('البريد الإلكتروني', draft.email)
          else
            TextFormField(
              initialValue: draft.email,
              keyboardType: TextInputType.emailAddress,
              decoration: const InputDecoration(labelText: 'البريد الإلكتروني'),
              onChanged: cubit.setEmail,
            ),
          if (existingUser?.authId == null &&
              draft.email.isNotEmpty &&
              FeatureFlagsRepository.I.enableAccountClaimingByEmail)
            Text(
              'سيتم ربط هذا الحساب تلقائياً بأول مستخدم يسجل ويؤكد هذا البريد الإلكتروني',
              style: TextTheme.of(context).bodySmall?.copyWith(
                color: ColorScheme.of(context).onSurfaceVariant,
              ),
            ),
        ],
      ),
    );
  }
}
