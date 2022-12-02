part of '../database_service.dart';

class FamiliesQueries {
  const FamiliesQueries._();

  GQLPaginatableStream<Family> getFamiliesStream({
    Stream<String?>? searchQuery,
  }) {
    return GQLPaginatableStream<Family>(
      searchQuery: searchQuery,
      subscriptionStreamCallback: (event) {
        final instance = event.instance;
        final offset = event.offset;
        final search = event.search;
        final lastSearch = event.lastSearch;

        return GetIt.I<GraphQLClient>().subscribe(
          SubscriptionOptions(
            document: documentNodeSubscriptiongetFamiliesStream,
            operationName: 'getFamiliesStream',
            variables: Variables$Subscription$getFamiliesStream(
              limit: instance.limit + 1,
              where: [
                if (search != null && search.isNotEmpty)
                  Input$FamiliesBoolExp(
                    name: Input$StringComparisonExp($_ilike: '%$search%'),
                  ),
                if (lastSearch == search && offset > 0)
                  Input$FamiliesBoolExp(
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
            parserFn: (d) => _parseListOfT(d, Family.fromJson),
          ),
        );
      },
    );
  }
}
