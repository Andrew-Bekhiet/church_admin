part of '../../database_service.dart';

class PersonStatesQueries {
  const PersonStatesQueries._();

  GQLPaginatableStream<PersonState> getPersonStatesStream({
    Stream<String?>? searchQuery,
  }) {
    return GQLPaginatableStream<PersonState>(
      searchQuery: searchQuery,
      subscriptionStreamCallback: (event) {
        final instance = event.instance;
        final offset = event.offset;
        final search = event.search;
        final lastSearch = event.lastSearch;

        return GetIt.I<GraphQLClient>().subscribe(
          SubscriptionOptions(
            document: documentNodeSubscriptiongetPersonStatesStream,
            operationName: 'getPersonStatesStream',
            variables: Variables$Subscription$getPersonStatesStream(
              where: [
                if (search != null && search.isNotEmpty)
                  Input$PersonStatesBoolExp(
                    name: Input$StringComparisonExp($_ilike: '%$search%'),
                  ),
                if (lastSearch == search && offset > 0)
                  Input$PersonStatesBoolExp(
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
            parserFn: (d) => _parseListOfT(d, PersonState.fromJson),
          ),
        );
      },
    );
  }
}
