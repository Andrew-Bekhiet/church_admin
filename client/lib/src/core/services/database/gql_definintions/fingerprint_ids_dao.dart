import 'package:church_admin/church_admin.dart';
import 'package:church_admin/src/core/services/database/gql_definintions/fingerprint_ids/__generated__/fragments.gql.dart';
import 'package:church_admin/src/core/services/database/gql_definintions/fingerprint_ids/__generated__/mutations.gql.dart';
import 'package:church_admin/src/core/services/database/gql_definintions/fingerprint_ids/__generated__/subscriptions.gql.dart';
import 'package:collection/collection.dart';
import 'package:graphql/client.dart';

class FingerprintIdsDAO {
  static const String _uniqueEmployeeCodeConstraintName =
      'persons_fingerprint_ids_employee_code_key';

  final DatabaseService _db;

  DBGraphQLClient get graphQLClient => _db.graphQLClient;

  FingerprintIdsDAO({required this._db});

  Stream<List<PersonFingerprintId>> streamOfPerson(String personId) {
    return graphQLClient
        .subscribeAndReturnParsed(
          SubscriptionOptions(
            document: documentNodeSubscriptionwatchPersonFingerprintIds,
            operationName: 'watchPersonFingerprintIds',
            variables: Variables_Subscription_watchPersonFingerprintIds(
              personId: personId.toUuid(),
            ).toJson(),
            parserFn: Subscription_watchPersonFingerprintIds.fromJson,
          ),
        )
        .map(
          (result) =>
              result.personsFingerprintIds.map(_fingerprintIdFrom).toList(),
        );
  }

  Future<void> addEmployeeCode({
    required String personId,
    required String employeeCode,
  }) async {
    try {
      await graphQLClient.mutateAndReturnParsed(
        MutationOptions(
          document: documentNodeMutationaddPersonFingerprintId,
          operationName: 'addPersonFingerprintId',
          variables: Variables_Mutation_addPersonFingerprintId(
            personId: personId.toUuid(),
            employeeCode: employeeCode,
          ).toJson(),
          parserFn: Mutation_addPersonFingerprintId.fromJson,
        ),
      );
    } on OperationException catch (exception) {
      final uniquenessViolation = exception.graphqlErrors.firstWhereOrNull(
        (error) => error.message.contains(_uniqueEmployeeCodeConstraintName),
      );
      if (uniquenessViolation == null) rethrow;

      throw FingerprintEmployeeCodeAlreadyLinkedException(
        employeeCode: employeeCode,
        upstreamMessage: uniquenessViolation.message,
      );
    }
  }

  Future<void> remove(String fingerprintId) async {
    final result = await graphQLClient.mutateAndReturnParsed(
      MutationOptions(
        document: documentNodeMutationremovePersonFingerprintId,
        operationName: 'removePersonFingerprintId',
        variables: Variables_Mutation_removePersonFingerprintId(
          id: fingerprintId.toUuid(),
        ).toJson(),
        parserFn: Mutation_removePersonFingerprintId.fromJson,
      ),
    );

    if (result.deletePersonsFingerprintIdsByPk == null) {
      throw FingerprintIdNotRemovedException(fingerprintId);
    }
  }

  PersonFingerprintId _fingerprintIdFrom(Fragment_PersonFingerprintId row) {
    return PersonFingerprintId(
      id: row.id.uuid,
      employeeCode: row.employeeCode,
      addedAt: row.addedAt,
      addedBy: User.fromJson(row.addedByUser.toJson()),
    );
  }
}
