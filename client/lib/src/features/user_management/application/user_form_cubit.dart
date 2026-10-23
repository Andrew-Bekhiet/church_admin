import 'package:church_admin/church_admin.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

abstract class UserFormCubit extends Cubit<UserFormState> {
  final AnalyticsService _analyticsService;

  UserFormCubit(UserDraft initial, {AnalyticsService? analyticsService})
    : _analyticsService = analyticsService ?? AnalyticsService.I,
      super(UserFormEditing(initial));

  void setName(String name) => _emitEditing(
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
  );

  void setEmail(String email) => _emitEditing(
    state.draft.copyWith(email: email.trim().toLowerCase()),
  );

  void selectPerson(PersonLink person) => _emitEditing(
    state.draft.copyWith(
      person: person,
      name: switch (person) {
        LinkExistingPerson(:final person) => person.name,
        CreateNewPerson(:final name) => name,
        NoPersonSelected() => state.draft.name,
      },
    ),
  );

  void togglePermission(UserPermission permission) {
    final permissions = state.draft.permissions;

    _emitEditing(
      state.draft.copyWith(
        permissions: PermissionsSet.fromSet(
          !permissions.contains(permission)
              ? {...permissions, permission}
              : {...permissions.where((p) => p != permission)},
        ),
      ),
    );
  }

  void setAdminOn(List<AdminOnData> adminOn) =>
      _emitEditing(state.draft.copyWith(adminOn: adminOn));

  void setInvitation(InvitationChoice invitation) => _emitEditing(
    state.draft.copyWith(invitation: invitation),
  );

  Future<void> save() async {
    if (state is! UserFormEditing) return;

    final draft = state.draft;
    if (!draft.isValid) {
      const validationError = UserFormValidationError();
      _analyticsService.track(saveEventOf(draft, failure: validationError));
      emit(UserFormEditing(draft, error: validationError));

      return;
    }

    emit(UserFormSaving(draft));

    try {
      final uid = await persist(draft);

      _analyticsService.track(saveEventOf(draft));
      emit(UserFormSaved(draft, uid));
    } catch (e) {
      _analyticsService.track(saveEventOf(draft, failure: e));
      emit(UserFormEditing(draft, error: e));
    }
  }

  void _emitEditing(UserDraft draft) {
    if (state is! UserFormEditing) return;

    emit(UserFormEditing(draft));
  }

  @protected
  Future<String> persist(UserDraft draft);

  @protected
  AnalyticsEvent saveEventOf(UserDraft draft, {Object? failure});
}
