import 'package:church_admin/church_admin.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

abstract class UserFormCubit extends Cubit<UserFormState> {
  UserFormCubit(UserDraft initial) : super(UserFormEditing(initial));

  void setName(String name) => emit(
    UserFormEditing(
      state.draft.copyWith(
        name: name,
        person: switch (state.draft.person) {
          CreateNewPerson(:final gender) => CreateNewPerson(
            name: name,
            gender: gender,
          ),
          final other => other,
        },
      ),
    ),
  );

  void setEmail(String email) => emit(
    UserFormEditing(
      state.draft.copyWith(email: email.trim().toLowerCase()),
    ),
  );

  void selectPerson(PersonLink person) => emit(
    UserFormEditing(
      state.draft.copyWith(
        person: person,
        name: switch (person) {
          LinkExistingPerson(:final person) => person.name,
          CreateNewPerson(:final name) => name,
          NoPersonSelected() => state.draft.name,
        },
      ),
    ),
  );

  void togglePermission(UserPermission permission) {
    final permissions = state.draft.permissions;

    emit(
      UserFormEditing(
        state.draft.copyWith(
          permissions: PermissionsSet.fromSet(
            !permissions.contains(permission)
                ? {...permissions, permission}
                : {...permissions.where((p) => p != permission)},
          ),
        ),
      ),
    );
  }

  void setAdminOn(List<AdminOnData> adminOn) =>
      emit(UserFormEditing(state.draft.copyWith(adminOn: adminOn)));

  void setInvitation(InvitationChoice invitation) => emit(
    UserFormEditing(state.draft.copyWith(invitation: invitation)),
  );

  Future<void> save() async {
    if (!state.draft.isValid) {
      emit(
        UserFormEditing(
          state.draft,
          error: const UserFormValidationError(),
        ),
      );

      return;
    }

    emit(UserFormSaving(state.draft));

    try {
      final uid = await persist(state.draft);

      emit(UserFormSaved(state.draft, uid));
    } catch (e) {
      emit(UserFormEditing(state.draft, error: e));
    }
  }

  @protected
  Future<String> persist(UserDraft draft);
}
