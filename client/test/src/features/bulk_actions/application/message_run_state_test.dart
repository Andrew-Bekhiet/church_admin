import 'package:church_admin/church_admin.dart';
import 'package:flutter_test/flutter_test.dart';

void main() {
  test('the current position counts only the people with a phone', () {
    const phone = PhoneContact(id: 'c1', phone: '01000000001');
    Recipient recipientOf(String id, List<PhoneContact> contacts) =>
        Recipient.of(Person(id: id, name: id, contacts: contacts));

    final sending = MessageRunSending(
      recipients: [
        recipientOf('mark', [phone]),
        recipientOf('peter', []),
        recipientOf('mina', [phone]),
      ],
      currentIndex: 2,
      opensNextChatOnReturn: false,
    );

    expect(sending.currentPositionAmongWithPhone, 2);
  });
}
