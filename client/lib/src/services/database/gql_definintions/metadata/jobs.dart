import 'package:church_admin/church_admin.dart';
import 'package:graphql/client.dart';

import 'jobs/__generated__/subscriptions.gql.dart';

class JobsDAO extends DAOBase<Job> {
  const JobsDAO({
    required super.db,
  });

  @override
  GQLPaginatableStream<Job> streamAll({
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
                  Variables_Subscription_watchAllJobs.new,
                  Input_JobsBoolExp.new,
                )
                .toJson(),
            parserFn: db.parser.singleListParser(Job.fromJson),
          ),
        );
      },
    );
  }
}
