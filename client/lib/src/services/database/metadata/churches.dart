import 'package:church_admin/church_admin.dart';
import 'package:graphql/client.dart';

import '../../../../graphql/__generated__/schema.graphql.dart';
import 'churches/__generated__/subscriptions.graphql.dart';

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
        return graphQLClient.subscribe(
          SubscriptionOptions(
            document: documentNodeSubscriptiongetChurchesStream,
            operationName: 'getChurchesStream',
            variables: getDefaultVariables(
              event,
              Variables$Subscription$getChurchesStream.new,
              Input$ChurchesBoolExp.new,
            ).toJson(),
            parserFn: (d) => db.parseListOfT(d, Church.fromJson),
          ),
        );
      },
    );
  }
}
