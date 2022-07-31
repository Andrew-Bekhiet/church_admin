part of '../database_repository.dart';

class PersonsQueries {
  PersonsQueries._();

  Future<Person?> updatePersonSpiritData({
    required String personId,
    required DateTime lastConfession,
    required DateTime lastKodas,
  }) async {
    final UpdatePersonSpiritDataMutation subscription =
        UpdatePersonSpiritDataMutation(
      variables: UpdatePersonSpiritDataArguments(
        personId: UuidValue(personId),
        lastKodas: lastKodas,
        lastConfession: lastConfession,
      ),
    );

    return GetIt.I<GraphQLClient>()
        .mutate(
          MutationOptions(
            document: subscription.document,
            operationName: subscription.operationName,
            variables: subscription.variables.toJson().stripNullValues(),
            parserFn: (d) {
              final rslt = UpdatePersonSpiritData$MutationRoot.fromJson(d);

              if ((rslt.insertHistoryConfessionHistoryOne ??
                      rslt.insertHistoryKodasHistoryOne) ==
                  null) return null;

              return Person.fromJson(
                rslt.insertHistoryConfessionHistoryOne?.person.toJson() ??
                    rslt.insertHistoryKodasHistoryOne!.person.toJson(),
              );
            },
          ),
        )
        .then(_exceptionsMiddleware)
        .then((value) => value.parsedData);
  }

  Future<Person?> updatePersonLastCall({
    required String personId,
    required DateTime lastCall,
  }) async {
    final InsertPersonLastCallMutation subscription =
        InsertPersonLastCallMutation(
      variables: InsertPersonLastCallArguments(
        personId: UuidValue(personId),
        lastCall: lastCall,
      ),
    );

    return GetIt.I<GraphQLClient>()
        .mutate(
          MutationOptions(
            document: subscription.document,
            operationName: subscription.operationName,
            variables: subscription.variables.toJson().stripNullValues(),
            parserFn: (d) {
              final rslt = InsertPersonLastCall$MutationRoot.fromJson(d);

              if (rslt.insertHistoryCallHistoryOne == null) return null;

              return Person.fromJson(
                rslt.insertHistoryCallHistoryOne!.person.toJson(),
              );
            },
          ),
        )
        .then(_exceptionsMiddleware)
        .then((value) => value.parsedData);
  }

  Future<Person?> updatePersonLastKodas({
    required String personId,
    required DateTime lastKodas,
  }) async {
    final InsertPersonLastKodasMutation subscription =
        InsertPersonLastKodasMutation(
      variables: InsertPersonLastKodasArguments(
        personId: UuidValue(personId),
        lastKodas: lastKodas,
      ),
    );

    return GetIt.I<GraphQLClient>()
        .mutate(
          MutationOptions(
            document: subscription.document,
            operationName: subscription.operationName,
            variables: subscription.variables.toJson().stripNullValues(),
            parserFn: (d) {
              final rslt = InsertPersonLastKodas$MutationRoot.fromJson(d);

              if (rslt.insertHistoryKodasHistoryOne == null) return null;

              return Person.fromJson(
                rslt.insertHistoryKodasHistoryOne!.person.toJson(),
              );
            },
          ),
        )
        .then(_exceptionsMiddleware)
        .then((value) => value.parsedData);
  }

  Future<Person?> updatePersonLastConfession({
    required String personId,
    required DateTime lastConfession,
  }) async {
    final InsertPersonLastConfessionMutation subscription =
        InsertPersonLastConfessionMutation(
      variables: InsertPersonLastConfessionArguments(
        personId: UuidValue(personId),
        lastConfession: lastConfession,
      ),
    );

    return GetIt.I<GraphQLClient>()
        .mutate(
          MutationOptions(
            document: subscription.document,
            operationName: subscription.operationName,
            variables: subscription.variables.toJson().stripNullValues(),
            parserFn: (d) {
              final rslt = InsertPersonLastConfession$MutationRoot.fromJson(d);

              if (rslt.insertHistoryConfessionHistoryOne == null) return null;

              return Person.fromJson(
                rslt.insertHistoryConfessionHistoryOne!.person.toJson(),
              );
            },
          ),
        )
        .then(_exceptionsMiddleware)
        .then((value) => value.parsedData);
  }

