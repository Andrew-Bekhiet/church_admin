import 'dart:async';
import 'dart:convert';

import 'package:church_admin/church_admin.dart';
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

  Future<void> startWiper(
    Stream<User?> userDataStream, {
    required List<Json> refetchedPersons,
  }) async {
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
    await pumpEventQueue();
  }

  Future<void> browsePersons(List<Json> onServer) async {
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
    addTearDown(subscription.cancel);
    await pumpEventQueue();
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
    () async {
      final user = BehaviorSubject<User?>.seeded(globalAccessUser);
      addTearDown(user.close);
      await startWiper(user, refetchedPersons: [insider]);
      await browsePersons([insider, outsider]);
      expect(cachedPersonIds(), {insider['id'], outsider['id']});

      user.add(scopedUser);
      await pumpEventQueue();

      expect(cachedPersonIds(), {insider['id']});
    },
  );

  test('the wiper settles only once a wipe in progress has finished', () async {
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
    await pumpEventQueue();
    cachedPhotos.add(photo);

    user.add(scopedUser);
    await pumpEventQueue();
    bool hasSettled = false;
    unawaited(wiper.settled.then((_) => hasSettled = true));
    await pumpEventQueue();
    expect(hasSettled, isFalse);

    photosClearing.complete();
    await wiper.settled;

    expect(cachedPhotos, isEmpty);
  });

  test('losing global read access drops cached photos too', () async {
    final user = BehaviorSubject<User?>.seeded(globalAccessUser);
    addTearDown(user.close);
    await startWiper(user, refetchedPersons: []);
    cachedPhotos.add(photo);

    user.add(scopedUser);
    await pumpEventQueue();

    expect(cachedPhotos, isEmpty);
  });

  test('another account signing in gets a fresh cache', () async {
    final user = BehaviorSubject<User?>.seeded(scopedUser);
    addTearDown(user.close);
    await startWiper(user, refetchedPersons: []);
    cachedPhotos.add(photo);

    user.add(scopedUser.copyWith(uid: 'another-servant'));
    await pumpEventQueue();

    expect(cachedPhotos, isEmpty);
  });

  test(
    'a device whose access changed while the app was closed is cleaned on the '
    'next launch, even though it already saved the new permissions',
    () async {
      final beforeRestart = BehaviorSubject<User?>.seeded(globalAccessUser);
      await startWiper(beforeRestart, refetchedPersons: []);
      await browsePersons([insider, outsider]);
      await beforeRestart.close();

      await startWiper(Stream.value(scopedUser), refetchedPersons: [insider]);

      expect(cachedPersonIds(), {insider['id']});
    },
  );

  test(
    'a relaunch that reads the cache back from disk keeps it while the access '
    'is unchanged',
    () async {
      final beforeRestart = BehaviorSubject<User?>.seeded(scopedUser);
      await startWiper(beforeRestart, refetchedPersons: []);
      cachedPhotos.add(photo);
      await beforeRestart.close();

      for (final MapEntry(:key, :value) in storage.toMap().entries.toList()) {
        storage.put(key, jsonDecode(jsonEncode(value)) as Json);
      }
      await startWiper(Stream.value(scopedUser), refetchedPersons: []);

      expect(cachedPhotos, {photo});
    },
  );

  test(
    'a photo cache that fails to clear still lets out-of-scope people leave '
    'the device',
    () async {
      final user = BehaviorSubject<User?>.seeded(globalAccessUser);
      addTearDown(user.close);
      await startWiper(user, refetchedPersons: [insider]);
      await browsePersons([insider, outsider]);
      photosClearFailure = Exception('photos are locked');

      user.add(scopedUser);
      await pumpEventQueue();

      expect(cachedPersonIds(), {insider['id']});
    },
  );

  test(
    'a photo cache that failed to clear is cleaned again on the next launch',
    () async {
      final beforeRestart = BehaviorSubject<User?>.seeded(globalAccessUser);
      await startWiper(beforeRestart, refetchedPersons: []);
      cachedPhotos.add(photo);
      photosClearFailure = Exception('photos are locked');
      beforeRestart.add(scopedUser);
      await pumpEventQueue();
      await beforeRestart.close();
      expect(cachedPhotos, {photo});

      photosClearFailure = null;
      await startWiper(Stream.value(scopedUser), refetchedPersons: []);

      expect(cachedPhotos, isEmpty);
    },
  );

  test(
    'a cache filled before access was recorded is cleaned on launch',
    () async {
      await browsePersons([insider, outsider]);

      await startWiper(Stream.value(scopedUser), refetchedPersons: [insider]);

      expect(cachedPersonIds(), {insider['id']});
    },
  );

  test('gaining edit rights on an admin-on scope cleans the cache', () async {
    final user = BehaviorSubject<User?>.seeded(scopedUser);
    addTearDown(user.close);
    await startWiper(user, refetchedPersons: []);
    await browsePersons([insider]);

    user.add(
      scopedUser.copyWith(adminOn: [scopeA.copyWith(serviceAllowEdit: true)]),
    );
    await pumpEventQueue();

    expect(cachedPersonIds(), isEmpty);
  });

  test(
    'the user restored from the device on launch keeps the cache filled under '
    'the same access',
    () async {
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
      await startWiper(userData, refetchedPersons: []);
      cachedPhotos.add(photo);

      userData.add(user);
      await pumpEventQueue();

      expect(cachedPhotos, {photo});
    },
  );

  test('an update that keeps the same access keeps cached photos', () async {
    final user = BehaviorSubject<User?>.seeded(scopedUser);
    addTearDown(user.close);
    await startWiper(user, refetchedPersons: []);
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
    await pumpEventQueue();

    expect(cachedPhotos, {photo});
  });
}
