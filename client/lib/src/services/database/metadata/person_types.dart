part of '../../database_service.dart';

class PersonTypesQueries {
  const PersonTypesQueries._();

  GQLPaginatableStream<PersonType> getPersonTypesStream({
    Stream<String?>? searchQuery,
  }) {
    return GQLPaginatableStream<PersonType>(
      searchQuery: searchQuery,
      subscriptionStreamCallback: (event) {
        final instance = event.instance;
        final offset = event.offset;
        final search = event.search;
        final lastSearch = event.lastSearch;

        return GetIt.I<GraphQLClient>().subscribe(
          SubscriptionOptions(
            document: documentNodeSubscriptiongetPersonTypesStream,
            operationName: 'getPersonTypesStream',
            variables: Variables$Subscription$getPersonTypesStream(
              where: [
                if (search != null && search.isNotEmpty)
                  Input$PersonTypesBoolExp(
                    name: Input$StringComparisonExp($_ilike: '%$search%'),
                  ),
                if (lastSearch == search && offset > 0)
                  Input$PersonTypesBoolExp(
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
            parserFn: (d) => _parseListOfT(d, PersonType.fromJson),
          ),
        );
      },
    );
  }
}
