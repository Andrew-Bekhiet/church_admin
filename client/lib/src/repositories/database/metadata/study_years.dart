part of '../../database_repository.dart';

class StudyYearsQueries {
  StudyYearsQueries._();

  Future<StudyYear?> getStudyYearName(int order) {
    final GetStudyYearNameQuery query = GetStudyYearNameQuery(
      variables: GetStudyYearNameArguments(order: order),
    );

    return GetIt.I<GraphQLClient>()
        .query(
          QueryOptions(
            document: query.document,
            operationName: query.operationName,
            variables: query.variables.toJson().stripNullValues(),
            parserFn: (d) {
              if (d.values.single == null) return null;

              return StudyYear.fromJson(d.values.single);
            },
          ),
        )
        .then(exceptionsMiddleware)
        .then((value) => value.parsedData);
  }

  GQLPaginatableStream<StudyYear> getStudyYearsStream({
    Stream<String?>? searchQuery,
  }) {
    return GQLPaginatableStream<StudyYear>(
      searchQuery: searchQuery,
      subscriptionStream: (event) {
        final instance = event.instance;
        final offset = event.offset;
        final search = event.search;
        final lastSearch = event.lastSearch;

        final GetStudyYearsStreamSubscription subscription =
            GetStudyYearsStreamSubscription(
          variables: GetStudyYearsStreamArguments(
            limit: instance.limit + 1,
            addWhere: [
              if (search != null && search.isNotEmpty)
                StudyYearsBoolExp(
                  name: StringComparisonExp($ilike: '%$search%'),
                ),
              if (lastSearch == search && offset > 0)
                StudyYearsBoolExp(
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
            parserFn: (d) => _parseListOfT(d, StudyYear.fromJson),
          ),
        );
      },
    );
  }
}