  Future<Person?> updatePersonLastVisit({
    required String personId,
    required DateTime lastVisit,
  }) async {
    final InsertPersonLastVisitMutation subscription =
        InsertPersonLastVisitMutation(
      variables: InsertPersonLastVisitArguments(
        personId: UuidValue(personId),
        lastVisit: lastVisit,
      ),
    );

    return GetIt.I<GraphQLClient>()
        .mutate(
          MutationOptions(
            document: subscription.document,
            operationName: subscription.operationName,
            variables: subscription.variables.toJson().stripNullValues(),
            parserFn: (d) {
              final rslt = InsertPersonLastVisit$MutationRoot.fromJson(d);

              if (rslt.insertHistoryVisitHistoryOne == null) return null;

              return Person.fromJson(
                rslt.insertHistoryVisitHistoryOne!.person.toJson(),
              );
            },
          ),
        )
        .then(_exceptionsMiddleware)
        .then((value) => value.parsedData);
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

  Stream<Person?> watchPerson({
    required String personId,
  }) {
    final WatchPersonSubscription subscription = WatchPersonSubscription(
      variables: WatchPersonArguments(id: UuidValue(personId)),
    );

    return GetIt.I<GraphQLClient>()
        .subscribe(
          SubscriptionOptions(
            document: subscription.document,
            operationName: subscription.operationName,
            variables: subscription.variables.toJson().stripNullValues(),
            parserFn: (d) {
              final result =
                  WatchPerson$SubscriptionRoot.fromJson(d).personsByPk;

              if (result == null) return null;

              return Person.fromJson(result.toJson());
            },
          ),
        )
        .map(_exceptionsMiddleware)
        .map((p) => p.parsedData);
  }

  DelegatingPaginatableStream<LastRecordedByInfo> personCallHistory({
    required String personId,
  }) {
    return DelegatingPaginatableStream<LastRecordedByInfo>(
      onQuery: (instance, offset) {
        final CallHistorySubscription subscription = CallHistorySubscription(
          variables: CallHistoryArguments(
            personId: UuidValue(personId),
            limit: instance.limit + 1,
            addWhere: [
              if (offset > 0)
                HistoryCallHistoryBoolExp(
                  time: TimestamptzComparisonExp(
                    $lt: instance
                        .currentValue[
                            (offset - 1) * instance.limit + instance.limit - 1]
                        .time,
                  ),
                ),
            ],
          ),
        );

        return GetIt.I<GraphQLClient>()
            .subscribe(
              SubscriptionOptions(
                document: subscription.document,
                operationName: subscription.operationName,
                variables: subscription.variables.toJson().stripNullValues(),
                parserFn: (d) => CallHistory$SubscriptionRoot.fromJson(d)
                    .historyCallHistory
                    .map((e) => LastRecordedByInfo.fromJson(e.toJson())),
              ),
            )
            .map(_exceptionsMiddleware)
            .map(
              (event) => _clampResults(
                null,
                null,
                offset,
                instance,
                event.parsedData!.toList(),
              ),
            );
      },
    );
  }

  DelegatingPaginatableStream<LastRecordedByInfo> personVisitHistory({
    required String personId,
  }) {
    return DelegatingPaginatableStream<LastRecordedByInfo>(
      onQuery: (instance, offset) {
        final VisitHistorySubscription subscription = VisitHistorySubscription(
          variables: VisitHistoryArguments(
            personId: UuidValue(personId),
            limit: instance.limit + 1,
            addWhere: [
              if (offset > 0)
                HistoryVisitHistoryBoolExp(
                  time: TimestamptzComparisonExp(
                    $lt: instance
                        .currentValue[
                            (offset - 1) * instance.limit + instance.limit - 1]
                        .time,
                  ),
                ),
            ],
          ),
        );

        return GetIt.I<GraphQLClient>()
            .subscribe(
              SubscriptionOptions(
                document: subscription.document,
                operationName: subscription.operationName,
                variables: subscription.variables.toJson().stripNullValues(),
                parserFn: (d) => VisitHistory$SubscriptionRoot.fromJson(d)
                    .historyVisitHistory
                    .map((e) => LastRecordedByInfo.fromJson(e.toJson())),
              ),
            )
            .map(_exceptionsMiddleware)
            .map(
              (event) => _clampResults(
                null,
                null,
                offset,
                instance,
                event.parsedData!.toList(),
              ),
            );
      },
    );
  }

  DelegatingPaginatableStream<LastRecordedByInfo> personConfessionHistory({
    required String personId,
  }) {
    return DelegatingPaginatableStream<LastRecordedByInfo>(
      onQuery: (instance, offset) {
        final ConfessionHistorySubscription subscription =
            ConfessionHistorySubscription(
          variables: ConfessionHistoryArguments(
            personId: UuidValue(personId),
            limit: instance.limit + 1,
            addWhere: [
              if (offset > 0)
                HistoryConfessionHistoryBoolExp(
                  dayId: DateComparisonExp(
                    $lt: instance
                        .currentValue[
                            (offset - 1) * instance.limit + instance.limit - 1]
                        .time,
                  ),
                ),
            ],
          ),
        );

        return GetIt.I<GraphQLClient>()
            .subscribe(
              SubscriptionOptions(
                document: subscription.document,
                operationName: subscription.operationName,
                variables: subscription.variables.toJson().stripNullValues(),
                parserFn: (d) => ConfessionHistory$SubscriptionRoot.fromJson(d)
                    .historyConfessionHistory
                    .map((e) => LastRecordedByInfo.fromJson(e.toJson())),
              ),
            )
            .map(_exceptionsMiddleware)
            .map(
              (event) => _clampResults(
                null,
                null,
                offset,
                instance,
                event.parsedData!.toList(),
              ),
            );
      },
    );
  }

  DelegatingPaginatableStream<LastRecordedByInfo> personKodasHistory({
    required String personId,
  }) {
    return DelegatingPaginatableStream<LastRecordedByInfo>(
      onQuery: (instance, offset) {
        final KodasHistorySubscription subscription = KodasHistorySubscription(
          variables: KodasHistoryArguments(
            personId: UuidValue(personId),
            limit: instance.limit + 1,
            addWhere: [
              if (offset > 0)
                HistoryKodasHistoryBoolExp(
                  dayId: DateComparisonExp(
                    $lt: instance
                        .currentValue[
                            (offset - 1) * instance.limit + instance.limit - 1]
                        .time,
                  ),
                ),
            ],
          ),
        );

        return GetIt.I<GraphQLClient>()
            .subscribe(
              SubscriptionOptions(
                document: subscription.document,
                operationName: subscription.operationName,
                variables: subscription.variables.toJson().stripNullValues(),
                parserFn: (d) => KodasHistory$SubscriptionRoot.fromJson(d)
                    .historyKodasHistory
                    .map((e) => LastRecordedByInfo.fromJson(e.toJson())),
              ),
            )
            .map(_exceptionsMiddleware)
            .map(
              (event) => _clampResults(
                null,
                null,
                offset,
                instance,
                event.parsedData!.toList(),
              ),
            );
      },
    );
  }

  DelegatingPaginatableStream<LastRecordedByInfo> personEditHistory({
    required String personId,
  }) {
    return DelegatingPaginatableStream<LastRecordedByInfo>(
      onQuery: (instance, offset) {
        final EditHistorySubscription subscription = EditHistorySubscription(
          variables: EditHistoryArguments(
            personId: UuidValue(personId),
            limit: instance.limit + 1,
            addWhere: [
              if (offset > 0)
                HistoryEditHistoryBoolExp(
                  time: TimestamptzComparisonExp(
                    $lt: instance
                        .currentValue[
                            (offset - 1) * instance.limit + instance.limit - 1]
                        .time,
                  ),
                ),
            ],
          ),
        );

        return GetIt.I<GraphQLClient>()
            .subscribe(
              SubscriptionOptions(
                document: subscription.document,
                operationName: subscription.operationName,
                variables: subscription.variables.toJson().stripNullValues(),
                parserFn: (d) => EditHistory$SubscriptionRoot.fromJson(d)
                    .historyEditHistory
                    .map((e) => LastRecordedByInfo.fromJson(e.toJson())),
              ),
            )
            .map(_exceptionsMiddleware)
            .map(
              (event) => _clampResults(
                null,
                null,
                offset,
                instance,
                event.parsedData!.toList(),
              ),
            );
      },
    );
  }

  Future<Person> getMorePersonData({
    required String personId,
    String? areasAfter,
    String? classesAfter,
    String? groupsAfter,
    String? servicesAfter,
  }) {
    final GetMorePersonDataQuery query = GetMorePersonDataQuery(
      variables: GetMorePersonDataArguments(
        id: UuidValue(personId),
        areasAfter: areasAfter,
        classesAfter: classesAfter,
        groupsAfter: groupsAfter,
        servicesAfter: servicesAfter,
      ),
    );

    return GetIt.I<GraphQLClient>()
        .query(
          QueryOptions(
            document: query.document,
            operationName: query.operationName,
            variables: query.variables.toJson().stripNullValues(),
            parserFn: (d) => Person.fromJson(
              GetMorePersonData$QueryRoot.fromJson(d).personsByPk!.toJson(),
            ),
          ),
        )
        .then(_exceptionsMiddleware)
        .then((value) => value.parsedData!);
  }
}
