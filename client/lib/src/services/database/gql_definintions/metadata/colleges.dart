import 'package:church_admin/church_admin.dart';
import 'package:church_admin/graphql/__generated__/schema.graphql.dart';
import 'package:graphql/client.dart';

import 'colleges/__generated__/subscriptions.gql.dart';

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
        return graphQLClient.subscribeAndReturnParsed(
          SubscriptionOptions(
            document: documentNodeSubscriptionwatchAllColleges,
            operationName: 'watchAllColleges',
            variables: graphQLClient
                .getDefaultSearchVars(
                  event,
                  Variables$Subscription$watchAllColleges.new,
                  Input$CollegesBoolExp.new,
                )
                .toJson(),
            parserFn: db.parser.singleListParser(College.fromJson),
          ),
        );
      },
    );
  }
}
