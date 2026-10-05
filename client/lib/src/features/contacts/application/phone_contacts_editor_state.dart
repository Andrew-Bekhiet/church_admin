import 'package:church_admin/church_admin.dart';
import 'package:equatable/equatable.dart';

final class PhoneContactsEditorState with Equatable {
  final List<PhoneContactDraft> drafts;
  final List<PersonType> familyRoles;
  final bool hasFamily;
  final bool familyOnly;
  final Map<String, PhoneContactDraftError> errors;
  final List<PhoneContact> ownContacts;
  final List<FamilyPhoneContact> familyContacts;

  @override
  List<Object?> get props => [
    drafts,
    familyRoles,
    hasFamily,
    familyOnly,
    errors,
    ownContacts,
    familyContacts,
  ];

  const PhoneContactsEditorState({
    required this.drafts,
    required this.familyRoles,
    required this.hasFamily,
    required this.familyOnly,
    required this.errors,
    required this.ownContacts,
    required this.familyContacts,
  });
}
