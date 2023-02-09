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
  }) {
    return GQLPaginatableStream<Street>(
      searchQuery: searchQuery,
      subscriptionStreamCallback: (event) {
        return graphQLClient.subscribeAndReturnParsed(
          SubscriptionOptions(
            document: documentNodeSubscriptionwatchAllStreets,
            operationName: 'watchAllStreets',
            variables: graphQLClient
                .getDefaultSearchVars(
                  event,
                  Variables$Subscription$watchAllStreets.new,
                  Input$StreetsBoolExp.new,
                )
                .toJson(),
            parserFn: db.parser.singleListParser(Street.fromJson),
          ),
        );
      },
    );
  }
}
