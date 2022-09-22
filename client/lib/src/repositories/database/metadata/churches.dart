part of '../../database_repository.dart';

class ChurchesQueries {
  ChurchesQueries._();

  GQLPaginatableStream<Church> getChurchesStream({
    Stream<String?>? searchQuery,
  }) {
    return GQLPaginatableStream<Church>(
      searchQuery: searchQuery,
      subscriptionStream: (event) {
        final instance = event.instance;
        final offset = event.offset;
        final search = event.search;
        final lastSearch = event.lastSearch;

        final GetChurchesStreamSubscription subscription =
            GetChurchesStreamSubscription(
          variables: GetChurchesStreamArguments(
            limit: instance.limit + 1,
            addWhere: [
              if (search != null && search.isNotEmpty)
                ChurchesBoolExp(
                  name: StringComparisonExp($ilike: '%$search%'),
                ),
              if (lastSearch == search && offset > 0)
                ChurchesBoolExp(
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
            parserFn: (d) => _parseListOfT(d, Church.fromJson),
          ),
        );
      },
    );
  }
}
