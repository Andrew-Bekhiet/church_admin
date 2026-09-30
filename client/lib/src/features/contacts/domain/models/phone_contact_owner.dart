import 'package:equatable/equatable.dart';

sealed class PhoneContactOwner with EquatableMixin {
  const PhoneContactOwner();
}

final class PersonPhoneOwner extends PhoneContactOwner {
  final String personId;

  @override
  List<Object?> get props => [personId];

  const PersonPhoneOwner(this.personId);
}

final class FamilyRolePhoneOwner extends PhoneContactOwner {
  final String familyId;
  final String personTypeId;

  @override
  List<Object?> get props => [familyId, personTypeId];

  const FamilyRolePhoneOwner({
    required this.familyId,
    required this.personTypeId,
  });
}
