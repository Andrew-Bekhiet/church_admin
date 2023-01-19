part of '../../database_service.dart';

class HobbiesQueries {
  const HobbiesQueries._();

  GQLPaginatableStream<Hobby> getHobbiesStream({
    Stream<String?>? searchQuery,
  }) {
    return GQLPaginatableStream<Hobby>(
      searchQuery: searchQuery,
      subscriptionStreamCallback: (event) {
        final instance = event.instance;
        final offset = event.offset;
        final search = event.search;
        final lastSearch = event.lastSearch;

        return GetIt.I<GraphQLClient>().subscribe(
          SubscriptionOptions(
            document: documentNodeSubscriptiongetHobbiesStream,
            operationName: 'getHobbiesStream',
            variables: Variables$Subscription$getHobbiesStream(
              where: [
                if (search != null && search.isNotEmpty)
                  Input$HobbiesBoolExp(
                    name: Input$StringComparisonExp($_ilike: '%$search%'),
                  ),
                if (lastSearch == search && offset > 0)
                  Input$HobbiesBoolExp(
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
            parserFn: (d) => _parseListOfT(d, Hobby.fromJson),
          ),
        );
      },
    );
  }
}
