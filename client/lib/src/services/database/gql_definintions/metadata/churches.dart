import 'package:church_admin/church_admin.dart';
import 'package:church_admin/graphql/__generated__/schema.graphql.dart';
import 'package:graphql/client.dart';

import 'churches/__generated__/subscriptions.gql.dart';

class ChurchesDAO extends DAOBase {
  const ChurchesDAO({
    required super.db,
  });

  GQLPaginatableStream<Church> paginateChurches({
    Stream<String?>? searchQuery,
  }) {
    return GQLPaginatableStream<Church>(
      searchQuery: searchQuery,
      subscriptionStreamCallback: (event) {
        return graphQLClient.subscribeAndReturnParsed(
          SubscriptionOptions(
            document: documentNodeSubscriptionwatchAllChurches,
            operationName: 'watchAllChurches',
            variables: graphQLClient
                .getDefaultSearchVars(
                  event,
                  Variables$Subscription$watchAllChurches.new,
                  Input$ChurchesBoolExp.new,
                )
                .toJson(),
            parserFn: db.parser.singleListParser(Church.fromJson),
          ),
        );
      },
    );
  }
}
