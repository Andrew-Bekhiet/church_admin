part of '../database_repository.dart';

class ServicesQueries {
  ServicesQueries._();

  DelegatingPaginatableStream<Service> getServicesStream({
    Stream<String?>? searchQuery,
  }) {
    String? lastSearch;

    return DelegatingPaginatableStream<Service>(
      onQuery: (instance, offset) {
        return (searchQuery ?? Stream.value(null))
            .debounceTime(const Duration(milliseconds: 400))
            .distinct(
              (p, n) =>
                  p == n || (n == '' && p == null) || (p == '' && n == null),
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

            final Stream<QueryResult<Iterable<Service>>> subscriptionStream;

            final GetServicesStreamSubscription subscription =
                GetServicesStreamSubscription(
              variables: GetServicesStreamArguments(
                limit: instance.limit,
                addWhere: [
                  if (search != null && search.isNotEmpty)
                    ServicesBoolExp(
                        name: StringComparisonExp($ilike: '%$search%')),
                  if (lastSearch == search && offset > 0)
                    ServicesBoolExp(
                      name: StringComparisonExp(
                        $gt: instance
                            .currentValue[(offset - 1) * instance.limit +
                                instance.limit -
                                1]
                            .name,
                      ),
                    ),
                ],
                groupsAddWhere: [
                  if (search != null && search.isNotEmpty)
                    GroupsBoolExp(
                      name: StringComparisonExp($ilike: '%$search%'),
                    ),
                ],
              ),
            );

            subscriptionStream = GetIt.I<GraphQLClient>().subscribe(
              SubscriptionOptions(
                document: subscription.document,
                operationName: subscription.operationName,
                variables: subscription.variables.toJson().stripNullValues(),
                parserFn: (d) => GetServicesStream$SubscriptionRoot.fromJson(d)
                    .services
                    .map((e) => Service.fromJson(e.toJson())),
              ),
            );

            return subscriptionStream
                .map(_exceptionsMiddleware)
                .map(
                  (event) => _clampResults(
                    null,
                    null,
                    offset,
                    instance,
                    event.parsedData!.toList(),
                  ),
                )
                .map(
              (event) {
                lastSearch = search;
                return event;
              },
            );
          },
        );
      },
    );
  }
}
