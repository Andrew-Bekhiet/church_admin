import 'package:church_admin/church_admin.dart';
import 'package:equatable/equatable.dart';

sealed class PhoneContactsEditorState with Equatable {
  @override
  List<Object?> get props => [];

  const PhoneContactsEditorState();
}

final class PhoneContactsEditorLoading extends PhoneContactsEditorState {
  const PhoneContactsEditorLoading();
}

final class PhoneContactsEditorReady extends PhoneContactsEditorState {
  final List<PhoneContactDraft> drafts;
  final List<PersonType> familyRoles;
  final String? familyId;
  final Map<String, PhoneContactDraftError> errors;

  @override
  List<Object?> get props => [drafts, familyRoles, familyId, errors];

  const PhoneContactsEditorReady({
    required this.drafts,
    required this.familyRoles,
    required this.familyId,
    required this.errors,
  });
}
