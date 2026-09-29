import 'package:church_admin/church_admin.dart';
import 'package:church_admin/src/core/services/database/gql_definintions/contacts/__generated__/mutations.gql.dart';
import 'package:church_admin/src/core/services/database/gql_definintions/contacts/contact_change.dart';

class ContactsUpdateHelper {
  static final RegExp _e164 = RegExp(r'^\+[1-9][0-9]{6,14}$');

  final String personId;
  final String? familyId;
  final List<PhoneContact> newContacts;
  final List<PhoneContact> oldContacts;

  late final List<PhoneContact> _resolvedNew = [
    for (final c in newContacts)
      switch (c.owner) {
        FamilyRoleContactOwner(familyId: null) => c.copyWith(
          familyId: familyId,
        ),
        PersonContactOwner(personId: null) => c.copyWith(personId: personId),
        _ => c,
      },
  ];

  late final Set<String> _newIds = _resolvedNew.map((c) => c.id).toSet();
  late final Set<String> _oldIds = oldContacts.map((c) => c.id).toSet();

  late final List<ContactChange> _matched = [
    for (final updated in _resolvedNew)
      for (final old in oldContacts)
        if (old.id == updated.id) ContactChange(old: old, updated: updated),
  ];

  late final List<ContactChange> _kept = _matched
      .where((m) => !m.ownerChanged)
      .toList();

  late final List<PhoneContact> _ownerChanged = _matched
      .where((m) => m.ownerChanged)
      .map((m) => m.updated)
      .toList();

  late final List<UuidValue> _deleteIds = [
    ...oldContacts.where((c) => !_newIds.contains(c.id)).map((c) => c.id),
    ..._ownerChanged.map((c) => c.id),
  ].map((id) => id.toUuid()).toList();

  late final List<UuidValue> _unsetMainIds = _kept
      .where((m) => m.losesMain)
      .map((m) => m.updated.id.toUuid())
      .toList();

  late final List<PhoneContact> _upserts = [
    ..._resolvedNew.where((c) => !_oldIds.contains(c.id)),
    ..._ownerChanged,
    ..._kept.where((m) => m.changesBeyondLosingMain).map((m) => m.updated),
  ];

  bool get hasChanges =>
      _deleteIds.isNotEmpty || _unsetMainIds.isNotEmpty || _upserts.isNotEmpty;

  Variables_Mutation_saveContacts get variables {
    if (_upserts.any((c) => !_e164.hasMatch(c.phone))) {
      throw const ContactsSaveException(ContactsErrorCode.invalidPhone);
    }

    return Variables_Mutation_saveContacts(
      deleteIds: _deleteIds,
      unsetMainIds: _unsetMainIds,
      upserts: _upserts.map(_toInsertInput).toList(),
      deleteContacts: _deleteIds.isNotEmpty,
      unsetMainContacts: _unsetMainIds.isNotEmpty,
      upsertContacts: _upserts.isNotEmpty,
    );
  }

  ContactsUpdateHelper({
    required this.personId,
    required this.newContacts,
    required this.oldContacts,
    this.familyId,
  });

  Input_ContactsInsertInput _toInsertInput(PhoneContact contact) =>
      switch (contact.owner) {
        PersonContactOwner(:final personId) => Input_ContactsInsertInput(
          id: contact.id.toUuid(),
          personId: personId?.toUuid(),
          label: contact.ownLabel,
          phone: contact.phone,
          isMainPhone: contact.isMainPhone,
        ),
        FamilyRoleContactOwner(:final familyId, :final personTypeId) =>
          Input_ContactsInsertInput(
            id: contact.id.toUuid(),
            familyId: familyId?.toUuid(),
            personTypeId: personTypeId?.toUuid(),
            label: contact.ownLabel,
            phone: contact.phone,
            isMainPhone: contact.isMainPhone,
          ),
      };
}
