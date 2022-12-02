part of '../../database_service.dart';

class JobsQueries {
  const JobsQueries._();

  GQLPaginatableStream<Job> getJobsStream({
    Stream<String?>? searchQuery,
  }) {
    return GQLPaginatableStream<Job>(
      searchQuery: searchQuery,
      subscriptionStreamCallback: (event) {
        final instance = event.instance;
        final offset = event.offset;
        final search = event.search;
        final lastSearch = event.lastSearch;

        return GetIt.I<GraphQLClient>().subscribe(
          SubscriptionOptions(
            document: documentNodeSubscriptiongetJobsStream,
            operationName: 'getJobsStream',
            variables: Variables$Subscription$getJobsStream(
              where: [
                if (search != null && search.isNotEmpty)
                  Input$JobsBoolExp(
                    name: Input$StringComparisonExp($_ilike: '%$search%'),
                  ),
                if (lastSearch == search && offset > 0)
                  Input$JobsBoolExp(
                    name: Input$StringComparisonExp(
                      $_gt: instance
                          .currentValue[(offset - 1) * instance.limit +
                              instance.limit -
                              1]
                          .name,
                    ),
                  ),
              ],
            ).toJson(),
            parserFn: (d) => _parseListOfT(d, Job.fromJson),
          ),
        );
      },
    );
  }
}
