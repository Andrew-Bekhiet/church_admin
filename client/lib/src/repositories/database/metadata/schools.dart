part of '../../database_repository.dart';

class SchoolsQueries {
  SchoolsQueries._();

  GQLPaginatableStream<School> getSchoolsStream({
    Stream<String?>? searchQuery,
  }) {
    return GQLPaginatableStream<School>(
      searchQuery: searchQuery,
      subscriptionStream: (event) {
        final instance = event.instance;
        final offset = event.offset;
        final search = event.search;
        final lastSearch = event.lastSearch;

        final GetSchoolsStreamSubscription subscription =
            GetSchoolsStreamSubscription(
          variables: GetSchoolsStreamArguments(
            addWhere: [
              if (search != null && search.isNotEmpty)
                SchoolsBoolExp(
                  name: StringComparisonExp($ilike: '%$search%'),
                ),
              if (lastSearch == search && offset > 0)
                SchoolsBoolExp(
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
            parserFn: (d) => _parseListOfT(d, School.fromJson),
          ),
        );
      },
    );
  }
}
