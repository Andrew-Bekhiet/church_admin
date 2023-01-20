import 'package:church_admin/church_admin.dart';
import 'package:graphql/client.dart';

import '../../../../graphql/__generated__/schema.graphql.dart';
import 'jobs/__generated__/subscriptions.graphql.dart';

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
        return graphQLClient.subscribe(
          SubscriptionOptions(
            document: documentNodeSubscriptiongetJobsStream,
            operationName: 'getJobsStream',
            variables: getDefaultVariables(
              event,
              Variables$Subscription$getJobsStream.new,
              Input$JobsBoolExp.new,
            ).toJson(),
            parserFn: (d) => db.parseListOfT(d, Job.fromJson),
          ),
        );
      },
    );
  }
}
