import 'package:church_admin/church_admin.dart';
import 'package:church_admin/graphql/__generated__/schema.graphql.dart';
import 'package:graphql/client.dart';

import 'jobs/__generated__/subscriptions.gql.dart';

class JobsDAO extends DAOBase {
  const JobsDAO({
    required super.db,
  });

  GQLPaginatableStream<Job> paginateJobs({
    Stream<String?>? searchQuery,
  }) {
    return GQLPaginatableStream<Job>(
      searchQuery: searchQuery,
      subscriptionStreamCallback: (event) {
        return graphQLClient.subscribeAndReturnParsed(
          SubscriptionOptions(
            document: documentNodeSubscriptionwatchAllJobs,
            operationName: 'watchAllJobs',
            variables: graphQLClient
                .getDefaultSearchVars(
                  event,
                  Variables$Subscription$watchAllJobs.new,
                  Input$JobsBoolExp.new,
                )
                .toJson(),
            parserFn: db.parser.singleListParser(Job.fromJson),
          ),
        );
      },
    );
  }
}
