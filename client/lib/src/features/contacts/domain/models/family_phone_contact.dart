import 'package:church_admin/church_admin.dart';
import 'package:equatable/equatable.dart';

class FamilyPhoneContact with Equatable {
  final PhoneContact contact;
  final PersonType role;
  final String? personId;

  String get roleLabel => 'رقم الهاتف (${role.name})';

  @override
  List<Object?> get props => [contact, role.id, personId];

  const FamilyPhoneContact({
    required this.contact,
    required this.role,
    this.personId,
  });

  factory FamilyPhoneContact.fromJson(Json json) => FamilyPhoneContact(
    contact: PhoneContact.fromJson(json),
    role: PersonType.fromJson(Json.from(json['personType'] as Map)),
    personId: json['personId'] as String?,
  );

  Json toJson() => {
    ...contact.toJson(),
    'personId': personId,
    'personType': role.toJson(),
  };

  Input_ContactsInsertInput toInsertInput({String? familyId}) {
    final insert = contact.toInsertInput().copyWith(
      personTypeId: role.id.toUuid(),
    );

    return switch (familyId) {
      final familyId? => insert.copyWith(familyId: familyId.toUuid()),
      null => insert,
    };
  }

  FamilyPhoneContact copyWith({PhoneContact? contact}) => FamilyPhoneContact(
    contact: contact ?? this.contact,
    role: role,
    personId: personId,
  );
}
