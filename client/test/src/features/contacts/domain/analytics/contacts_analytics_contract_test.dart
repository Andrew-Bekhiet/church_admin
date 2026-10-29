import 'package:church_admin/church_admin.dart';
import 'package:flutter_test/flutter_test.dart';

void main() {
  const fatherId = 'father';
  const father = RolePhoneContactLabel(
    PersonType(id: fatherId, name: 'الأب', isFamilyAdmin: true),
  );
  const work = FreePhoneContactLabel('عمل');

  group('Contacts analytics contract =>', () {
    for (final (event, expectedName, expectedProperties)
        in <(AnalyticsEvent, String, Json)>[
          (
            const ContactsPhoneAdd(father, isAutoMain: true),
            'contacts:phone_add',
            {'label_kind': 'role', 'role_id': fatherId, 'is_auto_main': true},
          ),
          (
            const ContactsPhoneAdd(work, isAutoMain: false),
            'contacts:phone_add',
            {'label_kind': 'free', 'is_auto_main': false},
          ),
          (
            const ContactsPhoneLabelChange(father),
            'contacts:phone_label_change',
            {'label_kind': 'role', 'role_id': fatherId},
          ),
        ]) {
      test('$expectedName sends $expectedProperties', () {
        expect(
          event,
          isA<AnalyticsEvent>()
              .having((event) => event.name, 'name', expectedName)
              .having(
                (event) => event.properties,
                'properties',
                expectedProperties,
              ),
        );
      });
    }
  });
}
