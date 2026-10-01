import 'package:church_admin/church_admin.dart';
import 'package:collection/collection.dart';
import 'package:equatable/equatable.dart';

class PhoneContactChanges with Equatable {
  final List<String> deletedIds;
  final List<PhoneContact> updates;
  final List<PhoneContact> ownInserts;
  final List<FamilyPhoneContact> familyInserts;

  bool get isEmpty =>
      deletedIds.isEmpty &&
      updates.isEmpty &&
      ownInserts.isEmpty &&
      familyInserts.isEmpty;

  @override
  List<Object?> get props => [deletedIds, updates, ownInserts, familyInserts];

  const PhoneContactChanges({
    this.deletedIds = const [],
    this.updates = const [],
    this.ownInserts = const [],
    this.familyInserts = const [],
  });

  factory PhoneContactChanges.between({
    List<PhoneContact> initialOwn = const [],
    List<PhoneContact> desiredOwn = const [],
    List<FamilyPhoneContact> initialFamily = const [],
    List<FamilyPhoneContact> desiredFamily = const [],
  }) {
    final initialOwnById = {for (final c in initialOwn) c.id: c};
    final initialFamilyById = {for (final f in initialFamily) f.contact.id: f};

    bool keepsRole(FamilyPhoneContact relative) =>
        initialFamilyById[relative.contact.id]?.role.id == relative.role.id;

    final keptOwnIds = desiredOwn.map((c) => c.id).toSet();
    final keptFamilyIds = desiredFamily
        .where(keepsRole)
        .map((f) => f.contact.id)
        .toSet();

    return PhoneContactChanges(
      deletedIds: [
        ...initialOwnById.keys.whereNot(keptOwnIds.contains),
        ...initialFamilyById.keys.whereNot(keptFamilyIds.contains),
      ],
      updates: [
        ...desiredOwn.where(
          (c) => initialOwnById.containsKey(c.id) && initialOwnById[c.id] != c,
        ),
        ...desiredFamily
            .where(
              (f) =>
                  keepsRole(f) &&
                  initialFamilyById[f.contact.id]?.contact != f.contact,
            )
            .map((f) => f.contact),
      ],
      ownInserts: desiredOwn
          .whereNot((c) => initialOwnById.containsKey(c.id))
          .toList(),
      familyInserts: desiredFamily.whereNot(keepsRole).toList(),
    );
  }
}
