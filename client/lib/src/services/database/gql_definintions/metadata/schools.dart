import 'package:church_admin/church_admin.dart';
import 'package:graphql/client.dart';

import 'schools/__generated__/subscriptions.gql.dart';

class SchoolsDAO extends DAOBase<School> {
  const SchoolsDAO({
    required super.db,
  });

  @override
  GQLPaginatableStream<School> streamAll({
    Stream<String?>? searchQuery,
  }) {
    return GQLPaginatableStream<School>(
      searchQuery: searchQuery,
      subscriptionStreamCallback: (event) {
        return graphQLClient.subscribeAndReturnParsed(
          SubscriptionOptions(
            document: documentNodeSubscriptionwatchAllSchools,
            operationName: 'watchAllSchools',
            variables: graphQLClient
                .getDefaultSearchVars(
                  event,
                  Variables_Subscription_watchAllSchools.new,
                  Input_SchoolsBoolExp.new,
                )
                .toJson(),
            parserFn: db.parser.singleListParser(School.fromJson),
          ),
        );
      },
    );
  }
}
