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
      {required DateTime date}) async {
    final subscription = GetPersonsKodasWarningQuery(
      variables: GetPersonsKodasWarningArguments(dateFilter: date),
    );
    return GetIt.I<GraphQLClient>()
        .query(
          QueryOptions(
            fetchPolicy: await CADatabaseRepository.isConnectedToInternet()
                ? FetchPolicy.networkOnly
                : FetchPolicy.cacheAndNetwork,
            document: subscription.document,
            operationName: subscription.operationName,
            variables: subscription.variables.toJson().stripNullValues(),
            parserFn: GetPersonsKodasWarning$QueryRoot.fromJson,
          ),
        )
        .then(_exceptionsMiddleware);
  }

  Future<QueryResult<GetPersonsAttendanceWarning$QueryRoot>>
      getPersonsMeetingWarning({required DateTime date}) async {
    final subscription = GetPersonsAttendanceWarningQuery(
      variables: GetPersonsAttendanceWarningArguments(dateFilter: date),
    );
    return GetIt.I<GraphQLClient>()
        .query(
          QueryOptions(
            fetchPolicy: await CADatabaseRepository.isConnectedToInternet()
                ? FetchPolicy.networkOnly
                : FetchPolicy.cacheAndNetwork,
            document: subscription.document,
            operationName: subscription.operationName,
            variables: subscription.variables.toJson().stripNullValues(),
            parserFn: GetPersonsAttendanceWarning$QueryRoot.fromJson,
          ),
        )
        .then(_exceptionsMiddleware);
  }

  Future<QueryResult<GetPersonsVisitWarning$QueryRoot>> getPersonsVisitWarning(
      {required DateTime date}) async {
    final subscription = GetPersonsVisitWarningQuery(
      variables: GetPersonsVisitWarningArguments(dateFilter: date),
    );
    return GetIt.I<GraphQLClient>()
        .query(
          QueryOptions(
            fetchPolicy: await CADatabaseRepository.isConnectedToInternet()
                ? FetchPolicy.networkOnly
                : FetchPolicy.cacheAndNetwork,
            document: subscription.document,
            operationName: subscription.operationName,
            variables: subscription.variables.toJson().stripNullValues(),
            parserFn: GetPersonsVisitWarning$QueryRoot.fromJson,
          ),
        )
        .then(_exceptionsMiddleware);
  }

  Future<QueryResult<GetPersonsConfessionWarning$QueryRoot>>
      getPersonsConfessionWarning({required DateTime date}) async {
    final subscription = GetPersonsConfessionWarningQuery(
      variables: GetPersonsConfessionWarningArguments(dateFilter: date),
    );
    return GetIt.I<GraphQLClient>()
        .query(
          QueryOptions(
            fetchPolicy: await CADatabaseRepository.isConnectedToInternet()
                ? FetchPolicy.networkOnly
                : FetchPolicy.cacheAndNetwork,
            document: subscription.document,
            operationName: subscription.operationName,
            variables: subscription.variables.toJson().stripNullValues(),
            parserFn: GetPersonsConfessionWarning$QueryRoot.fromJson,
          ),
        )
        .then(_exceptionsMiddleware);
  }

  Future<QueryResult<GetPersonsBirthday$QueryRoot>> getBirthdayPersons(
      {required DateTime date}) async {
    final subscription = GetPersonsBirthdayQuery(
      variables: GetPersonsBirthdayArguments(
        //2022-06-25T12:30:00.440Z => 06-25
        dateFilter: date.toIso8601String().split('-').sublist(1, 3).join('-'),
      ),
    );
    return GetIt.I<GraphQLClient>()
        .query(
          QueryOptions(
            fetchPolicy: await CADatabaseRepository.isConnectedToInternet()
                ? FetchPolicy.networkOnly
                : FetchPolicy.cacheAndNetwork,
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
        final PersonEditHistorySubscription subscription =
            PersonEditHistorySubscription(
          variables: PersonEditHistoryArguments(
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
                parserFn: (d) => PersonEditHistory$SubscriptionRoot.fromJson(d)
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

  Stream<Person?> getMorePersonData({
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

    final watchQuery = GetIt.I<GraphQLClient>().watchQuery(
      WatchQueryOptions(
        eagerlyFetchResults: false,
        fetchResults: true,
        document: query.document,
        operationName: query.operationName,
        variables: query.variables.toJson().stripNullValues(),
        parserFn: (d) => Person.fromJson(
          GetMorePersonData$QueryRoot.fromJson(d).personsByPk!.toJson(),
        ),
      ),
    );
    watchQuery.onData([
      (r) => r?.source == QueryResultSource.cache && watchQuery.isRefetchSafe
          ? watchQuery.refetch()
          : null
    ]);

    return watchQuery.stream
        .map(_exceptionsMiddleware)
        .map((value) => value.parsedData);
  }

  Stream<List<Person>?> personsGeolocations({
    String? personId,
    List<UuidValue> areasIds = const [],
    List<UuidValue> streetsIds = const [],
    List<UuidValue> servicesIds = const [],
    List<UuidValue> classesIds = const [],
    List<UuidValue> groupsIds = const [],
    List<UuidValue> familiesIds = const [],
  }) {
    assert(
      personId != null ||
          areasIds.isNotEmpty ||
          streetsIds.isNotEmpty ||
          servicesIds.isNotEmpty ||
          classesIds.isNotEmpty ||
          groupsIds.isNotEmpty ||
          familiesIds.isNotEmpty,
      'At least one condition should be given',
    );

    final PersonsGeolocationsQuery query = PersonsGeolocationsQuery(
      variables: PersonsGeolocationsArguments(
        conditions: PersonsBoolExp(
          $and: [
            if (personId != null)
              PersonsBoolExp(
                id: UuidComparisonExp(
                  $eq: UuidValue(personId),
                ),
              ),
            if (areasIds.isNotEmpty ||
                streetsIds.isNotEmpty ||
                familiesIds.isNotEmpty)
              PersonsBoolExp(
                $or: [
                  if (areasIds.isNotEmpty)
                    PersonsBoolExp(
                      areas: AreasBoolExp(
                        id: UuidComparisonExp(
                          $in: areasIds,
                        ),
                      ),
                    ),
                  if (streetsIds.isNotEmpty)
                    PersonsBoolExp(
                      streets: StreetsBoolExp(
                        id: UuidComparisonExp(
                          $in: streetsIds,
                        ),
                      ),
                    ),
                  if (familiesIds.isNotEmpty)
                    PersonsBoolExp(
                      family: FamiliesBoolExp(
                        id: UuidComparisonExp(
                          $in: familiesIds,
                        ),
                      ),
                    ),
                ],
              ),
            if (servicesIds.isNotEmpty ||
                classesIds.isNotEmpty ||
                groupsIds.isNotEmpty)
              PersonsBoolExp(
                $or: [
                  if (servicesIds.isNotEmpty)
                    PersonsBoolExp(
                      services: PersonsServicesBoolExp(
                        serviceId: UuidComparisonExp(
                          $in: servicesIds,
                        ),
                      ),
                    ),
                  if (classesIds.isNotEmpty)
                    PersonsBoolExp(
                      classes: ClassesBoolExp(
                        id: UuidComparisonExp(
                          $in: classesIds,
                        ),
                      ),
                    ),
                  if (groupsIds.isNotEmpty)
                    PersonsBoolExp(
                      groups: PersonsGroupsBoolExp(
                        groupId: UuidComparisonExp(
                          $in: groupsIds,
                        ),
                      ),
                    ),
                ],
              ),
          ],
        ),
      ),
    );

    final watchQuery = GetIt.I<GraphQLClient>().watchQuery(
      WatchQueryOptions(
        fetchResults: true,
        eagerlyFetchResults: false,
        document: query.document,
        operationName: query.operationName,
        variables: query.variables.toJson().stripNullValues(),
        parserFn: (d) => PersonsGeolocations$QueryRoot.fromJson(d)
            .persons
            .map(
              (p) => Person.fromJson(
                p.toJson(),
              ),
            )
            .toList(),
      ),
    );
    watchQuery.onData([
      (r) => r?.source == QueryResultSource.cache && watchQuery.isRefetchSafe
          ? watchQuery.refetch()
          : null
    ]);

    return watchQuery.stream
        .map(_exceptionsMiddleware)
        .map((value) => value.parsedData);
  }

  Stream<Person?> analyzePersonAttendance({
    required String personId,
    required DateTime dateFrom,
    required DateTime dateTo,
    required List<UuidValue> groupsIds,
    required List<UuidValue> classesIds,
    required List<UuidValue> servicesIds,
  }) {
    final AnalyzePersonAttendanceQuery query = AnalyzePersonAttendanceQuery(
      variables: AnalyzePersonAttendanceArguments(
        personId: UuidValue(personId),
        dateFrom: dateFrom,
        dateTo: dateTo,
        classesIds: classesIds,
        groupsIds: groupsIds,
        servicesIds: servicesIds,
      ),
    );

    final watchQuery = GetIt.I<GraphQLClient>().watchQuery(
      WatchQueryOptions(
        fetchResults: true,
        eagerlyFetchResults: false,
        document: query.document,
        operationName: query.operationName,
        variables: query.variables.toJson().stripNullValues(),
        parserFn: (d) => Person.fromJson(
          AnalyzePersonAttendance$QueryRoot.fromJson(d).personsByPk!.toJson(),
        ),
      ),
    );
    watchQuery.onData([
      (r) => r?.source == QueryResultSource.cache && watchQuery.isRefetchSafe
          ? watchQuery.refetch()
          : null
    ]);

    return watchQuery.stream
        .map(_exceptionsMiddleware)
        .map((value) => value.parsedData);
  }

  Stream<Person?> analyzePersonServicing({
    required String personId,
    required DateTime timeFrom,
    required DateTime timeTo,
    required List<UuidValue> groupsIds,
    required List<UuidValue> classesIds,
  }) {
    final AnalyzePersonServicingQuery query = AnalyzePersonServicingQuery(
      variables: AnalyzePersonServicingArguments(
        personId: UuidValue(personId),
        timeFrom: timeFrom,
        timeTo: timeTo,
      ),
    );

    final watchQuery = GetIt.I<GraphQLClient>().watchQuery(
      WatchQueryOptions(
        fetchResults: true,
        eagerlyFetchResults: false,
        document: query.document,
        operationName: query.operationName,
        variables: query.variables.toJson().stripNullValues(),
        parserFn: (d) => Person.fromJson(
          AnalyzePersonServicing$QueryRoot.fromJson(d).personsByPk!.toJson(),
        ),
      ),
    );
    watchQuery.onData([
      (r) => r?.source == QueryResultSource.cache && watchQuery.isRefetchSafe
          ? watchQuery.refetch()
          : null
    ]);

    return watchQuery.stream
        .map(_exceptionsMiddleware)
        .map((value) => value.parsedData);
  }

  Stream<Person?> getPersonClassesAndGroups({
    required String personId,
  }) {
    final GetPersonClassesAndGroupsQuery query = GetPersonClassesAndGroupsQuery(
      variables: GetPersonClassesAndGroupsArguments(
        id: UuidValue(personId),
      ),
    );

    final watchQuery = GetIt.I<GraphQLClient>().watchQuery(
      WatchQueryOptions(
        eagerlyFetchResults: false,
        fetchResults: true,
        document: query.document,
        operationName: query.operationName,
        variables: query.variables.toJson().stripNullValues(),
        parserFn: (d) => Person.fromJson(
          GetPersonClassesAndGroups$QueryRoot.fromJson(d).personsByPk!.toJson(),
        ),
      ),
    );
    watchQuery.onData([
      (r) => r?.source == QueryResultSource.cache && watchQuery.isRefetchSafe
          ? watchQuery.refetch()
          : null
    ]);

    return watchQuery.stream
        .map(_exceptionsMiddleware)
        .map((value) => value.parsedData);
  }

  DelegatingPaginatableStream<LastRecordedByInfo> personServiceAttendance({
    required String personId,
    required String serviceId,
    bool asAdmin = false,
  }) {
    return DelegatingPaginatableStream<LastRecordedByInfo>(
      onQuery: (instance, offset) {
        final PersonServiceAttendanceSubscription subscription =
            PersonServiceAttendanceSubscription(
          variables: PersonServiceAttendanceArguments(
            asAdmin: asAdmin,
            serviceId: UuidValue(serviceId),
            personId: UuidValue(personId),
            limit: instance.limit + 1,
            addWhere: [
              if (offset > 0)
                HistoryAttendanceHistoryBoolExp(
                  time: TimestampComparisonExp(
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
                parserFn: (d) =>
                    PersonServiceAttendance$SubscriptionRoot.fromJson(d)
                        .historyAttendanceHistory
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

  DelegatingPaginatableStream<LastRecordedByInfo> personClassAttendance({
    required String personId,
    required String classId,
    bool asAdmin = false,
  }) {
    return DelegatingPaginatableStream<LastRecordedByInfo>(
      onQuery: (instance, offset) {
        final PersonClassAttendanceSubscription subscription =
            PersonClassAttendanceSubscription(
          variables: PersonClassAttendanceArguments(
            asAdmin: asAdmin,
            classId: UuidValue(classId),
            personId: UuidValue(personId),
            limit: instance.limit + 1,
            addWhere: [
              if (offset > 0)
                HistoryAttendanceHistoryBoolExp(
                  time: TimestampComparisonExp(
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
                parserFn: (d) =>
                    PersonClassAttendance$SubscriptionRoot.fromJson(d)
                        .historyAttendanceHistory
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

  DelegatingPaginatableStream<LastRecordedByInfo> personGroupAttendance({
    required String personId,
    required String groupId,
    bool asAdmin = false,
  }) {
    return DelegatingPaginatableStream<LastRecordedByInfo>(
      onQuery: (instance, offset) {
        final PersonGroupAttendanceSubscription subscription =
            PersonGroupAttendanceSubscription(
          variables: PersonGroupAttendanceArguments(
            asAdmin: asAdmin,
            groupId: UuidValue(groupId),
            personId: UuidValue(personId),
            limit: instance.limit + 1,
            addWhere: [
              if (offset > 0)
                HistoryAttendanceHistoryBoolExp(
                  time: TimestampComparisonExp(
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
                parserFn: (d) =>
                    PersonGroupAttendance$SubscriptionRoot.fromJson(d)
                        .historyAttendanceHistory
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
}
