part of '../../database_service.dart';

class QualificationsQueries {
  const QualificationsQueries._();

  GQLPaginatableStream<Qualification> getQualificationsStream({
    Stream<String?>? searchQuery,
  }) {
    return GQLPaginatableStream<Qualification>(
      searchQuery: searchQuery,
      subscriptionStreamCallback: (event) {
        final instance = event.instance;
        final offset = event.offset;
        final search = event.search;
        final lastSearch = event.lastSearch;

        return GetIt.I<GraphQLClient>().subscribe(
          SubscriptionOptions(
            document: documentNodeSubscriptiongetQualificationsStream,
            operationName: 'getQualificationsStream',
            variables: Variables$Subscription$getQualificationsStream(
              where: [
                if (search != null && search.isNotEmpty)
                  Input$QualificationsBoolExp(
                    name: Input$StringComparisonExp($_ilike: '%$search%'),
                  ),
                if (lastSearch == search && offset > 0)
                  Input$QualificationsBoolExp(
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
            parserFn: (d) => _parseListOfT(d, Qualification.fromJson),
          ),
        );
      },
    );
  }
}
