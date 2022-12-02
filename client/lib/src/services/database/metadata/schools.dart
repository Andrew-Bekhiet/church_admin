part of '../../database_service.dart';

class SchoolsQueries {
  const SchoolsQueries._();

  GQLPaginatableStream<School> getSchoolsStream({
    Stream<String?>? searchQuery,
  }) {
    return GQLPaginatableStream<School>(
      searchQuery: searchQuery,
      subscriptionStreamCallback: (event) {
        final instance = event.instance;
        final offset = event.offset;
        final search = event.search;
        final lastSearch = event.lastSearch;

        return GetIt.I<GraphQLClient>().subscribe(
          SubscriptionOptions(
            document: documentNodeSubscriptiongetSchoolsStream,
            operationName: 'getSchoolsStream',
            variables: Variables$Subscription$getSchoolsStream(
              where: [
                if (search != null && search.isNotEmpty)
                  Input$SchoolsBoolExp(
                    name: Input$StringComparisonExp($_ilike: '%$search%'),
                  ),
                if (lastSearch == search && offset > 0)
                  Input$SchoolsBoolExp(
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
            parserFn: (d) => _parseListOfT(d, School.fromJson),
          ),
        );
      },
    );
  }
}
