import 'package:church_admin/church_admin.dart';
import 'package:church_admin/graphql/__generated__/schema.graphql.dart';
import 'package:graphql/client.dart';

import 'families/__generated__/subscriptions.graphql.dart';

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
}
