import 'package:church_admin/church_admin.dart';
import 'package:church_admin/graphql/__generated__/schema.graphql.dart';
import 'package:church_admin/src/services/database/gql_definintions/families/helpers.dart';
import 'package:graphql/client.dart';

import 'families/__generated__/mutations.gql.dart';
import 'families/__generated__/queries.gql.dart';
import 'families/__generated__/subscriptions.gql.dart';

class FamiliesDAO extends DAOBase {
  const FamiliesDAO({
    required super.db,
  });

  GQLPaginatableStream<Family> paginateFamilies({
    Stream<String?>? searchQuery,
    String? byAreaId,
    String? byStreetId,
    String? byParentFamilyId,
    String? byChildFamilyId,
  }) {
    assert(
      byParentFamilyId == null || byChildFamilyId == null,
      'Cannot filter by both parent and child family',
    );

    return GQLPaginatableStream<Family>(
      searchQuery: searchQuery,
      subscriptionStreamCallback: (event) {
        final defaultSearchVars = graphQLClient.getDefaultSearchVars(
          event,
          Variables$Subscription$watchAllFamilies.new,
          Input$FamiliesBoolExp.new,
        );

        final variables = defaultSearchVars.copyWith(
          where: [
            if (byAreaId != null)
              Input$FamiliesBoolExp(
                areas: Input$AreasBoolExp(
                  id: Input$UuidComparisonExp($_eq: byAreaId.toUuid()),
                ),
              ),
            if (byStreetId != null)
              Input$FamiliesBoolExp(
                streets: Input$StreetsBoolExp(
                  id: Input$UuidComparisonExp($_eq: byStreetId.toUuid()),
                ),
              ),
            if (byParentFamilyId != null)
              Input$FamiliesBoolExp(
                parents: Input$FamiliesFamiliesBoolExp(
                  parentFamilyId:
                      Input$UuidComparisonExp($_eq: byParentFamilyId.toUuid()),
                ),
              ),
            if (byChildFamilyId != null)
              Input$FamiliesBoolExp(
                children: Input$FamiliesFamiliesBoolExp(
                  childFamilyId:
                      Input$UuidComparisonExp($_eq: byChildFamilyId.toUuid()),
                ),
              ),
            ...defaultSearchVars.where ?? [],
          ],
        );

        return graphQLClient.subscribeAndReturnParsed(
          SubscriptionOptions(
            document: documentNodeSubscriptionwatchAllFamilies,
            operationName: 'watchAllFamilies',
            variables: variables.toJson(),
            parserFn: db.parser.singleListParser(Family.fromJson),
          ),
        );
      },
    );
  }

  Stream<Family?> watchFamily({
    required String familyId,
  }) {
    return graphQLClient.subscribeAndReturnParsed(
      SubscriptionOptions(
        document: documentNodeSubscriptionwatchFamily,
        operationName: 'watchFamily',
        variables: Variables$Subscription$watchFamily(
          id: familyId.toUuid(),
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
      variables: Variables$Mutation$deleteFamily(
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
          Variables$Query$getFamilyRelatedFamilies(familyId: familyId.toUuid())
              .toJson(),
      parserFn: db.parser.singleOrNullParser(Family.fromJson),
    );

    return graphQLClient.queryAndReturnParsed(queryOptions);
  }
}
