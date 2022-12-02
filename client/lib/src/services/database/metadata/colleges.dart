part of '../../database_service.dart';

class CollegesQueries {
  const CollegesQueries._();

  GQLPaginatableStream<College> getCollegesStream({
    Stream<String?>? searchQuery,
  }) {
    return GQLPaginatableStream<College>(
      searchQuery: searchQuery,
      subscriptionStreamCallback: (event) {
        final instance = event.instance;
        final offset = event.offset;
        final search = event.search;
        final lastSearch = event.lastSearch;

        return GetIt.I<GraphQLClient>().subscribe(
          SubscriptionOptions(
            document: documentNodeSubscriptiongetCollegesStream,
            operationName: 'getCollegesStream',
            variables: Variables$Subscription$getCollegesStream(
              where: [
                if (search != null && search.isNotEmpty)
                  Input$CollegesBoolExp(
                    name: Input$StringComparisonExp($_ilike: '%$search%'),
                  ),
                if (lastSearch == search && offset > 0)
                  Input$CollegesBoolExp(
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
            parserFn: (d) => _parseListOfT(d, College.fromJson),
          ),
        );
      },
    );
  }
}
