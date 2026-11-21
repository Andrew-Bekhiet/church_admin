import 'dart:async';

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
  const outsiderPhoto = 'outsider-photo';
  const serviceA = Service(id: 'service-a', name: 'A');
  const scopedUser = User(
    uid: 'servant',
    name: 'Servant',
    permissions: PermissionsSet.fromSet({UserPermission.approved}),
    adminOn: [AdminOnData(permissionId: 'scope-a', service: serviceA)],
  );
  final superUser = scopedUser.copyWith(
    permissions: const PermissionsSet.fromSet({
      UserPermission.approved,
      UserPermission.readAllData,
      UserPermission.writeAllData,
    }),
  );

  late GqlKvStore store;
  late RecordingSubscriptionLink link;
  late BehaviorSubject<bool> connectivity;
  late DBGraphQLClient client;
  late List<Json> personsOnServer;
  late Set<String> cachedPhotos;

  Set<String> cachedPersonIds() => {
    for (final key in store.toMap().keys)
      if (key.startsWith('Persons:')) key.substring('Persons:'.length),
  };

  Future<void> startWiper(Stream<User?> userDataStream) async {
    final wiper = AccessChangeCacheWiper(
      userDataStream: userDataStream,
      graphQLCacheStore: store,
      clearsOfOtherAccessScopedCaches: [() async => cachedPhotos.clear()],
      refetchOpenSubscriptions: () => link.pushToOpenSubscriptions(
        personsOperation,
        {'persons': personsOnServer},
      ),
    );
    addTearDown(wiper.dispose);
    await pumpEventQueue();
  }

  Future<void> browsePersons() async {
    link.dataByOperationName[personsOperation] = {'persons': personsOnServer};
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
    cachedPhotos.add(outsiderPhoto);
  }

  setUp(() {
    store = GqlKvStore(FakeSyncKVStore());
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
    personsOnServer = [insider, outsider];
    cachedPhotos = {};
  });

  tearDown(() => connectivity.close());

  test(
    'losing global read access drops out-of-scope people from the device and '
    'keeps the people still in scope',
    () async {
      final user = BehaviorSubject<User?>.seeded(superUser);
      addTearDown(user.close);
      await startWiper(user);
      await browsePersons();
      expect(cachedPersonIds(), {'insider', 'outsider'});

      personsOnServer = [insider];
      user.add(scopedUser);
      await pumpEventQueue();

      expect(cachedPersonIds(), {'insider'});
    },
  );

  test('losing global read access drops cached photos too', () async {
    final user = BehaviorSubject<User?>.seeded(superUser);
    addTearDown(user.close);
    await startWiper(user);
    await browsePersons();

    user.add(scopedUser);
    await pumpEventQueue();

    expect(cachedPhotos, isEmpty);
  });

  test(
    'a device whose access changed while the app was closed is cleaned on the '
    'next launch, even though it already saved the new permissions',
    () async {
      final beforeRestart = BehaviorSubject<User?>.seeded(superUser);
      await startWiper(beforeRestart);
      await browsePersons();
      await beforeRestart.close();

      personsOnServer = [insider];
      await startWiper(Stream.value(scopedUser));

      expect(cachedPersonIds(), {'insider'});
    },
  );

  test(
    'a cache filled before access was recorded is cleaned once on launch',
    () async {
      await browsePersons();
      personsOnServer = [insider];

      await startWiper(Stream.value(scopedUser));

      expect(cachedPersonIds(), {'insider'});
    },
  );

  test('changing an admin-on scope cleans the cache', () async {
    final user = BehaviorSubject<User?>.seeded(scopedUser);
    addTearDown(user.close);
    await startWiper(user);
    await browsePersons();

    personsOnServer = [];
    user.add(
      scopedUser.copyWith(
        adminOn: const [
          AdminOnData(
            permissionId: 'scope-a',
            service: serviceA,
            serviceAllowEdit: true,
          ),
        ],
      ),
    );
    await pumpEventQueue();

    expect(cachedPersonIds(), isEmpty);
  });

  test('an update that keeps the same access keeps cached photos', () async {
    final user = BehaviorSubject<User?>.seeded(scopedUser);
    addTearDown(user.close);
    await startWiper(user);
    await browsePersons();

    user.add(
      scopedUser.copyWith(
        name: 'Renamed',
        adminOn: const [
          AdminOnData(
            permissionId: 'scope-a',
            service: Service(id: 'service-a', name: 'Renamed A'),
          ),
        ],
      ),
    );
    await pumpEventQueue();

    expect(cachedPhotos, {outsiderPhoto});
  });
}
