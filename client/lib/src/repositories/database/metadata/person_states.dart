part of '../../database_repository.dart';

class PersonStatesQueries {
  PersonStatesQueries._();

  GQLPaginatableStream<PersonState> getPersonStatesStream({
    Stream<String?>? searchQuery,
  }) {
    return GQLPaginatableStream<PersonState>(
      searchQuery: searchQuery,
      subscriptionStream: (event) {
        final instance = event.instance;
        final offset = event.offset;
        final search = event.search;
        final lastSearch = event.lastSearch;

        final GetPersonStatesStreamSubscription subscription =
            GetPersonStatesStreamSubscription(
          variables: GetPersonStatesStreamArguments(
            addWhere: [
              if (search != null && search.isNotEmpty)
                PersonStatesBoolExp(
                  name: StringComparisonExp($ilike: '%$search%'),
                ),
              if (lastSearch == search && offset > 0)
                PersonStatesBoolExp(
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
            parserFn: (d) => _parseListOfT(d, PersonState.fromJson),
          ),
        );
      },
    );
  }
}
