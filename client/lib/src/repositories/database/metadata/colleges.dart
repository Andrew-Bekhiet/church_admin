part of '../../database_repository.dart';

class CollegesQueries {
  CollegesQueries._();

  GQLPaginatableStream<College> getCollegesStream({
    Stream<String?>? searchQuery,
  }) {
    return GQLPaginatableStream<College>(
      searchQuery: searchQuery,
      subscriptionStream: (event) {
        final instance = event.instance;
        final offset = event.offset;
        final search = event.search;
        final lastSearch = event.lastSearch;

        final GetCollegesStreamSubscription subscription =
            GetCollegesStreamSubscription(
          variables: GetCollegesStreamArguments(
            limit: instance.limit + 1,
            addWhere: [
              if (search != null && search.isNotEmpty)
                CollegesBoolExp(
                  name: StringComparisonExp($ilike: '%$search%'),
                ),
              if (lastSearch == search && offset > 0)
                CollegesBoolExp(
                  name: StringComparisonExp(
                    $gt: instance
                        .currentValue[
                            (offset - 1) * instance.limit + instance.limit - 1]
                        .name,
                  ),
                ),
            ],
          ),
        );

        return GetIt.I<GraphQLClient>().subscribe(
          SubscriptionOptions(
            document: subscription.document,
            operationName: subscription.operationName,
            variables: subscription.variables.toJson().stripNullValues(),
            parserFn: (d) => _parseListOfT(d, College.fromJson),
          ),
        );
      },
    );
  }
}
