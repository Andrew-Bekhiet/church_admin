sealed class ContactOwner {
  const ContactOwner();
}

final class PersonContactOwner extends ContactOwner {
  final String? personId;

  @override
  int get hashCode => personId.hashCode;

  const PersonContactOwner({this.personId});

  @override
  bool operator ==(Object other) =>
      other is PersonContactOwner && other.personId == personId;
}

final class FamilyRoleContactOwner extends ContactOwner {
  final String? familyId;
  final String? personTypeId;

  @override
  int get hashCode => Object.hash(familyId, personTypeId);

  const FamilyRoleContactOwner({this.familyId, this.personTypeId});

  @override
  bool operator ==(Object other) =>
      other is FamilyRoleContactOwner &&
      other.familyId == familyId &&
      other.personTypeId == personTypeId;
}
