import 'package:church_admin/church_admin.dart';
import 'package:church_admin/src/features/data_entry/presentation/screens/edit_object_data/permission_check_widget.dart';
import 'package:church_admin/src/features/user_management/presentation/widgets/user_identity_fields.dart';
import 'package:church_admin/src/features/user_management/presentation/widgets/user_invitation_field.dart';
import 'package:church_admin/src/features/user_management/presentation/widgets/user_person_link_field.dart';
import 'package:church_admin/src/features/user_management/presentation/widgets/user_section_card.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:material_symbols_icons/material_symbols_icons.dart';

class EditUserForm extends StatelessWidget {
  final UserEditIntent intent;
  final UserDraft draft;

  const EditUserForm({required this.intent, required this.draft, super.key});

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    final cubit = context.read<UserFormCubit>();
    final existingUser = switch (intent) {
      UpdateUser(:final user) => user,
      CreateUser() => null,
    };

    return Column(
      spacing: 8,
      children: [
        UserSectionCard(
          icon: Symbols.person,
          title: 'المخدوم',
          child: Padding(
            padding: const EdgeInsets.all(12),
            child: UserPersonLinkField(
              person: draft.person,
              allowCreatingNewPerson: intent is CreateUser,
              cubit: cubit,
            ),
          ),
        ),
        UserSectionCard(
          icon: Symbols.account_circle,
          title: 'الحساب',
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              Padding(
                padding: const EdgeInsets.only(top: 12),
                child: UserIdentityFields(
                  draft: draft,
                  existingUser: existingUser,
                  cubit: cubit,
                ),
              ),
              if (existingUser?.authId == null) ...[
                const Divider(height: 1),
                UserInvitationField(invitation: draft.invitation, cubit: cubit),
              ],
              const Divider(height: 1),
              PermissionCheckWidget(
                permission: UserPermission.approved,
                permissions: draft.permissions,
                onToggle: cubit.togglePermission,
                subtitleText: 'يجب تفعيل الحساب للسماح للمستخدم بالدخول',
              ),
            ],
          ),
        ),
        UserSectionCard(
          icon: Symbols.shield,
          title: 'صلاحيات عامة',
          child: Column(
            children: UserPermission.values
                .where((p) => p != UserPermission.approved)
                .map(
                  (p) => PermissionCheckWidget(
                    permission: p,
                    permissions: draft.permissions,
                    onToggle: cubit.togglePermission,
                    subtitleText: p.label,
                  ),
                )
                .toList(),
          ),
        ),
        ListTile(
          leading: const Icon(Symbols.admin_panel_settings),
          title: Text('أمين على', style: theme.textTheme.titleMedium),
        ),
        EditAdminOnDataWidget(
          adminOn: draft.adminOn,
          onAdminOnChanged: cubit.setAdminOn,
        ),
        const SizedBox(height: 80),
      ],
    );
  }
}
