import 'package:church_admin/church_admin.dart';
import 'package:flutter_test/flutter_test.dart';

void main() {
  test('the current position counts only the people with a phone', () {
    const phone = PhoneContact(id: 'c1', phone: '01000000001');
    WhatsappRecipient recipientOf(String id, List<PhoneContact> contacts) =>
        WhatsappRecipient.of(Person(id: id, name: id, contacts: contacts));

    final sending = BulkWhatsappSending(
      recipients: [
        recipientOf('mark', [phone]),
        recipientOf('peter', []),
        recipientOf('mina', [phone]),
      ],
      template: const MessageTemplate(text: '', fields: []),
      currentIndex: 2,
    );

    expect(sending.currentPositionAmongWithPhone, 2);
  });
}
