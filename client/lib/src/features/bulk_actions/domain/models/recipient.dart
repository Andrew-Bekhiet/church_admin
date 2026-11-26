import 'package:church_admin/church_admin.dart';
import 'package:collection/collection.dart';
import 'package:equatable/equatable.dart';

class Recipient with Equatable {
  final Person person;
  final List<PhoneContact> phones;
  final PhoneContact? selectedPhone;
  final RecipientStatus status;
  final String message;

  bool get hasPhone => selectedPhone != null;

  bool get isRemaining => hasPhone && status == RecipientStatus.pending;

  @override
  List<Object?> get props => [person, phones, selectedPhone, status, message];

  const Recipient({
    required this.person,
    required this.phones,
    required this.selectedPhone,
    this.status = RecipientStatus.pending,
    this.message = '',
  });

  factory Recipient.of(Person person) {
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

    return Recipient(
      person: person,
      phones: phones,
      selectedPhone: phones.firstOrNull,
    );
  }

  Recipient copyWith({
    PhoneContact? selectedPhone,
    RecipientStatus? status,
    String? message,
  }) => Recipient(
    person: person,
    phones: phones,
    selectedPhone: selectedPhone ?? this.selectedPhone,
    status: status ?? this.status,
    message: message ?? this.message,
  );

  Recipient withMessageFrom(MessageTemplate template) =>
      copyWith(message: template.renderFor(person));

  Recipient asSent() => copyWith(status: RecipientStatus.sent);

  Recipient asNotSentIfSent() => switch (status) {
    RecipientStatus.sent => copyWith(status: RecipientStatus.notSent),
    _ => this,
  };

  Recipient asOpenFailed() => copyWith(status: RecipientStatus.openFailed);

  Recipient asSkippedUnlessOpenFailed() => switch (status) {
    RecipientStatus.openFailed => this,
    _ => copyWith(status: RecipientStatus.skipped),
  };
}

enum RecipientStatus { pending, sent, notSent, openFailed, skipped }
