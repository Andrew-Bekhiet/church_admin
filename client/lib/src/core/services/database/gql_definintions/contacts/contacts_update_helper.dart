import 'package:church_admin/church_admin.dart';
import 'package:church_admin/src/core/services/database/gql_definintions/contacts/__generated__/mutations.gql.dart';

typedef ContactChange = ({PhoneContact old, PhoneContact updated});

class ContactsUpdateHelper {
  static final RegExp _e164 = RegExp(r'^\+[1-9][0-9]{6,14}$');

  final String personId;
  final List<PhoneContact> newContacts;
  final List<PhoneContact> oldContacts;

  late final Set<String> _newIds = newContacts.map((c) => c.id).toSet();
  late final Set<String> _oldIds = oldContacts.map((c) => c.id).toSet();

  late final List<ContactChange> _matched = [
    for (final updated in newContacts)
      for (final old in oldContacts)
        if (old.id == updated.id) (old: old, updated: updated),
  ];

  late final List<ContactChange> _kept = _matched
      .where((m) => _ownerOf(m.old) == _ownerOf(m.updated))
      .toList();

  late final List<PhoneContact> _ownerChanged = _matched
      .where((m) => _ownerOf(m.old) != _ownerOf(m.updated))
      .map((m) => m.updated)
      .toList();

  late final List<UuidValue> _deleteIds = [
    ...oldContacts.where((c) => !_newIds.contains(c.id)).map((c) => c.id),
    ..._ownerChanged.map((c) => c.id),
  ].map((id) => id.toUuid()).toList();

  late final List<UuidValue> _unsetMainIds = _kept
      .where((m) => m.old.isMainPhone && !m.updated.isMainPhone)
      .map((m) => m.updated.id.toUuid())
      .toList();

  late final List<PhoneContact> _upserts = [
    ...newContacts.where((c) => !_oldIds.contains(c.id)),
    ..._ownerChanged,
    ..._kept.where(_isChangedBeyondLosingMain).map((m) => m.updated),
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
  });

  bool _isChangedBeyondLosingMain(ContactChange change) =>
      change.old.ownLabel != change.updated.ownLabel ||
      change.old.phone != change.updated.phone ||
      (change.updated.isMainPhone && !change.old.isMainPhone);

  (String?, String?) _ownerOf(PhoneContact contact) => contact.isFamilyRole
      ? (contact.familyId, contact.personTypeId)
      : (null, null);

  Input_ContactsInsertInput _toInsertInput(PhoneContact contact) =>
      Input_ContactsInsertInput(
        id: contact.id.toUuid(),
        personId: contact.isFamilyRole ? null : personId.toUuid(),
        familyId: contact.familyId?.toUuid(),
        personTypeId: contact.isFamilyRole
            ? contact.personTypeId?.toUuid()
            : null,
        label: contact.ownLabel,
        phone: contact.phone,
        isMainPhone: contact.isMainPhone,
      );
}
