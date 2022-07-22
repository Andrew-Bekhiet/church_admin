part of '../database_repository.dart';

class PersonsQueries {
  PersonsQueries._();

  Future<Person> updatePerson({
    required Person old,
    required Person $new,
  }) async {
    final newJson = $new.toJson();
    final personInput = {
      for (final e in old.toJson().entries)
        if (newJson[e.key] != e.value) e.key: e.value
    };

    final UpdatePersonMutation subscription = UpdatePersonMutation(
      variables: UpdatePersonArguments(
        id: UuidValue(old.id),
        newData: PersonsSetInput.fromJson(personInput),
      ),
    );

    return GetIt.I<GraphQLClient>()
        .mutate(
          MutationOptions(
            document: subscription.document,
            operationName: subscription.operationName,
            variables: subscription.variables.toJson().stripNullValues(
                  personInput.entries
                      .where((e) => e.value == null)
                      .map((e) => e.key)
                      .toSet(),
                ),
            parserFn: (d) => Person.fromJson(
              UpdatePerson$MutationRoot.fromJson(d).updatePersonsByPk!.toJson(),
            ),
          ),
        )
        .then(_exceptionsMiddleware)
        .then((value) => value.parsedData!);
  }

  DelegatingPaginatableStream<Person> getPersonsStream({
    Stream<String?>? searchQuery,
  }) {
    String? lastSearch;

    return DelegatingPaginatableStream<Person>(
      onQuery: (instance, offset) {
        return (searchQuery ?? Stream.value(null))
            .distinct(
          (p, n) => p == n || (n == '' && p == null) || (p == '' && n == null),
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

            final GetPersonsStreamSubscription subscription =
                GetPersonsStreamSubscription(
              variables: GetPersonsStreamArguments(
                limit: instance.limit + 1,
                addWhere: [
                  if (search != null && search.isNotEmpty)
                    PersonsBoolExp(
                      name: StringComparisonExp($ilike: '%$search%'),
                    ),
                  if (lastSearch == search && offset > 0)
                    PersonsBoolExp(
                      name: StringComparisonExp(
                        $gt: instance
                            .currentValue[(offset - 1) * instance.limit +
                                instance.limit -
                                1]
                            .name,
                      ),
                    ),
                ],
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
            parserFn: GetPersonsKodasWarning$QueryRoot.fromJson,
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
            parserFn: GetPersonsAttendanceWarning$QueryRoot.fromJson,
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
            parserFn: GetPersonsVisitWarning$QueryRoot.fromJson,
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
            parserFn: GetPersonsConfessionWarning$QueryRoot.fromJson,
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
            parserFn: GetPersonsBirthday$QueryRoot.fromJson,
          ),
        )
        .then(_exceptionsMiddleware);
  }
}
