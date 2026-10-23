import 'package:bloc_test/bloc_test.dart';
import 'package:church_admin/church_admin.dart';
import 'package:flutter_test/flutter_test.dart';

import '../../../utils.dart';
import '../support/phone_contacts_editor_analytics_fixture.dart';

void main() {
  late PhoneContactsEditorAnalyticsFixture f;

  setUp(() => f = PhoneContactsEditorAnalyticsFixture());
  tearDown(defaultTearDown);

  group('Phone contacts editor analytics', () {
    blocTest<PhoneContactsEditorCubit, PhoneContactsEditorState>(
      'adding a role number is tracked by its role, not its number',
      build: () => f.createCubit(),
      act: (cubit) => cubit.add(
        const RolePhoneContactLabel(PhoneContactsEditorAnalyticsFixture.father),
      ),
      verify: (_) => expect(f.trackedPropertiesOf<ContactsPhoneAdd>(), {
        'label_kind': PhoneContactLabelKind.role.name,
        'role_id': PhoneContactsEditorAnalyticsFixture.father.id,
        'is_auto_main': false,
      }),
    );

    blocTest<PhoneContactsEditorCubit, PhoneContactsEditorState>(
      'relabeling a number is tracked by the label kind, not its text',
      build: () => f.createCubit(),
      act: (cubit) => cubit.changeLabel(
        PhoneContactsEditorAnalyticsFixture.ownWork.id,
        const FreePhoneContactLabel('بيت'),
      ),
      verify: (_) => expect(f.trackedPropertiesOf<ContactsPhoneLabelChange>(), {
        'label_kind': PhoneContactLabelKind.free.name,
      }),
    );

    blocTest<PhoneContactsEditorCubit, PhoneContactsEditorState>(
      'picking the label a number already has is not tracked',
      build: () => f.createCubit(),
      act: (cubit) => cubit.changeLabel(
        PhoneContactsEditorAnalyticsFixture.ownWork.id,
        FreePhoneContactLabel(
          PhoneContactsEditorAnalyticsFixture.ownWork.label,
        ),
      ),
      verify: (_) => expect(f.analytics.trackedEvents, isEmpty),
    );

    blocTest<PhoneContactsEditorCubit, PhoneContactsEditorState>(
      'making another number the main one is tracked as becoming main',
      build: () => f.createCubit(),
      act: (cubit) =>
          cubit.toggleMain(PhoneContactsEditorAnalyticsFixture.ownWork.id),
      verify: (_) => expect(f.trackedPropertiesOf<ContactsMainPhoneToggle>(), {
        'is_main': true,
      }),
    );

    blocTest<PhoneContactsEditorCubit, PhoneContactsEditorState>(
      'removing a number is tracked by its label kind',
      build: () => f.createCubit(),
      act: (cubit) =>
          cubit.remove(PhoneContactsEditorAnalyticsFixture.ownWork.id),
      verify: (_) => expect(f.trackedNames, ['contacts:phone_remove']),
    );
  });
}
