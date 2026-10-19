import 'dart:async';

import 'package:church_admin/church_admin.dart';
import 'package:fake_async/fake_async.dart';
import 'package:flutter_test/flutter_test.dart';

import '../../../../../fakes/fake_ash_backend.dart';
import '../../../../../fakes/fake_feature_flags_repo.dart';
import 'family_fixtures.dart';

void main() {
  const unclaimedDaughterPhone = FamilyPhoneContact(
    contact: FamilyFixtures.daughterPhone,
    role: FamilyFixtures.daughter,
  );
  final saved = FamilyFixtures.georgeFamilyDetails.copyWith(
    status: MartialStatus.married,
    marriageDate: DateTime(2001, 2, 3),
    deceasedSpouseName: null,
    contacts: [
      ...FamilyFixtures.georgeFamilyDetails.contacts,
      unclaimedDaughterPhone,
    ],
  );

  setUp(
    () => initGlobalProviderContainer([
      featureFlagsRepoProvider.overrideWithValue(FakeFeatureFlagsRepo()),
    ]),
  );
  tearDown(resetGlobalProviderContainer);

  Family opened() => fakeAsync((async) {
    final backend = FakeAshBackend([
      FamilyFixtures.familiesTable(rows: [saved]),
    ]);
    Family? emitted;
    final subscription = backend.db.families
        .streamSingleById(id: saved.id)
        .listen((family) => emitted = family);
    async.elapse(FakeAshBackend.settleTime);
    unawaited(subscription.cancel());
    backend.dispose();

    return emitted!;
  });

  test('an opened family holds every phone it owns alone, whatever its '
      'role, since saving replaces them all', () {
    expect(opened().contacts, contains(unclaimedDaughterPhone));
  });

  test('renaming a family as it was opened sends every other value it '
      'holds', () async {
    final family = opened();
    final backend = FakeAshBackend([FamilyFixtures.familiesTable()]);
    addTearDown(backend.dispose);

    await backend.db.families.updateObject(
      newObject: family.copyWith(name: 'عائلة جرجس الجديدة'),
      oldObject: family,
    );

    final sent = backend.server.sentTo('updateFamily').single.variables;
    expect(
      sent['input'],
      allOf(
        containsPair('notes', saved.notes),
        containsPair('churchId', saved.church?.id),
        containsPair('status', MartialStatus.married.name),
        containsPair('marriageDate', '2001-02-03'),
        containsPair(
          'contacts',
          unorderedEquals([
            for (final contact in saved.contacts)
              {
                'phone': contact.contact.phone,
                'personTypeId': contact.role.id,
                'label': contact.contact.label,
                'isMainPhone': contact.contact.isMainPhone,
              },
          ]),
        ),
      ),
    );
  });
}
