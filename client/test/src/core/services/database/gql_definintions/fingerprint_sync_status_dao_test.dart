import 'package:church_admin/church_admin.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:graphql_flutter/graphql_flutter.dart';
import 'package:rxdart/rxdart.dart';

import '../../../../fakes/recording_subscription_link.dart';

void main() {
  const operation = 'watchFingerprintLastSyncedAt';

  late BehaviorSubject<bool> connectivity;

  FingerprintSyncStatusDAO daoReporting(List<Object?> rows) {
    return FingerprintSyncStatusDAO(
      db: DatabaseService(
        DBGraphQLClient(
          connectivityStream: connectivity,
          link: RecordingSubscriptionLink({
            operation: {'operationsFingerprintSyncStatus': rows},
          }),
          cache: GraphQLCache(),
          autoChangeFetchPolicy: false,
        ),
      ),
    );
  }

  setUp(() => connectivity = BehaviorSubject.seeded(true));

  tearDown(() => connectivity.close());

  test('no sync status row means never synced', () async {
    final dao = daoReporting(const []);

    expect(await dao.streamLastSyncedAtOrNullIfNeverSynced().first, isNull);
  });

  test('the sync status row yields the time it last synced at', () async {
    final syncedAt = DateTime.utc(2026, 11, 20, 7, 5);
    final dao = daoReporting([
      {
        '__typename': 'OperationsFingerprintSyncStatus',
        'lastSyncedAt': syncedAt.toIso8601String(),
      },
    ]);

    final lastSyncedAt = await dao
        .streamLastSyncedAtOrNullIfNeverSynced()
        .first;

    expect(lastSyncedAt, isNotNull);
    expect(lastSyncedAt!.isAtSameMomentAs(syncedAt), isTrue);
  });
}
