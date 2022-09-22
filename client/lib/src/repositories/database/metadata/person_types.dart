part of '../../database_repository.dart';

class PersonTypesQueries {
  PersonTypesQueries._();

  GQLPaginatableStream<PersonType> getPersonTypesStream({
    Stream<String?>? searchQuery,
  }) {
    return GQLPaginatableStream<PersonType>(
      searchQuery: searchQuery,
      subscriptionStream: (event) {
        final instance = event.instance;
        final offset = event.offset;
        final search = event.search;
        final lastSearch = event.lastSearch;

        final GetPersonTypesStreamSubscription subscription =
            GetPersonTypesStreamSubscription(
          variables: GetPersonTypesStreamArguments(
            limit: instance.limit + 1,
            addWhere: [
              if (search != null && search.isNotEmpty)
                PersonTypesBoolExp(
                  name: StringComparisonExp($ilike: '%$search%'),
                ),
              if (lastSearch == search && offset > 0)
                PersonTypesBoolExp(
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
            parserFn: (d) => _parseListOfT(d, PersonType.fromJson),
          ),
        );
      },
    );
  }
}
