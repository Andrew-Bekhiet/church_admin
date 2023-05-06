import 'package:church_admin/church_admin.dart';
import 'package:graphql/client.dart';

import 'colleges/__generated__/subscriptions.gql.dart';

class CollegesDAO extends DAOBase<College> {
  const CollegesDAO({
    required super.db,
  });

  @override
  GQLPaginatableStream<College> streamAll({
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
                  Variables_Subscription_watchAllColleges.new,
                  Input_CollegesBoolExp.new,
                )
                .toJson(),
            parserFn: db.parser.singleListParser(College.fromJson),
          ),
        );
      },
    );
  }
}
