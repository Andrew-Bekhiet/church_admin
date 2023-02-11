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
    Area? area,
  }) {
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
            if (area != null)
              Input$FamiliesBoolExp(
                areas: Input$AreasBoolExp(
                  id: Input$UuidComparisonExp($_eq: area.id.toUuid()),
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
}
