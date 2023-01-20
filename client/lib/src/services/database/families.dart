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
  }) {
    return GQLPaginatableStream<Family>(
      searchQuery: searchQuery,
      subscriptionStreamCallback: (event) {
        return graphQLClient.subscribe(
          SubscriptionOptions(
            document: documentNodeSubscriptiongetFamiliesStream,
            operationName: 'getFamiliesStream',
            variables: getDefaultVariables(
              event,
              Variables$Subscription$getFamiliesStream.new,
              Input$FamiliesBoolExp.new,
            ).toJson(),
            parserFn: (d) => db.parseListOfT(d, Family.fromJson),
          ),
        );
      },
    );
  }
}
