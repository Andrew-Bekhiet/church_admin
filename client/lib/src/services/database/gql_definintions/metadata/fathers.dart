import 'package:church_admin/church_admin.dart';
import 'package:graphql/client.dart';

import 'fathers/__generated__/subscriptions.gql.dart';

class FathersDAO extends DAOBase<Father> {
  const FathersDAO({
    required super.db,
  });

  @override
  GQLPaginatableStream<Father> streamAll({
    Stream<String?>? searchQuery,
  }) {
    return GQLPaginatableStream<Father>(
      searchQuery: searchQuery,
      subscriptionStreamCallback: (event) {
        return graphQLClient.subscribeAndReturnParsed(
          SubscriptionOptions(
            document: documentNodeSubscriptionwatchAllFathers,
            operationName: 'watchAllFathers',
            variables: graphQLClient
                .getDefaultSearchVars(
                  event,
                  Variables_Subscription_watchAllFathers.new,
                  Input_FathersBoolExp.new,
                )
                .toJson(),
            parserFn: db.parser.singleListParser(Father.fromJson),
          ),
        );
      },
    );
  }
}
