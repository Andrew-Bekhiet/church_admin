import 'package:church_admin/church_admin.dart';

sealed class FamilyEditIntent extends SerializableExtra {
  @override
  String get typeName => 'FamilyEditIntent';

  Json get analyticsProperties => switch (this) {
    CreateFamilyAtAddress(:final address) => {
      'intent_kind': CreateFamilyAtAddress.kind,
      if (address.area case final area?) 'area_id': area.id,
      if (address.street case final street?) 'street_id': street.id,
    },
    CreateChildFamilyOf(:final parent) => {
      'intent_kind': CreateChildFamilyOf.kind,
      'family_id': parent.id,
    },
    CreateParentFamilyOf(:final child) => {
      'intent_kind': CreateParentFamilyOf.kind,
      'family_id': child.id,
    },
    CreateBlankFamily() => {'intent_kind': CreateBlankFamily.kind},
    UpdateFamily(:final family) => {
      'intent_kind': UpdateFamily.kind,
      'family_id': family.id,
    },
  };

  const FamilyEditIntent();

  factory FamilyEditIntent.fromJson(Json json) {
    late final subject = EditIntentJson.subjectOf(
      json,
      intentName: 'FamilyEditIntent',
    );

    return switch (json[EditIntentJson.kindKey]) {
      UpdateFamily.kind => UpdateFamily(family: Family.fromJson(subject)),
      CreateFamilyAtAddress.kind => CreateFamilyAtAddress(
        address: Address.fromJson(subject),
      ),
      CreateChildFamilyOf.kind => CreateChildFamilyOf(
        parent: Family.fromJson(subject),
      ),
      CreateParentFamilyOf.kind => CreateParentFamilyOf(
        child: Family.fromJson(subject),
      ),
      _ => const CreateBlankFamily(),
    };
  }
}

sealed class CreateFamily extends FamilyEditIntent {
  const CreateFamily();

  Family draftFamily(String id);

  Family _draft(
    String id, {
    Address address = const Address(),
    List<Family> parents = const [],
    List<Family> children = const [],
  }) => Family(
    id: id,
    name: '',
    address: address,
    parents: parents,
    children: children,
  );
}

final class CreateBlankFamily extends CreateFamily {
  static const String kind = 'create';

  const CreateBlankFamily();

  @override
  Family draftFamily(String id) => _draft(id);

  @override
  Json toJson() => EditIntentJson.ofKind(kind);
}

final class CreateFamilyAtAddress extends CreateFamily {
  static const String kind = 'atAddress';

  final Address address;

  const CreateFamilyAtAddress({required this.address});

  @override
  Family draftFamily(String id) => _draft(id, address: address);

  @override
  Json toJson() => EditIntentJson.ofKind(kind, address);
}

final class CreateChildFamilyOf extends CreateFamily {
  static const String kind = 'childOf';

  final Family parent;

  const CreateChildFamilyOf({required this.parent});

  @override
  Family draftFamily(String id) => _draft(id, parents: [parent]);

  @override
  Json toJson() => EditIntentJson.ofKind(kind, parent);
}

final class CreateParentFamilyOf extends CreateFamily {
  static const String kind = 'parentOf';

  final Family child;

  const CreateParentFamilyOf({required this.child});

  @override
  Family draftFamily(String id) => _draft(id, children: [child]);

  @override
  Json toJson() => EditIntentJson.ofKind(kind, child);
}

final class UpdateFamily extends FamilyEditIntent {
  static const String kind = 'update';

  final Family family;

  const UpdateFamily({required this.family});

  @override
  Json toJson() => EditIntentJson.ofKind(kind, family);
}
