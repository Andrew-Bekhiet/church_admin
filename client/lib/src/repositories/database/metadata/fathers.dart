part of '../../database_repository.dart';

class FathersQueries {
  FathersQueries._();

  GQLPaginatableStream<Father> getFathersStream({
    Stream<String?>? searchQuery,
  }) {
    return GQLPaginatableStream<Father>(
      searchQuery: searchQuery,
      subscriptionStream: (event) {
        final instance = event.instance;
        final offset = event.offset;
        final search = event.search;
        final lastSearch = event.lastSearch;

        final GetFathersStreamSubscription subscription =
            GetFathersStreamSubscription(
          variables: GetFathersStreamArguments(
            limit: instance.limit + 1,
            addWhere: [
              if (search != null && search.isNotEmpty)
                FathersBoolExp(
                  name: StringComparisonExp($ilike: '%$search%'),
                ),
              if (lastSearch == search && offset > 0)
                FathersBoolExp(
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
            parserFn: (d) => _parseListOfT(d, Father.fromJson),
          ),
        );
      },
    );
  }
}
