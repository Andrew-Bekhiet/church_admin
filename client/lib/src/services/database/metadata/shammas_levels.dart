part of '../../database_service.dart';

class ShammasLevelsQueries {
  const ShammasLevelsQueries._();

  GQLPaginatableStream<ShammasLevel> getShammasLevelsStream({
    Stream<String?>? searchQuery,
  }) {
    return GQLPaginatableStream<ShammasLevel>(
      searchQuery: searchQuery,
      subscriptionStreamCallback: (event) {
        final instance = event.instance;
        final offset = event.offset;
        final search = event.search;
        final lastSearch = event.lastSearch;

        return GetIt.I<GraphQLClient>().subscribe(
          SubscriptionOptions(
            document: documentNodeSubscriptiongetShammasLevelsStream,
            operationName: 'getShammasLevelsStream',
            variables: Variables$Subscription$getShammasLevelsStream(
              where: [
                if (search != null && search.isNotEmpty)
                  Input$ShammasLevelsBoolExp(
                    name: Input$StringComparisonExp($_ilike: '%$search%'),
                  ),
                if (lastSearch == search && offset > 0)
                  Input$ShammasLevelsBoolExp(
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
            parserFn: (d) => _parseListOfT(d, ShammasLevel.fromJson),
          ),
        );
      },
    );
  }
}
