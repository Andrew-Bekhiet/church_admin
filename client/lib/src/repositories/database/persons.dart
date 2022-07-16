part of '../database_repository.dart';

class PersonsQueries {
  PersonsQueries._();

  DelegatingPaginatableStream<Person> getPersonsStream$({
    Stream<String?>? searchQuery,
  }) {
    String? lastSearch;

    return DelegatingPaginatableStream<Person>(
      onQuery: (instance, offset) {
        return (searchQuery ?? Stream.value(null))
            .debounceTime(const Duration(milliseconds: 400))
            .distinct(
              (p, n) =>
                  p == n || (n == '' && p == null) || (p == '' && n == null),
            )
            .switchMap(
          (search) {
            if (search != null &&
                search.isNotEmpty &&
                lastSearch != search &&
                offset != 0) {
              instance.loadPage(0);
              return Stream.value(DelegatingStreamResult(result: []));
            }

            final Stream<QueryResult<Iterable<Person>>> subscriptionStream;

            final addWhere = [
              if (search != null && search.isNotEmpty)
                PersonsBoolExp(name: StringComparisonExp($ilike: '%$search%')),
              if (lastSearch == search && offset > 0)
                PersonsBoolExp(
                  name: StringComparisonExp(
                    $gt: instance
                        .currentValue[
                            (offset - 1) * instance.limit + instance.limit - 1]
                        .name,
                  ),
                ),
            ];

            final GetPersonsStreamSubscription subscription =
                GetPersonsStreamSubscription(
              variables: GetPersonsStreamArguments(
                limit: instance.limit,
                addWhere: addWhere,
              ),
            );

            subscriptionStream = GetIt.I<GraphQLClient>().subscribe(
              SubscriptionOptions(
                document: subscription.document,
                operationName: subscription.operationName,
                variables: subscription.variables.toJson().stripNullValues(),
                parserFn: (d) => GetPersonsStream$SubscriptionRoot.fromJson(d)
                    .persons
                    .map((e) => Person.fromJson(e.toJson())),
              ),
            );

            return subscriptionStream
                .map(_exceptionsMiddleware)
                .map(
                  (event) => _clampResults(
                    lastSearch,
                    search,
                    offset,
                    instance,
                    event.parsedData!.toList(),
                  ),
                )
                .map((event) {
              lastSearch = search;
              return event;
            });
          },
        );
      },
    );
  }

  Future<QueryResult<GetPersonsKodasWarning$QueryRoot>> getPersonsKodasWarning(
      {required DateTime date}) {
    final subscription = GetPersonsKodasWarningQuery(
      variables: GetPersonsKodasWarningArguments(dateFilter: date),
    );
    return GetIt.I<GraphQLClient>()
        .query(
          QueryOptions(
            document: subscription.document,
            operationName: subscription.operationName,
            variables: subscription.variables.toJson().stripNullValues(),
            parserFn: (m) =>
                GetPersonsKodasWarning$QueryRoot.fromJson(m.values.single),
          ),
        )
        .then(_exceptionsMiddleware);
  }

  Future<QueryResult<GetPersonsAttendanceWarning$QueryRoot>>
      getPersonsMeetingWarning({required DateTime date}) {
    final subscription = GetPersonsAttendanceWarningQuery(
      variables: GetPersonsAttendanceWarningArguments(dateFilter: date),
    );
    return GetIt.I<GraphQLClient>()
        .query(
          QueryOptions(
            document: subscription.document,
            operationName: subscription.operationName,
            variables: subscription.variables.toJson().stripNullValues(),
            parserFn: (m) =>
                GetPersonsAttendanceWarning$QueryRoot.fromJson(m.values.single),
          ),
        )
        .then(_exceptionsMiddleware);
  }

  Future<QueryResult<GetPersonsVisitWarning$QueryRoot>> getPersonsVisitWarning(
      {required DateTime date}) {
    final subscription = GetPersonsVisitWarningQuery(
      variables: GetPersonsVisitWarningArguments(dateFilter: date),
    );
    return GetIt.I<GraphQLClient>()
        .query(
          QueryOptions(
            document: subscription.document,
            operationName: subscription.operationName,
            variables: subscription.variables.toJson().stripNullValues(),
            parserFn: (m) =>
                GetPersonsVisitWarning$QueryRoot.fromJson(m.values.single),
          ),
        )
        .then(_exceptionsMiddleware);
  }

  Future<QueryResult<GetPersonsConfessionWarning$QueryRoot>>
      getPersonsConfessionWarning({required DateTime date}) {
    final subscription = GetPersonsConfessionWarningQuery(
      variables: GetPersonsConfessionWarningArguments(dateFilter: date),
    );
    return GetIt.I<GraphQLClient>()
        .query(
          QueryOptions(
            document: subscription.document,
            operationName: subscription.operationName,
            variables: subscription.variables.toJson().stripNullValues(),
            parserFn: (m) =>
                GetPersonsConfessionWarning$QueryRoot.fromJson(m.values.single),
          ),
        )
        .then(_exceptionsMiddleware);
  }

  Future<QueryResult<GetPersonsBirthday$QueryRoot>> getBirthdayPersons(
      {required DateTime date}) {
    final subscription = GetPersonsBirthdayQuery(
      variables: GetPersonsBirthdayArguments(
        //2022-06-25T12:30:00.440Z => 06-25
        dateFilter: date.toIso8601String().split('-').sublist(1, 3).join('-'),
      ),
    );
    return GetIt.I<GraphQLClient>()
        .query(
          QueryOptions(
            document: subscription.document,
            operationName: subscription.operationName,
            variables: subscription.variables.toJson().stripNullValues(),
            parserFn: (m) =>
                GetPersonsBirthday$QueryRoot.fromJson(m.values.single),
          ),
        )
        .then(_exceptionsMiddleware);
  }
}
