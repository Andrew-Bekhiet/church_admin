part of '../database_service.dart';

class StreetsQueries {
  const StreetsQueries._();

  GQLPaginatableStream<Street> getStreetsStream({
    Stream<String?>? searchQuery,
  }) {
    return GQLPaginatableStream<Street>(
      searchQuery: searchQuery,
      subscriptionStreamCallback: (event) {
        final instance = event.instance;
        final offset = event.offset;
        final search = event.search;
        final lastSearch = event.lastSearch;

        return GetIt.I<GraphQLClient>().subscribe(
          SubscriptionOptions(
            document: documentNodeSubscriptiongetStreetsStream,
            operationName: 'getStreetsStream',
            variables: Variables$Subscription$getStreetsStream(
              limit: instance.limit + 1,
              where: [
                if (search != null && search.isNotEmpty)
                  Input$StreetsBoolExp(
                    name: Input$StringComparisonExp($_ilike: '%$search%'),
                  ),
                if (lastSearch == search && offset > 0)
                  Input$StreetsBoolExp(
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
            parserFn: (d) => _parseListOfT(d, Street.fromJson),
          ),
        );
      },
    );
  }
}
