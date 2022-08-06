part of '../database_repository.dart';

class StreetsQueries {
  StreetsQueries._();

  DelegatingPaginatableStream<Street> getStreetsStream({
    Stream<String?>? searchQuery,
  }) {
    String? lastSearch;

    return DelegatingPaginatableStream<Street>(
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
            final Stream<QueryResult<Iterable<Street>>> subscriptionStream;

            final GetStreetsStreamSubscription subscription =
                GetStreetsStreamSubscription(
              variables: GetStreetsStreamArguments(
                limit: instance.limit + 1,
                addWhere: [
                  if (search != null && search.isNotEmpty)
                    StreetsBoolExp(
                      name: StringComparisonExp($ilike: '%$search%'),
                    ),
                  if (lastSearch == search && offset > 0)
                    StreetsBoolExp(
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
                parserFn: (d) => GetStreetsStream$SubscriptionRoot.fromJson(d)
                    .streets
                    .map((e) => Street.fromJson(e.toJson())),
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
