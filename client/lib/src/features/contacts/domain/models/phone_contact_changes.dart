import 'package:church_admin/church_admin.dart';
import 'package:collection/collection.dart';
import 'package:equatable/equatable.dart';

class PhoneContactChanges with Equatable {
  final List<String> deletedIds;
  final List<PhoneContact> updates;
  final List<PhoneContact> inserts;

  bool get isEmpty => deletedIds.isEmpty && updates.isEmpty && inserts.isEmpty;

  @override
  List<Object?> get props => [deletedIds, updates, inserts];

  const PhoneContactChanges({
    this.deletedIds = const [],
    this.updates = const [],
    this.inserts = const [],
  });

  factory PhoneContactChanges.between({
    required PersonPhoneBook initial,
    required List<PhoneContactDraft> drafts,
    required String personId,
    required String? familyId,
  }) {
    final initialById = {
      for (final contact in initial.own) contact.id: contact,
      for (final relative in initial.family)
        relative.contact.id: relative.contact,
    };
    final initialRoleById = {
      for (final relative in initial.family) relative.contact.id: relative.role,
    };

    PhoneContact? desiredOf(PhoneContactDraft draft) {
      final phone = draft.phone;
      if (phone == null) return null;

      final existing = initialById[draft.contactId];

      return switch (draft.label) {
        FreePhoneContactLabel(:final text) => PhoneContact(
          id: draft.key,
          phone: phone,
          label: (text?.trim().isEmpty ?? true) ? null : text?.trim(),
          isMainPhone: draft.isMainPhone,
          owner: PersonPhoneOwner(personId),
        ),
        RolePhoneContactLabel(:final role)
            when existing != null &&
                initialRoleById[existing.id]?.id == role.id =>
          existing.copyWith(phone: phone),
        RolePhoneContactLabel(:final role) when familyId != null =>
          PhoneContact(
            id: draft.key,
            phone: phone,
            owner: FamilyRolePhoneOwner(
              familyId: familyId,
              personTypeId: role.id,
            ),
          ),
        RolePhoneContactLabel() => null,
      };
    }

    final desired = drafts.map(desiredOf).nonNulls.toList();
    final desiredIds = desired.map((c) => c.id).toSet();

    bool keepsOwner(PhoneContact contact) =>
        initialById[contact.id]?.owner == contact.owner;
    bool movesOwner(PhoneContact contact) =>
        initialById.containsKey(contact.id) && !keepsOwner(contact);

    final deletedIds = [
      ...initialById.keys.whereNot(desiredIds.contains),
      ...desired.where(movesOwner).map((c) => c.id),
    ];
    final updates = desired
        .where((c) => keepsOwner(c) && initialById[c.id] != c)
        .sortedBy<num>((c) => c.isMainPhone ? 1 : 0);
    final inserts = desired.whereNot(keepsOwner).toList();

    return PhoneContactChanges(
      deletedIds: deletedIds,
      updates: updates,
      inserts: inserts,
    );
  }
}
