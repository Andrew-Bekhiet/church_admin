import 'dart:async';

import 'package:church_admin/church_admin.dart';
import 'package:fake_async/fake_async.dart';
import 'package:flutter_test/flutter_test.dart';

import '../../../../../fakes/fake_ash_backend.dart';
import '../../../../../fakes/fake_ash_tables_link.dart';
import 'organization_rows.dart';

void main() {
  final choir = OrganizationFixtures.choirGroup;
  final reading = OrganizationFixtures.readingGroup;
  final open = OrganizationFixtures.openGroup;
  const meeting = OrganizationFixtures.serviceMeeting;

  FakeAshTable tableOf(List<Group> groups) => FakeAshTable(
    typename: 'Group',
    listRoot: 'groups',
    rows: groups.map(OrganizationRow.group),
  );

  group('reading', () {
    test('groups are listed by validity, those without one last', () {
      expect(
        FakeAshBackend.settledListing(
          [
            tableOf([open, reading, choir]),
          ],
          (db) => db.groups.streamAll(),
        ),
        [choir, reading, open],
      );
    });

    test('searching lists only the groups whose name contains the text', () {
      expect(
        FakeAshBackend.settledListing(
          [
            tableOf([choir, reading, open]),
          ],
          (db) => db.groups.streamAll(
            searchQuery: Stream.value(reading.name.substring(7)),
          ),
        ),
        [reading],
      );
    });

    test('the list follows the change feed', () {
      fakeAsync((async) {
        final table = tableOf([choir]);
        final backend = FakeAshBackend([table]);
        final stream = backend.db.groups.streamAll();
        final emitted = <List<Group>>[];
        final subscription = stream.listen(emitted.add);
        async.elapse(FakeAshBackend.settleTime);

        table.add(OrganizationRow.group(reading));
        backend.announce([
          EntityChange(type: 'Group', id: reading.id, op: 'insert'),
        ]);
        async.elapse(FakeAshBackend.settleTime);

        expect(emitted.last, [choir, reading]);

        unawaited(subscription.cancel());
        unawaited(stream.dispose());
        backend.dispose();
      });
    });

    test(
      'a group is read with its service, meetings, admins and last edit',
      () {
        final lastEdit = LastRecordedByInfo(
          time: DateTime(2026, 10, 1, 9),
          recordedBy: OrganizationFixtures.servant.uid,
          user: OrganizationFixtures.servant,
        );
        final detailed = choir.copyWith(
          service: OrganizationFixtures.primaryService,
          defaultMeeting: meeting,
          meetings: [meeting],
          adminUsers: [OrganizationFixtures.servant],
          lastEdit: lastEdit,
        );
        final table = tableOf([detailed]);

        final read = fakeAsync((async) {
          final backend = FakeAshBackend([table]);
          Group? latest;
          final subscription = backend.db.groups
              .streamSingleById(id: choir.id)
              .listen((group) => latest = group);
          async.elapse(FakeAshBackend.settleTime);
          unawaited(subscription.cancel());
          backend.dispose();

          return latest;
        });

        expect(read, detailed);
      },
    );
  });

  group('writing', () {
    test('creating a group answers the group the server stored', () async {
      final backend = FakeOrganizationServer().backend();
      addTearDown(backend.dispose);
      final draft = choir.copyWith(id: '');

      final answered = await backend.db.groups.createObject(newObject: draft);

      expect(answered, draft.copyWith(id: answered.id));
      expect(answered.id, isNotEmpty);
    });

    test(
      'updating a group sets the validity and the default meeting',
      () async {
        final held = choir.copyWith(meetings: [meeting]);
        final backend = FakeOrganizationServer(groups: [held]).backend();
        addTearDown(backend.dispose);
        final edited = held.copyWith(
          name: 'كورال الكبار',
          validity: DateTimeRange(
            start: DateTime(2026, 11),
            end: DateTime(2027, 5, 31),
          ),
          defaultMeeting: meeting,
        );

        final answered = await backend.db.groups.updateObject(
          newObject: edited,
          oldObject: held,
        );

        expect(answered, edited);
      },
    );

    test('a default meeting of another group is rejected with its code', () {
      final backend = FakeOrganizationServer(groups: [choir]).backend();
      addTearDown(backend.dispose);

      expect(
        backend.db.groups.updateObject(
          newObject: choir.copyWith(defaultMeeting: meeting),
          oldObject: choir,
        ),
        throwsA(
          isA<BackendRejectedException>().having(
            (e) => e.code,
            'code',
            'group/default-meeting-mismatch',
          ),
        ),
      );
    });

    test('deleting a group answers the deleted group', () async {
      final server = FakeOrganizationServer(groups: [choir, reading]);
      final backend = server.backend();
      addTearDown(backend.dispose);

      final deleted = await backend.db.groups.deleteById(id: choir.id);

      expect(deleted, choir);
      expect(server.groups.rows.map((row) => row['id']), [reading.id]);
    });
  });
}
