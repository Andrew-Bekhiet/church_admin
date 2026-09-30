import 'package:church_admin/church_admin.dart';
import 'package:equatable/equatable.dart';

class PhoneContact with EquatableMixin {
  final String id;
  final String phone;
  final String? label;
  final bool isMainPhone;
  final PhoneContactOwner owner;

  @override
  List<Object?> get props => [id, phone, label, isMainPhone, owner];

  const PhoneContact({
    required this.id,
    required this.phone,
    required this.owner,
    this.label,
    this.isMainPhone = false,
  });

  factory PhoneContact.fromColumns({
    required String id,
    required String phone,
    required String? label,
    required bool isMainPhone,
    required String? personId,
    required String? familyId,
    required String? personTypeId,
  }) => PhoneContact(
    id: id,
    phone: phone,
    label: label,
    isMainPhone: isMainPhone,
    owner: switch ((personId, familyId, personTypeId)) {
      (final personId?, _, _) => PersonPhoneOwner(personId),
      (null, final familyId?, final personTypeId?) => FamilyRolePhoneOwner(
        familyId: familyId,
        personTypeId: personTypeId,
      ),
      _ => throw ArgumentError('A contact must have a person or a family role'),
    },
  );

  PhoneContact copyWith({String? phone, bool? isMainPhone}) => PhoneContact(
    id: id,
    phone: phone ?? this.phone,
    label: label,
    isMainPhone: isMainPhone ?? this.isMainPhone,
    owner: owner,
  );
}
