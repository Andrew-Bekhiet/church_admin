import 'package:church_admin/church_admin.dart';
import 'package:collection/collection.dart';
import 'package:equatable/equatable.dart';

class WhatsappRecipient with Equatable {
  final Person person;
  final List<PhoneContact> phones;
  final PhoneContact? selectedPhone;
  final WhatsappRecipientStatus status;

  bool get hasPhone => selectedPhone != null;

  @override
  List<Object?> get props => [person, phones, selectedPhone, status];

  const WhatsappRecipient({
    required this.person,
    required this.phones,
    required this.selectedPhone,
    this.status = WhatsappRecipientStatus.pending,
  });

  factory WhatsappRecipient.of(Person person) {
    final phones = EqualitySet<PhoneContact>.from(
      EqualityBy((contact) => contact.phone),
      [
        ...person.contacts.sorted(
          (a, b) => switch ((a.isMainPhone, b.isMainPhone)) {
            (true, false) => -1,
            (false, true) => 1,
            _ => 0,
          },
        ),
        ...person.familyContacts.map((familyContact) => familyContact.contact),
      ],
    ).toList();

    return WhatsappRecipient(
      person: person,
      phones: phones,
      selectedPhone: phones.firstOrNull,
    );
  }

  WhatsappRecipient copyWith({
    PhoneContact? selectedPhone,
    WhatsappRecipientStatus? status,
  }) => WhatsappRecipient(
    person: person,
    phones: phones,
    selectedPhone: selectedPhone ?? this.selectedPhone,
    status: status ?? this.status,
  );
}

enum WhatsappRecipientStatus { pending, opened, skipped }
