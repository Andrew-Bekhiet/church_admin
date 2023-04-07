import 'package:church_admin/church_admin.dart';
import 'package:church_admin/graphql/__generated__/schema.graphql.dart';
import 'package:graphql/client.dart';

import 'schools/__generated__/subscriptions.gql.dart';

class SchoolsDAO extends DAOBase {
  const SchoolsDAO({
    required super.db,
  });

  GQLPaginatableStream<School> paginateSchools({
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
                  Variables$Subscription$watchAllSchools.new,
                  Input$SchoolsBoolExp.new,
                )
                .toJson(),
            parserFn: db.parser.singleListParser(School.fromJson),
          ),
        );
      },
    );
  }
}
