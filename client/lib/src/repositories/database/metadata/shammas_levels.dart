part of '../../database_repository.dart';

class ShammasLevelsQueries {
  ShammasLevelsQueries._();

  GQLPaginatableStream<ShammasLevel> getShammasLevelsStream({
    Stream<String?>? searchQuery,
  }) {
    return GQLPaginatableStream<ShammasLevel>(
      searchQuery: searchQuery,
      subscriptionStream: (event) {
        final instance = event.instance;
        final offset = event.offset;
        final search = event.search;
        final lastSearch = event.lastSearch;

        final GetShammasLevelsStreamSubscription subscription =
            GetShammasLevelsStreamSubscription(
          variables: GetShammasLevelsStreamArguments(
            limit: instance.limit + 1,
            addWhere: [
              if (search != null && search.isNotEmpty)
                ShammasLevelsBoolExp(
                  name: StringComparisonExp($ilike: '%$search%'),
                ),
              if (lastSearch == search && offset > 0)
                ShammasLevelsBoolExp(
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
            parserFn: (d) => _parseListOfT(d, ShammasLevel.fromJson),
          ),
        );
      },
    );
  }
}
