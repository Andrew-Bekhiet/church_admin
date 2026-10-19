import 'dart:async';

import 'package:church_admin/church_admin.dart';
import 'package:fake_async/fake_async.dart';
import 'package:flutter_test/flutter_test.dart';

import '../../../../../fakes/fake_ash_backend.dart';
import '../../../../../fakes/fake_ash_tables_link.dart';
import 'organization_rows.dart';

void main() {
  final primary = OrganizationFixtures.primaryService;
  final preparatory = OrganizationFixtures.preparatoryService;
  const servants = OrganizationFixtures.servantsService;

  group('reading', () {
    test('services are listed by the study years they serve', () {
      final table = FakeAshTable(
        typename: 'Service',
        projectsSelections: true,
        listRoot: 'services',
        rows: [
          OrganizationRow.service(servants),
          OrganizationRow.service(preparatory),
          OrganizationRow.service(primary),
        ],
      );

      expect(
        FakeAshBackend.settledListing(
          [table],
          (db) => db.services.streamAll(),
        ),
        [primary, preparatory, servants],
      );
    });

    test('searching lists the services whose name, class or group matches', () {
      final inPrimary = primary.copyWith(
        classes: [OrganizationFixtures.hopeClass],
        groups: [OrganizationFixtures.choirGroup],
      );
      final inPreparatory = preparatory.copyWith(
        classes: [OrganizationFixtures.preparatoryClass],
        groups: [OrganizationFixtures.openGroup],
      );
      final table = FakeAshTable(
        typename: 'Service',
        projectsSelections: true,
        listRoot: 'services',
        rows: [
          OrganizationRow.service(inPrimary),
          OrganizationRow.service(inPreparatory),
        ],
      );

      List<Service> searchedFor(String text) => FakeAshBackend.settledListing(
        [table],
        (db) => db.services.streamAll(searchQuery: Stream.value(text)),
      );

      expect(searchedFor(preparatory.name), [
        inPreparatory.copyWith(classes: [], groups: []),
      ]);
      expect(
        searchedFor(OrganizationFixtures.hopeClass.name).map((s) => s.id),
        [primary.id],
      );
      expect(
        searchedFor(OrganizationFixtures.openGroup.name).map((s) => s.id),
        [preparatory.id],
      );
    });

    test(
      'searching shows only the matching classes and groups of a service',
      () {
        final service = primary.copyWith(
          classes: [
            OrganizationFixtures.hopeClass,
            OrganizationFixtures.faithClass,
          ],
          groups: [OrganizationFixtures.choirGroup],
        );
        final table = FakeAshTable(
          typename: 'Service',
          projectsSelections: true,
          listRoot: 'services',
          rows: [OrganizationRow.service(service)],
        );

        expect(
          FakeAshBackend.settledListing(
            [table],
            (db) => db.services.streamAll(
              searchQuery: Stream.value(OrganizationFixtures.hopeClass.name),
            ),
          ),
          [
            service.copyWith(
              classes: [OrganizationFixtures.hopeClass],
              groups: [],
            ),
          ],
        );
      },
    );

    test('a listed service carries its classes ordered by study year', () {
      final service = primary.copyWith(
        classes: [
          OrganizationFixtures.loveClass,
          OrganizationFixtures.faithClass,
          OrganizationFixtures.hopeClass,
        ],
      );
      final table = FakeAshTable(
        typename: 'Service',
        projectsSelections: true,
        listRoot: 'services',
        rows: [OrganizationRow.service(service)],
      );

      final listed = FakeAshBackend.settledListing(
        [table],
        (db) => db.services.streamAll(),
      );

      expect(listed.single.classes, [
        OrganizationFixtures.hopeClass,
        OrganizationFixtures.faithClass,
        OrganizationFixtures.loveClass,
      ]);
    });

    test('a listed service tells whether the user can edit it', () {
      final editable = primary.copyWith(userCanEdit: true);
      final table = FakeAshTable(
        typename: 'Service',
        projectsSelections: true,
        listRoot: 'services',
        rows: [OrganizationRow.service(editable)],
      );

      expect(
        FakeAshBackend.settledListing(
          [table],
          (db) => db.services.streamAll(),
        ).single.userCanEdit,
        editable.userCanEdit,
      );
    });

    test('the list follows the change feed', () {
      fakeAsync((async) {
        final table = FakeAshTable(
          typename: 'Service',
          projectsSelections: true,
          listRoot: 'services',
          rows: [OrganizationRow.service(primary)],
        );
        final backend = FakeAshBackend([table]);
        final stream = backend.db.services.streamAll();
        final emitted = <List<Service>>[];
        final subscription = stream.listen(emitted.add);
        async.elapse(FakeAshBackend.settleTime);

        table.add(OrganizationRow.service(preparatory));
        backend.announce([
          EntityChange(type: 'Service', id: preparatory.id, op: 'insert'),
        ]);
        async.elapse(FakeAshBackend.settleTime);

        expect(emitted.last, [primary, preparatory]);

        unawaited(subscription.cancel());
        unawaited(stream.dispose());
        backend.dispose();
      });
    });

    test(
      'a service is read with its default meeting, admins and last edit',
      () {
        final lastEdit = LastRecordedByInfo(
          time: DateTime(2026, 10, 1, 9),
          recordedBy: OrganizationFixtures.servant.uid,
          user: OrganizationFixtures.servant,
        );
        final detailed = primary.copyWith(
          defaultMeeting: OrganizationFixtures.serviceMeeting,
          nextService: Service(id: preparatory.id, name: preparatory.name),
          nextServiceId: preparatory.id,
          meetings: [OrganizationFixtures.serviceMeeting],
          adminUsers: [OrganizationFixtures.servant],
          lastEdit: lastEdit,
        );
        final table = FakeAshTable(
          typename: 'Service',
          projectsSelections: true,
          listRoot: 'services',
          rows: [OrganizationRow.service(detailed)],
        );

        final read = fakeAsync((async) {
          final backend = FakeAshBackend([table]);
          Service? latest;
          final subscription = backend.db.services
              .streamSingleById(id: primary.id)
              .listen((service) => latest = service);
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
    test('creating a service with a default meeting answers both', () async {
      final server = FakeOrganizationServer();
      final backend = server.backend();
      addTearDown(backend.dispose);
      final draft = Service(
        id: '',
        name: 'ثانوي',
        studyYearFromId: OrganizationFixtures.firstGrade.order,
        studyYearToId: OrganizationFixtures.sixthGrade.order,
        defaultMeeting: OrganizationFixtures.serviceMeeting.copyWith(id: ''),
      );

      final answered = await backend.db.services.createObject(newObject: draft);

      expect(answered.name, draft.name);
      expect(answered.studyYearFrom, OrganizationFixtures.firstGrade);
      expect(answered.studyYearTo, OrganizationFixtures.sixthGrade);
      expect(
        answered.defaultMeeting,
        draft.defaultMeeting?.copyWith(id: answered.defaultMeeting?.id ?? ''),
      );
      expect(answered.defaultMeeting?.id, isNotEmpty);
    });

    test('creating a service with a taken name is rejected with its code', () {
      final server = FakeOrganizationServer(services: [primary]);
      final backend = server.backend();
      addTearDown(backend.dispose);

      expect(
        backend.db.services.createObject(
          newObject: Service(id: '', name: primary.name),
        ),
        throwsA(
          isA<BackendRejectedException>().having(
            (e) => e.code,
            'code',
            'service/name-taken',
          ),
        ),
      );
    });

    test('updating a service answers the service as it was saved', () async {
      final server = FakeOrganizationServer(services: [primary, preparatory]);
      final backend = server.backend();
      addTearDown(backend.dispose);
      final edited = primary.copyWith(
        name: 'ابتدائي وحضانة',
        studyYearFrom: null,
        studyYearFromId: null,
        nextService: preparatory,
        nextServiceId: preparatory.id,
      );

      final answered = await backend.db.services.updateObject(
        newObject: edited,
        oldObject: primary,
      );

      expect(answered?.name, edited.name);
      expect(answered?.studyYearFrom, isNull);
      expect(answered?.studyYearTo, primary.studyYearTo);
      expect(answered?.nextServiceId, preparatory.id);
    });

    test('renaming a service as it was opened keeps its next service and '
        'default meeting', () async {
      const meeting = OrganizationFixtures.serviceMeeting;
      final saved = primary.copyWith(
        nextService: preparatory,
        nextServiceId: preparatory.id,
        defaultMeeting: meeting,
        meetings: [meeting],
      );
      final opened = fakeAsync((async) {
        final backend = FakeOrganizationServer(
          services: [saved, preparatory],
        ).backend();
        Service? emitted;
        final subscription = backend.db.services
            .streamSingleById(id: saved.id)
            .listen((service) => emitted = service);
        async.elapse(FakeAshBackend.settleTime);
        unawaited(subscription.cancel());
        backend.dispose();

        return emitted!;
      });
      final backend = FakeOrganizationServer(services: [saved]).backend();
      addTearDown(backend.dispose);

      await backend.db.services.updateObject(
        newObject: opened.copyWith(name: 'ابتدائي وحضانة'),
        oldObject: opened,
      );

      expect(
        backend.server.sentTo('updateService').single.variables['input'],
        allOf(
          containsPair('nextServiceId', preparatory.id),
          containsPair('defaultMeetingId', meeting.id),
        ),
      );
    });

    test('renaming a service to a taken name is rejected with its code', () {
      final server = FakeOrganizationServer(services: [primary, preparatory]);
      final backend = server.backend();
      addTearDown(backend.dispose);

      expect(
        backend.db.services.updateObject(
          newObject: preparatory.copyWith(name: primary.name),
          oldObject: preparatory,
        ),
        throwsA(
          isA<BackendRejectedException>().having(
            (e) => e.code,
            'code',
            'service/name-taken',
          ),
        ),
      );
    });

    test('deleting a service answers the deleted service', () async {
      final server = FakeOrganizationServer(services: [primary, preparatory]);
      final backend = server.backend();
      addTearDown(backend.dispose);

      final deleted = await backend.db.services.deleteById(id: primary.id);

      expect(deleted, primary);
      expect(server.services.rows.map((row) => row['id']), [preparatory.id]);
    });
  });
}
