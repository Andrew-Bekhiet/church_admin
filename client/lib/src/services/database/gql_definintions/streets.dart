import 'package:church_admin/church_admin.dart';
import 'package:church_admin/graphql/__generated__/schema.graphql.dart';
import 'package:graphql/client.dart';

import 'streets/__generated__/subscriptions.graphql.dart';

class StreetsDAO extends DAOBase {
  const StreetsDAO({
    required super.db,
  });

  GQLPaginatableStream<Street> paginateStreets({
    Stream<String?>? searchQuery,
    String? byAreaId,
  }) {
    return GQLPaginatableStream<Street>(
      searchQuery: searchQuery,
      subscriptionStreamCallback: (event) {
        final defaultSearchVars = graphQLClient.getDefaultSearchVars(
          event,
          Variables$Subscription$watchAllStreets.new,
          Input$StreetsBoolExp.new,
        );

        final variables = defaultSearchVars.copyWith(
          where: [
            if (byAreaId != null)
              Input$StreetsBoolExp(
                areas: Input$AreasBoolExp(
                  id: Input$UuidComparisonExp($_eq: byAreaId.toUuid()),
                ),
              ),
            ...defaultSearchVars.where ?? [],
          ],
        );

        return graphQLClient.subscribeAndReturnParsed(
          SubscriptionOptions(
            document: documentNodeSubscriptionwatchAllStreets,
            operationName: 'watchAllStreets',
            variables: variables.toJson(),
            parserFn: db.parser.singleListParser(Street.fromJson),
          ),
        );
      },
    );
  }

  Stream<Street?> watchStreet({
    required String streetId,
  }) {
    return graphQLClient.subscribeAndReturnParsed(
      SubscriptionOptions(
        document: documentNodeSubscriptionwatchStreet,
        operationName: 'watchStreet',
        variables: Variables$Subscription$watchStreet(
          id: streetId.toUuid(),
        ).toJson(),
        parserFn: db.parser.singleParser(Street.fromJson),
      ),
    );
  }
}
