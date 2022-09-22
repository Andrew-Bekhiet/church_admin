part of '../../database_repository.dart';

class QualificationsQueries {
  QualificationsQueries._();

  GQLPaginatableStream<Qualification> getQualificationsStream({
    Stream<String?>? searchQuery,
  }) {
    return GQLPaginatableStream<Qualification>(
      searchQuery: searchQuery,
      subscriptionStream: (event) {
        final instance = event.instance;
        final offset = event.offset;
        final search = event.search;
        final lastSearch = event.lastSearch;

        final GetQualificationsStreamSubscription subscription =
            GetQualificationsStreamSubscription(
          variables: GetQualificationsStreamArguments(
            limit: instance.limit + 1,
            addWhere: [
              if (search != null && search.isNotEmpty)
                QualificationsBoolExp(
                  name: StringComparisonExp($ilike: '%$search%'),
                ),
              if (lastSearch == search && offset > 0)
                QualificationsBoolExp(
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
            parserFn: (d) => _parseListOfT(d, Qualification.fromJson),
          ),
        );
      },
    );
  }
}
