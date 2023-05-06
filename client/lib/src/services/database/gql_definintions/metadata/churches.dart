import 'package:church_admin/church_admin.dart';
import 'package:graphql/client.dart';

import 'churches/__generated__/subscriptions.gql.dart';

class ChurchesDAO extends DAOBase<Church> {
  const ChurchesDAO({
    required super.db,
  });

  @override
  GQLPaginatableStream<Church> streamAll({
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
                  Variables_Subscription_watchAllChurches.new,
                  Input_ChurchesBoolExp.new,
                )
                .toJson(),
            parserFn: db.parser.singleListParser(Church.fromJson),
          ),
        );
      },
    );
  }
}
