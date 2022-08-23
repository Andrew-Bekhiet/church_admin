part of '../database_repository.dart';

class AreasQueries {
  AreasQueries._();

  DelegatingPaginatableStream<Area> getAreasStream({
    Stream<String?>? searchQuery,
  }) {
    String? lastSearch;

    return DelegatingPaginatableStream<Area>(
      onQuery: (instance, offset) {
        return (searchQuery ?? Stream.value(null))
            .distinct(
          (p, n) => p == n || (n == '' && p == null) || (p == '' && n == null),
        )
            .switchMap(
          (search) {
            if (search != null &&
                search.isNotEmpty &&
                lastSearch != search &&
                offset != 0) {
              instance.loadPage(0);
              return Stream.value(DelegatingStreamResult(result: []));
            }
            final Stream<QueryResult<Iterable<Area>>> subscriptionStream;

            final GetAreasStreamSubscription subscription =
                GetAreasStreamSubscription(
              variables: GetAreasStreamArguments(
                limit: instance.limit + 1,
                addWhere: [
                  if (search != null && search.isNotEmpty)
                    AreasBoolExp(
                      name: StringComparisonExp($ilike: '%$search%'),
                    ),
                  if (lastSearch == search && offset > 0)
                    AreasBoolExp(
                      name: StringComparisonExp(
                        $gt: instance
                            .currentValue[(offset - 1) * instance.limit +
                                instance.limit -
                                1]
                            .name,
                      ),
                    ),
                ],
              ),
            );

            subscriptionStream = GetIt.I<GraphQLClient>().subscribe(
              SubscriptionOptions(
                document: subscription.document,
                operationName: subscription.operationName,
                variables: subscription.variables.toJson().stripNullValues(),
                parserFn: (d) => _parseListOfT(d, Area.fromJson),
              ),
            );

            return subscriptionStream
                .map(_exceptionsMiddleware)
                .map(
                  (event) => _clampResults(
                    lastSearch,
                    search,
                    offset,
                    instance,
                    event.parsedData!.toList(),
                  ),
                )
                .map((event) {
              lastSearch = search;
              return event;
            });
          },
        );
      },
    );
  }
}
