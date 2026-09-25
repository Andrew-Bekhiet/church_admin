import 'package:church_admin/church_admin.dart';
import 'package:equatable/equatable.dart';

sealed class UserFormState with Equatable {
  final UserDraft draft;

  @override
  List<Object?> get props => [draft];

  const UserFormState(this.draft);
}

final class UserFormEditing extends UserFormState {
  final Object? error;

  @override
  List<Object?> get props => [draft, error];

  const UserFormEditing(super.draft, {this.error});
}

final class UserFormSaving extends UserFormState {
  const UserFormSaving(super.draft);
}

final class UserFormSaved extends UserFormState {
  final String uid;

  @override
  List<Object?> get props => [draft, uid];

  const UserFormSaved(super.draft, this.uid);
}
