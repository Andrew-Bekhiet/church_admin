import 'package:church_admin/church_admin.dart';
import 'package:graphql/client.dart';

import '../../../../graphql/__generated__/schema.graphql.dart';
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
        return graphQLClient.subscribe(
          SubscriptionOptions(
            document: documentNodeSubscriptiongetFathersStream,
            operationName: 'getFathersStream',
            variables: getDefaultVariables(
              event,
              Variables$Subscription$getFathersStream.new,
              Input$FathersBoolExp.new,
            ).toJson(),
            parserFn: (d) => db.parseListOfT(d, Father.fromJson),
          ),
        );
      },
    );
  }
}
