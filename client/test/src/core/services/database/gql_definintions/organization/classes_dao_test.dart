import 'dart:async';

import 'package:church_admin/church_admin.dart';
import 'package:collection/collection.dart';
import 'package:fake_async/fake_async.dart';
import 'package:flutter_test/flutter_test.dart';

import '../../../../../fakes/fake_ash_backend.dart';
import '../../../../../fakes/fake_ash_tables_link.dart';
import 'organization_rows.dart';

void main() {
  final hope = OrganizationFixtures.hopeClass;
  final faith = OrganizationFixtures.faithClass;
  final love = OrganizationFixtures.loveClass;
  final preparatory = OrganizationFixtures.preparatoryClass;

  FakeAshTable tableOf(List<Class> classes) => FakeAshTable(
    typename: 'Class',
    listRoot: 'classes',
    rows: classes.map(OrganizationRow.klass),
  );

  group('reading', () {
    test('classes are listed by study year, then girls first, then name', () {
      expect(
        FakeAshBackend.settledListing(
          [
            tableOf([love, faith, preparatory, hope]),
          ],
          (db) => db.classes.streamAll(),
        ),
        [hope, faith, love, preparatory],
      );
    });

    test('classes can be ordered by name instead', () {
      expect(
        FakeAshBackend.settledListing(
          [
            tableOf([love, faith, preparatory, hope]),
          ],
          (db) => db.classes.streamAll(
            orderBy: Stream.value([OrderBy(field: ClassFields().name)]),
          ),
        ),
        [hope, faith, love, preparatory].sortedBy((class$) => class$.name),
      );
    });

    test('searching lists only the classes whose name contains the text', () {
      expect(
        FakeAshBackend.settledListing(
          [
            tableOf([hope, faith, love]),
          ],
          (db) => db.classes.streamAll(
            searchQuery: Stream.value(faith.name.substring(4)),
          ),
        ),
        [faith],
      );
    });

    test('classes can be filtered by their study year', () {
      expect(
        FakeAshBackend.settledListing(
          [
            tableOf([hope, faith, love, preparatory]),
          ],
          (db) => db.classes.streamAll(
            where: Stream.value([
              Filter(
                ClassFields().studyYear,
                MultiSelectOperator.anyOf,
                [OrganizationFixtures.seventhGrade],
              ),
            ]),
          ),
        ),
        [preparatory],
      );
    });

    test('the list follows the change feed', () {
      fakeAsync((async) {
        final table = tableOf([hope]);
        final backend = FakeAshBackend([table]);
        final stream = backend.db.classes.streamAll();
        final emitted = <List<Class>>[];
        final subscription = stream.listen(emitted.add);
        async.elapse(FakeAshBackend.settleTime);

        table.add(OrganizationRow.klass(faith));
        backend.announce([
          EntityChange(type: 'Class', id: faith.id, op: 'insert'),
        ]);
        async.elapse(FakeAshBackend.settleTime);

        expect(emitted.last, [hope, faith]);

        unawaited(subscription.cancel());
        unawaited(stream.dispose());
        backend.dispose();
      });
    });

    test(
      'the classes of a service are those the service holds, by name',
      () async {
        final backend = FakeAshBackend([
          tableOf([love, preparatory, hope, faith]),
        ]);
        addTearDown(backend.dispose);

        expect(
          await backend.db.classes.getClassesForService(
            serviceId: OrganizationFixtures.primaryService.id,
          ),
          [faith, hope, love].sortedBy((class$) => class$.name),
        );
      },
    );

    test('a class is read with its service, admins and last edit', () {
      final lastEdit = LastRecordedByInfo(
        time: DateTime(2026, 10, 1, 9),
        recordedBy: OrganizationFixtures.servant.uid,
        user: OrganizationFixtures.servant,
      );
      final detailed = hope.copyWith(
        service: OrganizationFixtures.primaryService,
        adminUsers: [OrganizationFixtures.servant],
        lastEdit: lastEdit,
        userCanEdit: true,
      );
      final table = tableOf([detailed]);

      final read = fakeAsync((async) {
        final backend = FakeAshBackend([table]);
        Class? latest;
        final subscription = backend.db.classes
            .streamSingleById(id: hope.id)
            .listen((class$) => latest = class$);
        async.elapse(FakeAshBackend.settleTime);
        unawaited(subscription.cancel());
        backend.dispose();

        return latest;
      });

      expect(read, detailed);
    });
  });

  group('writing', () {
    test('creating a class answers the class the server stored', () async {
      final backend = FakeOrganizationServer().backend();
      addTearDown(backend.dispose);
      final draft = hope.copyWith(
        id: '',
        studyYear: null,
        studyYearTo: null,
      );

      final answered = await backend.db.classes.createObject(newObject: draft);

      expect(answered, draft.copyWith(id: answered.id));
      expect(answered.id, isNotEmpty);
    });

    test('a class served for one study year ends at that year', () async {
      final backend = FakeOrganizationServer().backend();
      addTearDown(backend.dispose);

      final answered = await backend.db.classes.createObject(
        newObject: hope.copyWith(
          id: '',
          studyYear: null,
          studyYearTo: null,
          serviceStudyYearTo: null,
        ),
      );

      expect(answered.serviceStudyYearTo, hope.serviceStudyYear);
    });

    test('updating a class answers the class as it was saved', () async {
      final backend = FakeOrganizationServer(classes: [hope]).backend();
      addTearDown(backend.dispose);
      final edited = hope.copyWith(
        name: 'فصل السلام',
        serviceGender: null,
        serviceStudyYearTo: OrganizationFixtures.secondGrade.order,
      );

      final answered = await backend.db.classes.updateObject(
        newObject: edited,
        oldObject: hope,
      );

      expect(answered?.name, edited.name);
      expect(answered?.serviceGender, isNull);
      expect(answered?.serviceStudyYearTo, edited.serviceStudyYearTo);
      expect(answered?.serviceStudyYear, hope.serviceStudyYear);
    });

    test('deleting a class answers the deleted class', () async {
      final server = FakeOrganizationServer(classes: [hope, faith]);
      final backend = server.backend();
      addTearDown(backend.dispose);

      final deleted = await backend.db.classes.deleteById(id: hope.id);

      expect(deleted, hope);
      expect(server.classes.rows.map((row) => row['id']), [faith.id]);
    });
  });
}
