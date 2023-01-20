import 'package:church_admin/church_admin.dart';
import 'package:graphql/client.dart';

import '../../../../graphql/__generated__/schema.graphql.dart';
import 'colleges/__generated__/subscriptions.graphql.dart';

class CollegesDAO extends DAOBase {
  const CollegesDAO({
    required super.db,
  });

  GQLPaginatableStream<College> paginateColleges({
    Stream<String?>? searchQuery,
  }) {
    return GQLPaginatableStream<College>(
      searchQuery: searchQuery,
      subscriptionStreamCallback: (event) {
        return graphQLClient.subscribe(
          SubscriptionOptions(
            document: documentNodeSubscriptiongetCollegesStream,
            operationName: 'getCollegesStream',
            variables: getDefaultVariables(
              event,
              Variables$Subscription$getCollegesStream.new,
              Input$CollegesBoolExp.new,
            ).toJson(),
            parserFn: (d) => db.parseListOfT(d, College.fromJson),
          ),
        );
      },
    );
  }
}
