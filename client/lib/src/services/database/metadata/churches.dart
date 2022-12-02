part of '../../database_service.dart';

class ChurchesQueries {
  const ChurchesQueries._();

  GQLPaginatableStream<Church> getChurchesStream({
    Stream<String?>? searchQuery,
  }) {
    return GQLPaginatableStream<Church>(
      searchQuery: searchQuery,
      subscriptionStreamCallback: (event) {
        final instance = event.instance;
        final offset = event.offset;
        final search = event.search;
        final lastSearch = event.lastSearch;

        return GetIt.I<GraphQLClient>().subscribe(
          SubscriptionOptions(
            document: documentNodeSubscriptiongetChurchesStream,
            operationName: 'getChurchesStream',
            variables: Variables$Subscription$getChurchesStream(
              where: [
                if (search != null && search.isNotEmpty)
                  Input$ChurchesBoolExp(
                    name: Input$StringComparisonExp($_ilike: '%$search%'),
                  ),
                if (lastSearch == search && offset > 0)
                  Input$ChurchesBoolExp(
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
            parserFn: (d) => _parseListOfT(d, Church.fromJson),
          ),
        );
      },
    );
  }
}
