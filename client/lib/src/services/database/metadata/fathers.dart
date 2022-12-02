part of '../../database_service.dart';

class FathersQueries {
  const FathersQueries._();

  GQLPaginatableStream<Father> getFathersStream({
    Stream<String?>? searchQuery,
  }) {
    return GQLPaginatableStream<Father>(
      searchQuery: searchQuery,
      subscriptionStreamCallback: (event) {
        final instance = event.instance;
        final offset = event.offset;
        final search = event.search;
        final lastSearch = event.lastSearch;

        return GetIt.I<GraphQLClient>().subscribe(
          SubscriptionOptions(
            document: documentNodeSubscriptiongetFathersStream,
            operationName: 'getFathersStream',
            variables: Variables$Subscription$getFathersStream(
              where: [
                if (search != null && search.isNotEmpty)
                  Input$FathersBoolExp(
                    name: Input$StringComparisonExp($_ilike: '%$search%'),
                  ),
                if (lastSearch == search && offset > 0)
                  Input$FathersBoolExp(
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
            parserFn: (d) => _parseListOfT(d, Father.fromJson),
          ),
        );
      },
    );
  }
}
