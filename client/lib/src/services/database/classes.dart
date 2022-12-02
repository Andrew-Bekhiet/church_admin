part of '../database_service.dart';

class ClassesQueries {
  const ClassesQueries._();

  GQLPaginatableStream<Class> getClassesStream({
    Stream<String?>? searchQuery,
  }) {
    return GQLPaginatableStream<Class>(
      searchQuery: searchQuery,
      subscriptionStreamCallback: (event) {
        final instance = event.instance;
        final offset = event.offset;
        final search = event.search;
        final lastSearch = event.lastSearch;

        return GetIt.I<GraphQLClient>().subscribe(
          SubscriptionOptions(
            document: documentNodeSubscriptiongetClassesStream,
            operationName: 'getClassesStream',
            variables: Variables$Subscription$getClassesStream(
              limit: instance.limit + 1,
              where: [
                if (search != null && search.isNotEmpty)
                  Input$ClassesBoolExp(
                    name: Input$StringComparisonExp($_ilike: '%$search%'),
                  ),
                if (lastSearch == search && offset > 0)
                  Input$ClassesBoolExp(
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
            parserFn: (d) => _parseListOfT(d, Class.fromJson),
          ),
        );
      },
    );
  }
}
