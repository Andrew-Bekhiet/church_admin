import 'package:church_admin/church_admin.dart';
import 'package:church_admin/src/services/database/gql_definintions/families/helpers.dart';
import 'package:graphql/client.dart';

import 'families/__generated__/mutations.gql.dart';
import 'families/__generated__/queries.gql.dart';
import 'families/__generated__/subscriptions.gql.dart';

class FamiliesDAO extends DAOBase<Family> {
  const FamiliesDAO({
    required super.db,
  });

  @override
  GQLPaginatableStream<Family> streamAll({
    Stream<String?>? searchQuery,
    List<Input_FamiliesBoolExp>? where,
  }) {
    return GQLPaginatableStream<Family>(
      searchQuery: searchQuery,
      subscriptionStreamCallback: (event) {
        final defaultSearchVars = graphQLClient.getDefaultSearchVars(
          event,
          Variables_Subscription_watchAllFamilies.new,
          Input_FamiliesBoolExp.new,
        );

        final variables = defaultSearchVars.copyWith(
          where: [
            if (where != null) ...where,
            if (defaultSearchVars.where != null) ...defaultSearchVars.where!,
          ],
        ).toJson();

        return graphQLClient.subscribeAndReturnParsed(
          SubscriptionOptions(
            document: documentNodeSubscriptionwatchAllFamilies,
            operationName: 'watchAllFamilies',
            variables: variables,
            parserFn: db.parser.singleListParser(Family.fromJson),
          ),
        );
      },
    );
  }

  Stream<Family?> streamSingleById({
    required String id,
  }) {
    return graphQLClient.subscribeAndReturnParsed(
      SubscriptionOptions(
        document: documentNodeSubscriptionwatchFamily,
        operationName: 'watchFamily',
        variables: Variables_Subscription_watchFamily(
          id: id.toUuid(),
        ).toJson(),
        parserFn: db.parser.singleParser(Family.fromJson),
      ),
    );
  }

  Future<Family?> deleteFamily({
    required String familyId,
  }) {
    final mutationOptions = MutationOptions(
      document: documentNodeMutationdeleteFamily,
      variables: Variables_Mutation_deleteFamily(
        familyId: familyId.toUuid(),
      ).toJson(),
      parserFn: db.parser.singleOrNullParser(Family.fromJson),
    );

    return graphQLClient.mutateAndReturnParsed(mutationOptions);
  }

  Future<Family> insertFamily({
    required Family newFamily,
  }) {
    final helper = FamilyInsertHelper(newFamily: newFamily);

    return graphQLClient.mutateAndReturnParsed(
      MutationOptions(
        document: documentNodeMutationinsertFamily,
        operationName: 'insertFamily',
        variables: helper.variables.toJson(),
        parserFn: db.parser.singleParser(Family.fromJson),
      ),
    );
  }

  Future<Family?> updateFamily({
    required Family newFamily,
    required Family oldFamily,
  }) {
    final helper =
        FamilyUpdateHelper(newFamily: newFamily, oldFamily: oldFamily);

    return graphQLClient.mutateAndReturnParsedNullable(
      MutationOptions(
        document: documentNodeMutationupdateFamily,
        operationName: 'updateFamily',
        variables: helper.variables.toJson(),
        parserFn: db.parser.singleOrNullParser(Family.fromJson),
      ),
    );
  }

  Future<Family?> getFamilyRelatedFamilies({
    required String familyId,
  }) {
    final queryOptions = QueryOptions(
      document: documentNodeQuerygetFamilyRelatedFamilies,
      operationName: 'getFamilyRelatedFamilies',
      variables:
          Variables_Query_getFamilyRelatedFamilies(familyId: familyId.toUuid())
              .toJson(),
      parserFn: db.parser.singleOrNullParser(Family.fromJson),
    );

    return graphQLClient.queryAndReturnParsed(queryOptions);
  }
}
