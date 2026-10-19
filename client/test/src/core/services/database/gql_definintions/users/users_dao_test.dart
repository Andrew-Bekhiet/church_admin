import 'dart:async';

import 'package:church_admin/church_admin.dart';
import 'package:fake_async/fake_async.dart';
import 'package:flutter_test/flutter_test.dart';

import '../../../../../fakes/fake_ash_backend.dart';
import '../../../../../fakes/fake_ash_tables_link.dart';
import '../../../../../fakes/fake_feature_flags_repo.dart';
import 'user_fixtures.dart';

void main() {
  final mina = UserFixtures.mina;
  const marina = UserFixtures.marina;
  const bishoy = UserFixtures.bishoy;

  setUp(
    () => initGlobalProviderContainer([
      featureFlagsRepoProvider.overrideWithValue(FakeFeatureFlagsRepo()),
    ]),
  );
  tearDown(resetGlobalProviderContainer);

  List<User> listedBy(
    PaginatableStreamBase<User> Function(UsersDAO users) listing, {
    Iterable<User>? rows,
  }) => FakeAshBackend.settledListing([
    UserFixtures.usersTable(rows: rows),
  ], (db) => listing(db.users));

  T withOpenUser<T>({
    required T Function(FakeAshBackend backend, List<User?> emitted) body,
    FakeAshTable? table,
    bool fullData = true,
  }) => fakeAsync((async) {
    final backend = FakeAshBackend([table ?? UserFixtures.usersTable()]);
    final emitted = <User?>[];
    final subscription = backend.db.users
        .streamSingleById(id: mina.uid, fullData: fullData)
        .listen(emitted.add);
    async.elapse(FakeAshBackend.settleTime);

    final result = body(backend, emitted);
    async.elapse(FakeAshBackend.settleTime);

    unawaited(subscription.cancel());
    backend.dispose();

    return result;
  });

  Json lastUpdateInput(FakeAshBackend backend) =>
      (backend.server.sentTo('updateUser').single.variables['input'] as Map)
          .cast<String, dynamic>();

  FakeAshBackend backendUpdating() {
    final backend = FakeAshBackend([UserFixtures.usersTable()]);
    addTearDown(backend.dispose);

    return backend;
  }

  group('listing', () {
    test('users are listed by name', () {
      expect(listedBy((users) => users.streamAll()), [bishoy, marina, mina]);
    });

    test('the users the viewer cannot manage can be left out', () {
      expect(
        listedBy(
          (users) => users.streamAll(
            where: Stream.value([
              Filter(
                UserFields().currentUserCanManageThisUser,
                PrimitiveOperator.eq,
                true,
              ),
            ]),
          ),
        ),
        [marina, mina],
      );
    });

    test('searching lists only the users whose name contains the text', () {
      expect(
        listedBy(
          (users) => users.streamAll(
            searchQuery: Stream.value(marina.name.substring(2, 6)),
          ),
        ),
        [marina],
      );
    });

    test('filtering by email lists only the users whose email matches', () {
      expect(
        listedBy(
          (users) => users.streamAll(
            where: Stream.value([
              Filter(
                UserFields().email,
                StringOperator.endsWith,
                '@example.org',
              ),
            ]),
          ),
        ),
        [marina],
      );
    });

    test(
      'the scopes a user administers are ordered by area, service, group',
      () {
        final scrambled = mina.copyWith(
          adminOn: mina.adminOn!.reversed.toList(),
        );

        expect(
          listedBy(
            (users) => users.streamAll(),
            rows: [scrambled],
          ).single.adminOn,
          mina.adminOn,
        );
      },
    );

    test('the list follows the change feed', () {
      fakeAsync((async) {
        final table = UserFixtures.usersTable(rows: [mina]);
        final backend = FakeAshBackend([table]);
        final stream = backend.db.users.streamAll();
        final emitted = <List<User>>[];
        final subscription = stream.listen(emitted.add);
        async.elapse(FakeAshBackend.settleTime);

        table.add(marina);
        backend.announce([
          EntityChange(type: 'User', id: marina.uid, op: 'insert'),
        ]);
        async.elapse(FakeAshBackend.settleTime);

        expect(emitted.last.map((user) => user.uid), [
          marina.uid,
          mina.uid,
        ]);

        unawaited(subscription.cancel());
        unawaited(stream.dispose());
        backend.dispose();
      });
    });
  });

  group('opening a user', () {
    test('a user opens with the details the screens show', () {
      final opened = withOpenUser(body: (_, emitted) => emitted.last);

      expect(opened, mina);
    });

    test('an open user follows the change feed', () {
      final reopened = withOpenUser(
        body: (backend, emitted) {
          backend.server.table('User').rows.first['name'] = 'مينا يوسف';
          backend.announce([
            EntityChange(type: 'User', id: mina.uid, op: 'update'),
          ]);

          return emitted;
        },
      );

      expect(reopened.last?.name, 'مينا يوسف');
    });

    test('a change of the viewer scope refetches the open user', () {
      final reopened = withOpenUser(
        body: (backend, emitted) {
          backend.server.table('User').rows.first['name'] = 'مينا يوسف';
          backend.resync();

          return emitted;
        },
      );

      expect(reopened.last?.name, 'مينا يوسف');
    });
  });

  group('updateUser', () {
    test('a changed name and email are sent', () async {
      final backend = backendUpdating();

      await backend.db.users.updateUser(
        UserUpdate(
          uid: mina.uid,
          name: 'مينا يوسف',
          email: 'mina.youssef@example.com',
        ),
      );

      expect(lastUpdateInput(backend), {
        'name': 'مينا يوسف',
        'email': 'mina.youssef@example.com',
      });
      expect(
        backend.server.sentTo('updateUser').single.variables['id'],
        mina.uid,
      );
    });

    test('an emptied email is sent empty so the server clears it', () async {
      final backend = backendUpdating();

      await backend.db.users.updateUser(UserUpdate(uid: mina.uid, email: ''));

      expect(lastUpdateInput(backend), {'email': ''});
    });

    test('linking a person sends the person id', () async {
      final backend = backendUpdating();

      await backend.db.users.updateUser(
        UserUpdate(uid: mina.uid, linkPersonId: 'person-2'),
      );

      expect(lastUpdateInput(backend), {'personId': 'person-2'});
    });

    test('unlinking a person sends a null person id', () async {
      final backend = backendUpdating();

      await backend.db.users.updateUser(
        UserUpdate(uid: mina.uid, unlinkPersonId: 'person-1'),
      );

      expect(lastUpdateInput(backend), {'personId': null});
    });

    test('replacing the linked person is one request', () async {
      final backend = backendUpdating();

      await backend.db.users.updateUser(
        UserUpdate(
          uid: mina.uid,
          linkPersonId: 'person-2',
          unlinkPersonId: 'person-1',
        ),
      );

      expect(backend.server.sentTo('updateUser'), hasLength(1));
      expect(lastUpdateInput(backend), {'personId': 'person-2'});
    });

    test('an update without changes sends nothing', () async {
      final backend = backendUpdating();

      await backend.db.users.updateUser(UserUpdate(uid: mina.uid));

      expect(backend.server.sentTo('updateUser'), isEmpty);
    });

    for (final code in const [
      'user/email-taken',
      'user/name-taken',
      'user/person-already-linked',
      'user/email-locked',
      'forbidden',
    ]) {
      test('a "$code" rejection reaches the caller with its code', () async {
        final backend = backendUpdating();
        backend.server.nextMutationRejectionCode = code;

        await expectLater(
          backend.db.users.updateUser(UserUpdate(uid: mina.uid, name: 'x')),
          throwsA(
            isA<BackendException>().having(
              (error) => error.code,
              'code',
              code,
            ),
          ),
        );
      });
    }
  });
}
