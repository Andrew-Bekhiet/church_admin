import 'dart:async';
import 'dart:convert';

import 'package:church_admin/church_admin.dart';
import 'package:fake_async/fake_async.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:graphql_flutter/graphql_flutter.dart';
import 'package:rxdart/rxdart.dart';

import '../../../../fakes/fake_box.dart';
import '../../../../fakes/recording_subscription_link.dart';

void main() {
  const personsOperation = 'watchPersonsNames';
  const insider = {'__typename': 'Persons', 'id': 'insider', 'name': 'In'};
  const outsider = {'__typename': 'Persons', 'id': 'outsider', 'name': 'Out'};
  const photo = 'cached-photo';
  const scopeA = AdminOnData(
    permissionId: 'scope-a',
    service: Service(id: 'service-a', name: 'A'),
  );
  const scopedUser = User(
    uid: 'servant',
    name: 'Servant',
    permissions: PermissionsSet.fromSet({UserPermission.approved}),
    adminOn: [scopeA],
  );
  final globalAccessUser = scopedUser.copyWith(
    permissions: const PermissionsSet.fromSet({
      UserPermission.approved,
      UserPermission.readAllData,
      UserPermission.writeAllData,
    }),
  );

  late FakeSyncKVStore<Json> storage;
  late GqlKvStore store;
  late RecordingSubscriptionLink link;
  late BehaviorSubject<bool> connectivity;
  late DBGraphQLClient client;
  late Set<String> cachedPhotos;
  late Exception? photosClearFailure;

  Set<String> cachedPersonIds() => {
    for (final key in store.toMap().keys)
      if (key.startsWith('Persons:')) key.substring('Persons:'.length),
  };

  void letAccessSettle(FakeAsync async) =>
      async.elapse(AccessChangeCacheWiper.accessSettleDelay);

  void startWiper(
    FakeAsync async,
    Stream<User?> userDataStream, {
    required List<Json> refetchedPersons,
  }) {
    final wiper = AccessChangeCacheWiper(
      userDataStream: userDataStream,
      graphQLCacheStore: store,
      clearsOfCachesBesideGraphQL: [
        () async {
          if (photosClearFailure case final failure?) throw failure;
          cachedPhotos.clear();
        },
      ],
      refetchOpenSubscriptions: () => link.pushToOpenSubscriptions(
        personsOperation,
        {'persons': refetchedPersons},
      ),
    );
    addTearDown(wiper.dispose);
    async.flushMicrotasks();
  }

  void browsePersons(FakeAsync async, List<Json> onServer) {
    link.dataByOperationName[personsOperation] = {'persons': onServer};
    final subscription = client
        .subscribe(
          SubscriptionOptions(
            document: gql(
              'subscription watchPersonsNames { persons { id name } }',
            ),
            operationName: personsOperation,
          ),
        )
        .listen(null);
    addTearDown(() => unawaited(subscription.cancel()));
    async.flushMicrotasks();
  }

  setUp(() {
    storage = FakeSyncKVStore();
    store = GqlKvStore(storage);
    link = RecordingSubscriptionLink({});
    connectivity = BehaviorSubject.seeded(true);
    client = DBGraphQLClient(
      connectivityStream: connectivity,
      link: link,
      defaultPolicies: DefaultPolicies(
        subscribe: Policies(fetch: FetchPolicy.cacheAndNetwork),
      ),
      cache: GraphQLCache(store: store, typePolicies: GqlTypePolicies.policies),
    );
    cachedPhotos = {};
    photosClearFailure = null;
  });

  tearDown(() => connectivity.close());

  test(
    'losing global read access drops out-of-scope people from the device and '
    'keeps the people still in scope',
    () => fakeAsync((async) {
      final user = BehaviorSubject<User?>.seeded(globalAccessUser);
      addTearDown(user.close);
      startWiper(async, user, refetchedPersons: [insider]);
      browsePersons(async, [insider, outsider]);
      expect(cachedPersonIds(), {insider['id'], outsider['id']});

      user.add(scopedUser);
      letAccessSettle(async);

      expect(cachedPersonIds(), {insider['id']});
    }),
  );

  test(
    'a change of access is acted on only once it settles',
    () => fakeAsync((async) {
      final user = BehaviorSubject<User?>.seeded(globalAccessUser);
      addTearDown(user.close);
      startWiper(async, user, refetchedPersons: [insider]);
      browsePersons(async, [insider, outsider]);

      user.add(scopedUser);
      async.elapse(AccessChangeCacheWiper.accessSettleDelay ~/ 2);

      expect(cachedPersonIds(), {insider['id'], outsider['id']});
    }),
  );

  test(
    'an access that changes back before settling keeps the caches',
    () => fakeAsync((async) {
      final user = BehaviorSubject<User?>.seeded(globalAccessUser);
      addTearDown(user.close);
      startWiper(async, user, refetchedPersons: []);
      cachedPhotos.add(photo);

      user.add(scopedUser);
      async.elapse(AccessChangeCacheWiper.accessSettleDelay ~/ 2);
      user.add(globalAccessUser);
      letAccessSettle(async);

      expect(cachedPhotos, {photo});
    }),
  );

  test(
    'the wiper settles only once a wipe in progress has finished',
    () => fakeAsync((async) {
      final user = BehaviorSubject<User?>.seeded(globalAccessUser);
      addTearDown(user.close);
      final photosClearing = Completer<void>();
      final wiper = AccessChangeCacheWiper(
        userDataStream: user,
        graphQLCacheStore: store,
        clearsOfCachesBesideGraphQL: [
          () async {
            if (store.filledUnderAccess != null) await photosClearing.future;
            cachedPhotos.clear();
          },
        ],
        refetchOpenSubscriptions: () {},
      );
      addTearDown(wiper.dispose);
      async.flushMicrotasks();
      cachedPhotos.add(photo);

      user.add(scopedUser);
      letAccessSettle(async);
      bool hasSettled = false;
      unawaited(wiper.settled.then((_) => hasSettled = true));
      async.flushMicrotasks();
      expect(hasSettled, isFalse);

      photosClearing.complete();
      async.flushMicrotasks();

      expect(hasSettled, isTrue);
      expect(cachedPhotos, isEmpty);
    }),
  );

  test(
    'losing global read access drops cached photos too',
    () => fakeAsync((async) {
      final user = BehaviorSubject<User?>.seeded(globalAccessUser);
      addTearDown(user.close);
      startWiper(async, user, refetchedPersons: []);
      cachedPhotos.add(photo);

      user.add(scopedUser);
      letAccessSettle(async);

      expect(cachedPhotos, isEmpty);
    }),
  );

  test(
    'another account signing in gets a fresh cache',
    () => fakeAsync((async) {
      final user = BehaviorSubject<User?>.seeded(scopedUser);
      addTearDown(user.close);
      startWiper(async, user, refetchedPersons: []);
      cachedPhotos.add(photo);

      user.add(scopedUser.copyWith(uid: 'another-servant'));
      letAccessSettle(async);

      expect(cachedPhotos, isEmpty);
    }),
  );

  test(
    'a device whose access changed while the app was closed is cleaned at '
    'once on the next launch, even though it already saved the new '
    'permissions',
    () => fakeAsync((async) {
      final beforeRestart = BehaviorSubject<User?>.seeded(globalAccessUser);
      startWiper(async, beforeRestart, refetchedPersons: []);
      browsePersons(async, [insider, outsider]);
      unawaited(beforeRestart.close());

      final relaunched = BehaviorSubject<User?>.seeded(scopedUser);
      addTearDown(relaunched.close);
      startWiper(async, relaunched, refetchedPersons: [insider]);

      expect(cachedPersonIds(), {insider['id']});
    }),
  );

  test(
    'a relaunch that reads the cache back from disk keeps it while the access '
    'is unchanged',
    () => fakeAsync((async) {
      final beforeRestart = BehaviorSubject<User?>.seeded(scopedUser);
      startWiper(async, beforeRestart, refetchedPersons: []);
      cachedPhotos.add(photo);
      unawaited(beforeRestart.close());

      for (final MapEntry(:key, :value) in storage.toMap().entries.toList()) {
        storage.put(key, jsonDecode(jsonEncode(value)) as Json);
      }
      final relaunched = BehaviorSubject<User?>.seeded(scopedUser);
      addTearDown(relaunched.close);
      startWiper(async, relaunched, refetchedPersons: []);

      expect(cachedPhotos, {photo});
    }),
  );

  test(
    'a photo cache that fails to clear still lets out-of-scope people leave '
    'the device',
    () => fakeAsync((async) {
      final user = BehaviorSubject<User?>.seeded(globalAccessUser);
      addTearDown(user.close);
      startWiper(async, user, refetchedPersons: [insider]);
      browsePersons(async, [insider, outsider]);
      photosClearFailure = Exception('photos are locked');

      user.add(scopedUser);
      letAccessSettle(async);

      expect(cachedPersonIds(), {insider['id']});
    }),
  );

  test(
    'a photo cache that failed to clear is cleaned again on the next launch',
    () => fakeAsync((async) {
      final beforeRestart = BehaviorSubject<User?>.seeded(globalAccessUser);
      startWiper(async, beforeRestart, refetchedPersons: []);
      cachedPhotos.add(photo);
      photosClearFailure = Exception('photos are locked');
      beforeRestart.add(scopedUser);
      letAccessSettle(async);
      unawaited(beforeRestart.close());
      expect(cachedPhotos, {photo});

      photosClearFailure = null;
      final relaunched = BehaviorSubject<User?>.seeded(scopedUser);
      addTearDown(relaunched.close);
      startWiper(async, relaunched, refetchedPersons: []);

      expect(cachedPhotos, isEmpty);
    }),
  );

  test(
    'a cache filled before access was recorded is cleaned at once on launch',
    () => fakeAsync((async) {
      browsePersons(async, [insider, outsider]);

      final relaunched = BehaviorSubject<User?>.seeded(scopedUser);
      addTearDown(relaunched.close);
      startWiper(async, relaunched, refetchedPersons: [insider]);

      expect(cachedPersonIds(), {insider['id']});
    }),
  );

  test(
    'gaining edit rights on an admin-on scope cleans the cache',
    () => fakeAsync((async) {
      final user = BehaviorSubject<User?>.seeded(scopedUser);
      addTearDown(user.close);
      startWiper(async, user, refetchedPersons: []);
      browsePersons(async, [insider]);

      user.add(
        scopedUser.copyWith(adminOn: [scopeA.copyWith(serviceAllowEdit: true)]),
      );
      letAccessSettle(async);

      expect(cachedPersonIds(), isEmpty);
    }),
  );

  test(
    'the user restored from the device on launch keeps the cache filled under '
    'the same access',
    () => fakeAsync((async) {
      final user = scopedUser.copyWith(
        adminOn: [
          scopeA.copyWith(
            serviceStudyYearData: StudyYear(order: 10, name: 'أولى ثانوي'),
            serviceGender: Gender.female,
            serviceAllowEdit: true,
            serviceAllowRecordAttendance: true,
            classes: const [Class(id: 'class-a', name: 'Class A')],
          ),
          const AdminOnData(
            permissionId: 'area-scope',
            area: Area(id: 'area-a', name: 'Area A'),
            areaAllowExport: true,
          ),
          const AdminOnData(
            permissionId: 'group-scope',
            group: Group(id: 'group-a', name: 'Group A'),
            groupAdminOnUsers: true,
            groupAllowEdit: true,
          ),
        ],
      );
      final restoredFromDevice = User.fromJson(
        jsonDecode(jsonEncode(user.toJson())) as Json,
      );
      final userData = BehaviorSubject<User?>.seeded(restoredFromDevice);
      addTearDown(userData.close);
      startWiper(async, userData, refetchedPersons: []);
      cachedPhotos.add(photo);

      userData.add(user);
      letAccessSettle(async);

      expect(cachedPhotos, {photo});
    }),
  );

  test(
    'an update that keeps the same access keeps cached photos',
    () => fakeAsync((async) {
      final user = BehaviorSubject<User?>.seeded(scopedUser);
      addTearDown(user.close);
      startWiper(async, user, refetchedPersons: []);
      cachedPhotos.add(photo);

      user.add(
        scopedUser.copyWith(
          name: 'Renamed',
          adminOn: [
            scopeA.copyWith(
              service: const Service(id: 'service-a', name: 'Renamed A'),
            ),
          ],
        ),
      );
      letAccessSettle(async);

      expect(cachedPhotos, {photo});
    }),
  );
}
