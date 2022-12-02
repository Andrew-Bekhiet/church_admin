part of '../../database_service.dart';

class StudyYearsQueries {
  const StudyYearsQueries._();

  Future<StudyYear?> getStudyYearName(int order) {
    return GetIt.I<GraphQLClient>()
        .query(
          QueryOptions(
            document: documentNodeQuerygetStudyYearName,
            operationName: 'getStudyYearName',
            variables: Variables$Query$getStudyYearName(order: order).toJson(),
            parserFn: (d) {
              if (d.values.first == null) return null;

              return StudyYear.fromJson(d.values.first);
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
      subscriptionStreamCallback: (event) {
        final instance = event.instance;
        final offset = event.offset;
        final search = event.search;
        final lastSearch = event.lastSearch;

        return GetIt.I<GraphQLClient>().subscribe(
          SubscriptionOptions(
            document: documentNodeSubscriptiongetStudyYearsStream,
            operationName: 'getStudyYearsStream',
            variables: Variables$Subscription$getStudyYearsStream(
              where: [
                if (search != null && search.isNotEmpty)
                  Input$StudyYearsBoolExp(
                    name: Input$StringComparisonExp($_ilike: '%$search%'),
                  ),
                if (lastSearch == search && offset > 0)
                  Input$StudyYearsBoolExp(
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
            parserFn: (d) => _parseListOfT(d, StudyYear.fromJson),
          ),
        );
      },
    );
  }
}
