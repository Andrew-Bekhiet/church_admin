part of '../database_repository.dart';

class FamiliesQueries {
  FamiliesQueries._();

  DelegatingPaginatableStream<Family> getFamiliesStream({
    Stream<String?>? searchQuery,
  }) {
    String? lastSearch;

    return DelegatingPaginatableStream<Family>(
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
            final Stream<QueryResult<Iterable<Family>>> subscriptionStream;

            final GetFamiliesStreamSubscription subscription =
                GetFamiliesStreamSubscription(
              variables: GetFamiliesStreamArguments(
                limit: instance.limit + 1,
                addWhere: [
                  if (search != null && search.isNotEmpty)
                    FamiliesBoolExp(
                      name: StringComparisonExp($ilike: '%$search%'),
                    ),
                  if (lastSearch == search && offset > 0)
                    FamiliesBoolExp(
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
                parserFn: (d) => GetFamiliesStream$SubscriptionRoot.fromJson(d)
                    .families
                    .map((e) => Family.fromJson(e.toJson())),
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
