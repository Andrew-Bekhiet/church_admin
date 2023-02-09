import 'package:church_admin/church_admin.dart';
import 'package:church_admin/graphql/__generated__/schema.graphql.dart';
import 'package:graphql/client.dart';

import 'fathers/__generated__/subscriptions.graphql.dart';

class FathersDAO extends DAOBase {
  const FathersDAO({
    required super.db,
  });

  GQLPaginatableStream<Father> paginateFathers({
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
                  Variables$Subscription$watchAllFathers.new,
                  Input$FathersBoolExp.new,
                )
                .toJson(),
            parserFn: db.parser.singleListParser(Father.fromJson),
          ),
        );
      },
    );
  }
}
