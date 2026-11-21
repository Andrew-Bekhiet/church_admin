import 'package:church_admin/church_admin.dart';
import 'package:church_admin/src/core/services/database/gql_definintions/fingerprint_sync_status/__generated__/subscriptions.gql.dart';
import 'package:graphql/client.dart';

class FingerprintSyncStatusDAO {
  final DatabaseService _db;

  DBGraphQLClient get graphQLClient => _db.graphQLClient;

  FingerprintSyncStatusDAO({required this._db});

  Stream<DateTime?> streamLastSyncedAtOrNullIfNeverSynced() {
    return graphQLClient
        .subscribeAndReturnParsed(
          SubscriptionOptions(
            document: documentNodeSubscriptionwatchFingerprintLastSyncedAt,
            operationName: 'watchFingerprintLastSyncedAt',
            parserFn: Subscription_watchFingerprintLastSyncedAt.fromJson,
          ),
        )
        .map(
          (result) =>
              result.operationsFingerprintSyncStatus.firstOrNull?.lastSyncedAt,
        );
  }
}
