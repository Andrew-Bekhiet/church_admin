import 'package:church_admin/church_admin.dart';
import 'package:church_admin/src/core/services/database/gql_definintions/screen_capture_attempts/__generated__/mutations.gql.dart';
import 'package:graphql/client.dart';

class ScreenCaptureAttemptsDAO {
  final DatabaseService _db;
  DBGraphQLClient get graphQLClient => _db.graphQLClient;
  ScreenCaptureAttemptsDAO({required this._db});

  Future<void> recordAttempt(ScreenCaptureKind kind) async {
    await graphQLClient.mutate(
      MutationOptions(
        document: documentNodeMutationrecordScreenCaptureAttempt,
        operationName: 'recordScreenCaptureAttempt',
        variables: Variables_Mutation_recordScreenCaptureAttempt(
          captureKind: kind.value,
        ).toJson(),
      ),
    );
  }
}
