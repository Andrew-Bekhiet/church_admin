part of '../database_service.dart';

class AreasQueries {
  const AreasQueries._();

  GQLPaginatableStream<Area> getAreasStream({
    Stream<String?>? searchQuery,
  }) {
    return GQLPaginatableStream<Area>(
      searchQuery: searchQuery,
      subscriptionStreamCallback: (event) {
        final instance = event.instance;
        final offset = event.offset;
        final search = event.search;
        final lastSearch = event.lastSearch;

        return GetIt.I<GraphQLClient>().subscribe(
          SubscriptionOptions(
            document: documentNodeSubscriptiongetAreasStream,
            operationName: 'getAreasStream',
            variables: Variables$Subscription$getAreasStream(
              limit: instance.limit + 1,
              where: [
                if (search != null && search.isNotEmpty)
                  Input$AreasBoolExp(
                    name: Input$StringComparisonExp(
                      $_ilike: '%$search%',
                    ),
                  ),
                if (lastSearch == search && offset > 0)
                  Input$AreasBoolExp(
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
            parserFn: (d) => _parseListOfT(d, Area.fromJson),
          ),
        );
      },
    );
  }
}
