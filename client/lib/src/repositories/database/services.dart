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

            final bool nameSearch = search != null && search.isNotEmpty;
            final nameSearchExp = StringComparisonExp($ilike: '%$search%');

            final Stream<QueryResult<Iterable<Service>>> subscriptionStream;

            final GetServicesStreamSubscription subscription =
                GetServicesStreamSubscription(
              variables: GetServicesStreamArguments(
                limit: instance.limit + 1,
                addWhere: [
                  if (nameSearch)
                    ServicesBoolExp(
                      $or: [
                        ServicesBoolExp(
                          name: nameSearchExp,
                        ),
                        ServicesBoolExp(
                          classes: ClassesBoolExp(
                            name: nameSearchExp,
                          ),
                        ),
                        ServicesBoolExp(
                          groups: GroupsBoolExp(
                            name: nameSearchExp,
                          ),
                        ),
                      ],
                    ),
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
                classesAddWhere: [
                  if (nameSearch)
                    ClassesBoolExp(
                      name: nameSearchExp,
                    )
                ],
                groupsAddWhere: [
                  if (nameSearch)
                    GroupsBoolExp(
                      name: nameSearchExp,
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
                    lastSearch,
                    search,
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
