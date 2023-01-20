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
        return graphQLClient.subscribe(
          SubscriptionOptions(
            document: documentNodeSubscriptiongetStreetsStream,
            operationName: 'getStreetsStream',
            variables: getDefaultVariables(
              event,
              Variables$Subscription$getStreetsStream.new,
              Input$StreetsBoolExp.new,
            ).toJson(),
            parserFn: (d) => db.parseListOfT(d, Street.fromJson),
          ),
        );
      },
    );
  }
}
