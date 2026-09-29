sealed class ContactOwner {
  const ContactOwner();
}

final class PersonContactOwner extends ContactOwner {
  const PersonContactOwner();
}

final class FamilyRoleContactOwner extends ContactOwner {
  final String familyId;
  final String? personTypeId;

  @override
  int get hashCode => Object.hash(familyId, personTypeId);

  const FamilyRoleContactOwner({required this.familyId, this.personTypeId});

  @override
  bool operator ==(Object other) =>
      other is FamilyRoleContactOwner &&
      other.familyId == familyId &&
      other.personTypeId == personTypeId;
}
