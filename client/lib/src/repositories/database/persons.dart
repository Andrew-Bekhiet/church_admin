part of '../database_repository.dart';

class PersonsQueries {
  PersonsQueries._();

  Person? _parseDeepPersonOrNull(Map<String, dynamic> d) {
    if (d.values.single == null) return null;

    return Person.fromJson(castAllHashMaps(
      (d.values.single as Map).values.single as Map<String, dynamic>,
    ));
  }

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
              if (d.values.every((e) => e == null)) return null;

              return Person.fromJson(
                castAllHashMaps(
                  (d.values.first as Map?)?.values.single ??
                      (d.values.last as Map).values.single,
                ),
              );
            },
          ),
        )
        .then(exceptionsMiddleware)
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
            parserFn: _parseDeepPersonOrNull,
          ),
        )
        .then(exceptionsMiddleware)
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
            parserFn: _parseDeepPersonOrNull,
          ),
        )
        .then(exceptionsMiddleware)
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
            parserFn: _parseDeepPersonOrNull,
          ),
        )
        .then(exceptionsMiddleware)
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
            parserFn: _parseDeepPersonOrNull,
          ),
        )
        .then(exceptionsMiddleware)
        .then((value) => value.parsedData);
  }

  Future<Person?> deletePerson({
    required String personId,
  }) async {
    final DeletePersonMutation subscription = DeletePersonMutation(
      variables: DeletePersonArguments(
        personId: UuidValue(personId),
      ),
    );

    return GetIt.I<GraphQLClient>()
        .mutate(
          MutationOptions(
            document: subscription.document,
            operationName: subscription.operationName,
            variables: subscription.variables.toJson().stripNullValues(),
            parserFn: (d) => Person.fromJson(castAllHashMaps(d.values.single)),
          ),
        )
        .then(exceptionsMiddleware)
        .then((value) => value.parsedData);
  }

  GQLPaginatableStream<Person> getPersonsStream({
    Stream<String?>? searchQuery,
    String? secondLineFieldName,
  }) {
    return GQLPaginatableStream<Person>(
      searchQuery: searchQuery,
      subscriptionStream: (event) {
        final instance = event.instance;
        final offset = event.offset;
        final search = event.search;
        final lastSearch = event.lastSearch;

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
            document: secondLineFieldName == null
                ? subscription.document
                : addSelectionFields(
                    {
                      'persons': [
                        FieldNode(name: NameNode(value: secondLineFieldName))
                      ]
                    },
                    subscription.document,
                  ),
            operationName: subscription.operationName,
            variables: subscription.variables.toJson().stripNullValues(),
            parserFn: (d) => _parseListOfT(d, Person.fromJson),
          ),
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
        .then(exceptionsMiddleware);
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
        .then(exceptionsMiddleware);
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
        .then(exceptionsMiddleware);
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
        .then(exceptionsMiddleware);
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
        .then(exceptionsMiddleware);
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
            parserFn: (d) => d.values.single != null
                ? Person.fromJson(castAllHashMaps(d.values.single))
                : null,
          ),
        )
        .map(exceptionsMiddleware)
        .map((p) => p.parsedData);
  }

  GQLPaginatableStream<LastRecordedByInfo> personCallHistory({
    required String personId,
  }) {
    return GQLPaginatableStream<LastRecordedByInfo>(
      subscriptionStream: (event) {
        final instance = event.instance;
        final offset = event.offset;

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

        return GetIt.I<GraphQLClient>().subscribe(
          SubscriptionOptions(
            document: subscription.document,
            operationName: subscription.operationName,
            variables: subscription.variables.toJson().stripNullValues(),
            parserFn: (d) => _parseListOfT(d, LastRecordedByInfo.fromJson),
          ),
        );
      },
    );
  }

  GQLPaginatableStream<LastRecordedByInfo> personVisitHistory({
    required String personId,
  }) {
    return GQLPaginatableStream<LastRecordedByInfo>(
      subscriptionStream: (event) {
        final instance = event.instance;
        final offset = event.offset;

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

        return GetIt.I<GraphQLClient>().subscribe(
          SubscriptionOptions(
            document: subscription.document,
            operationName: subscription.operationName,
            variables: subscription.variables.toJson().stripNullValues(),
            parserFn: (d) => _parseListOfT(d, LastRecordedByInfo.fromJson),
          ),
        );
      },
    );
  }

  GQLPaginatableStream<LastRecordedByInfo> personConfessionHistory({
    required String personId,
  }) {
    return GQLPaginatableStream<LastRecordedByInfo>(
      subscriptionStream: (event) {
        final instance = event.instance;
        final offset = event.offset;

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

        return GetIt.I<GraphQLClient>().subscribe(
          SubscriptionOptions(
            document: subscription.document,
            operationName: subscription.operationName,
            variables: subscription.variables.toJson().stripNullValues(),
            parserFn: (d) => _parseListOfT(d, LastRecordedByInfo.fromJson),
          ),
        );
      },
    );
  }

  GQLPaginatableStream<LastRecordedByInfo> personKodasHistory({
    required String personId,
  }) {
    return GQLPaginatableStream<LastRecordedByInfo>(
      subscriptionStream: (event) {
        final instance = event.instance;
        final offset = event.offset;

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

        return GetIt.I<GraphQLClient>().subscribe(
          SubscriptionOptions(
            document: subscription.document,
            operationName: subscription.operationName,
            variables: subscription.variables.toJson().stripNullValues(),
            parserFn: (d) => _parseListOfT(d, LastRecordedByInfo.fromJson),
          ),
        );
      },
    );
  }

  GQLPaginatableStream<LastRecordedByInfo> personEditHistory({
    required String personId,
  }) {
    return GQLPaginatableStream<LastRecordedByInfo>(
      subscriptionStream: (event) {
        final instance = event.instance;
        final offset = event.offset;

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

        return GetIt.I<GraphQLClient>().subscribe(
          SubscriptionOptions(
            document: subscription.document,
            operationName: subscription.operationName,
            variables: subscription.variables.toJson().stripNullValues(),
            parserFn: (d) => _parseListOfT(d, LastRecordedByInfo.fromJson),
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
        parserFn: (d) => Person.fromJson(castAllHashMaps(d.values.single)),
      ),
    );
    watchQuery.onData([
      (r) => r?.source == QueryResultSource.cache && watchQuery.isRefetchSafe
          ? watchQuery.refetch()
          : null
    ]);

    return watchQuery.stream
        .map(exceptionsMiddleware)
        .map((value) => value.parsedData!);
  }

  Stream<Map<Type, Set<Object>>?> personsGeolocations({
    String? personId,
    List<UuidValue> areasIds = const [],
    List<UuidValue> streetsIds = const [],
    List<UuidValue> familiesIds = const [],
    List<UuidValue> servicesIds = const [],
    List<UuidValue> classesIds = const [],
    List<UuidValue> groupsIds = const [],
    bool getAreas = false,
    bool getStreets = false,
    bool getFamilies = false,
    bool getPersons = false,
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
    assert(getAreas || getStreets || getFamilies || getPersons,
        'At lease one type should be fetched');

    final PersonsGeolocationsQuery query = PersonsGeolocationsQuery(
      variables: PersonsGeolocationsArguments(
        areasIds: areasIds,
        familiesIds: familiesIds,
        streetsIds: streetsIds,
        personsConditions: [
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
    );

    final watchQuery = GetIt.I<GraphQLClient>().watchQuery(
      WatchQueryOptions(
        fetchResults: true,
        eagerlyFetchResults: false,
        document: getAreas && getStreets && getFamilies && getPersons
            ? query.document
            : removeVariables(
                {
                  if (!getAreas) ...{
                    'areasIds',
                    if (!getStreets) ...{
                      'streetsIds',
                      if (!getFamilies) 'familiesIds',
                    },
                  },
                },
                removeTopFields(
                  {
                    if (!getAreas) 'areas',
                    if (!getStreets) 'streets',
                    if (!getFamilies) 'families',
                    if (!getPersons) 'persons',
                  },
                  query.document,
                ),
              ),
        operationName: query.operationName,
        variables: query.variables.toJson().stripNullValues(),
      ),
    );
    watchQuery.onData([
      (r) => r?.source == QueryResultSource.cache && watchQuery.isRefetchSafe
          ? watchQuery.refetch()
          : null
    ]);

    return watchQuery.stream.asyncMap(
      (value) => compute(
        (d) => {
          Area: (d['areas'] as List? ?? {})
              .map(
                (e) => Area.fromJson(
                  castAllHashMaps(e),
                ),
              )
              .toSet(),
          Street: (d['streets'] as List? ?? {})
              .map(
                (e) => Street.fromJson(
                  castAllHashMaps(e),
                ),
              )
              .toSet(),
          Family: (d['families'] as List? ?? {})
              .map(
                (e) => Family.fromJson(
                  castAllHashMaps(e),
                ),
              )
              .toSet(),
          Person: (d['persons'] as List? ?? {})
              .map(
                (e) => Person.fromJson(
                  castAllHashMaps(e),
                ),
              )
              .toSet(),
        },
        value.data ?? {},
      ),
    );
  }

  Stream<Person?> analyzePerson({
    required String personId,
    required PersonAnalysisOptions options,
  }) {
    final AnalyzePersonQuery query = AnalyzePersonQuery(
      variables: AnalyzePersonArguments(
        personId: UuidValue(personId),
        dateFrom: options.dateRange.start,
        dateTo: options.dateRange.end,
        timeFrom: options.dateRange.start,
        timeTo: options.dateRange.end,
        classesIds: options.classes.map((e) => UuidValue(e.id)).toList(),
        groupsIds: options.groups.map((e) => UuidValue(e.id)).toList(),
        servicesIds: options.services.map((e) => UuidValue(e.id)).toList(),
        confessionHistory: options.confessionAnalysis,
        kodasHistory: options.kodasAnalysis,
        callHistory: options.callHistoryAnalysis,
        visitHistory: options.visitHistoryAnalysis,
        editHistory: options.editHistoryAnalysis,
      ),
    );

    final watchQuery = GetIt.I<GraphQLClient>().watchQuery(
      WatchQueryOptions(
        fetchResults: true,
        errorPolicy: ErrorPolicy.all,
        eagerlyFetchResults: false,
        document: query.document,
        operationName: query.operationName,
        variables: query.variables.toJson().stripNullValues(),
        parserFn: (d) => Person.fromJson(castAllHashMaps(d.values.single)),
      ),
    );
    watchQuery.onData([
      (r) => r?.source == QueryResultSource.cache && watchQuery.isRefetchSafe
          ? watchQuery.refetch()
          : null
    ]);

    return watchQuery.stream.map((e) {
      if (e.data == null && e.hasException) throw e.exception!;

      return e;
    }).map((value) => value.parsedData);
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
        parserFn: (d) => Person.fromJson(castAllHashMaps(d.values.single)),
      ),
    );
    watchQuery.onData([
      (r) => r?.source == QueryResultSource.cache && watchQuery.isRefetchSafe
          ? watchQuery.refetch()
          : null
    ]);

    return watchQuery.stream
        .map(exceptionsMiddleware)
        .map((value) => value.parsedData);
  }

  Future<Person> getFullPersonData({
    required String personId,
  }) async {
    final GetFullPersonDataQuery query = GetFullPersonDataQuery(
      variables: GetFullPersonDataArguments(
        id: UuidValue(personId),
      ),
    );

    final watchQuery = GetIt.I<GraphQLClient>().watchQuery(
      WatchQueryOptions(
        eagerlyFetchResults: true,
        fetchResults: true,
        document: query.document,
        operationName: query.operationName,
        variables: query.variables.toJson().stripNullValues(),
        parserFn: (d) => Person.fromJson(castAllHashMaps(d.values.single)),
      ),
    );

    if (await CADatabaseRepository.isConnectedToInternet()) {
      return watchQuery.stream
          .map(exceptionsMiddleware)
          .map((value) => value.parsedData)
          .whereNotNull()
          .elementAt(1);
    } else {
      return watchQuery.stream
          .map(exceptionsMiddleware)
          .map((value) => value.parsedData)
          .whereNotNull()
          .first;
    }
  }

  Future<void> updatePerson({
    required Person oldPerson,
    required Person newPerson,
  }) async {
    final idEquality = EqualityBy<ID, String>((o) => o.id);

    final collectionEquality =
        DeepCollectionEquality.unordered(EqualityBy((o) => o is ID ? o.id : o));

    final initialJson = oldPerson.toJson();
    final delta = {
      for (final kv in newPerson.toJson().entries)
        if (!collectionEquality.equals(kv.value, initialJson[kv.key]))
          kv.key: kv.value,
    };

    //Lists Diffs:
    final servicesDiff = diff(
      EqualitySet<ID>.from(idEquality, oldPerson.services ?? []),
      EqualitySet<ID>.from(idEquality, newPerson.services ?? []),
    );

    final groupsDiff = diff(
      EqualitySet<ID>.from(idEquality, oldPerson.groups ?? []),
      EqualitySet<ID>.from(idEquality, newPerson.groups ?? []),
    );

    final tagsDiff = diff(
      EqualitySet<ID>.from(idEquality, oldPerson.tags ?? []),
      EqualitySet<ID>.from(idEquality, newPerson.tags ?? []),
    );

    final deleteServices =
        servicesDiff.item1.map((s) => s.id.toUuid()).toList();
    final newServices = servicesDiff.item2
        .map(
          (e) => PersonsServicesInsertInput(
            personId: newPerson.id.toUuid(),
            serviceId: e.id.toUuid(),
          ),
        )
        .toList();
    final deleteGroups = groupsDiff.item1.map((g) => g.id.toUuid()).toList();
    final newGroups = groupsDiff.item2
        .map(
          (g) => PersonsGroupsInsertInput(
            personId: newPerson.id.toUuid(),
            groupId: g.id.toUuid(),
          ),
        )
        .toList();
    final deleteTags = tagsDiff.item1.map((t) => t.id.toUuid()).toList();
    final newTags = tagsDiff.item2
        .map(
          (t) => PersonsTagsInsertInput(
            personId: newPerson.id.toUuid(),
            tagId: t.id.toUuid(),
          ),
        )
        .toList();
    //

    final UpdatePersonMutation query = UpdatePersonMutation(
      variables: UpdatePersonArguments(
        personId: newPerson.id.toUuid(),
        newPerson: PersonsSetInput.fromJson(delta),
        //Filter only services that exist in old person services
        //but not in new person services
        deleteServices: deleteServices,
        //Filter only services that exist in new person services
        //but not in old person services
        newServices: newServices,
        deleteGroups: deleteGroups,
        newGroups: newGroups,
        deleteTags: deleteTags,
        newTags: newTags,
        lastCall: delta['lastCall'] != null
            ? LastRecordedByInfo.fromJson(delta['lastCall']).time
            : null,
        lastConfession: delta['lastConfession'] != null
            ? LastRecordedByInfo.fromJson(delta['lastConfession']).time
            : null,
        lastKodas: delta['lastKodas'] != null
            ? LastRecordedByInfo.fromJson(delta['lastKodas']).time
            : null,
        lastVisit: delta['lastVisit'] != null
            ? LastRecordedByInfo.fromJson(delta['lastVisit']).time
            : null,
      ),
    );

    final fieldsToRemove = {
      if (newGroups.isEmpty) 'insertPersonsGroups',
      if (newServices.isEmpty) 'insertPersonsServices',
      if (newTags.isEmpty) 'insertPersonsTags',
      if (deleteGroups.isEmpty) 'deletePersonsGroups',
      if (deleteServices.isEmpty) 'deletePersonsServices',
      if (deleteTags.isEmpty) 'deletePersonsTags',
      if (delta.isEmpty) 'updatePersonsByPk',
      if (delta['lastConfession'] == null) 'insertHistoryConfessionHistoryOne',
      if (delta['lastKodas'] == null) 'insertHistoryKodasHistoryOne',
      if (delta['lastCall'] == null) 'insertHistoryCallHistoryOne',
      if (delta['lastVisit'] == null) 'insertHistoryVisitHistoryOne',
    };

    final varsToRemove = {
      if (newGroups.isEmpty) 'newGroups',
      if (newServices.isEmpty) 'newServices',
      if (newTags.isEmpty) 'newTags',
      if (deleteGroups.isEmpty) 'deleteGroups',
      if (deleteServices.isEmpty) 'deleteServices',
      if (deleteTags.isEmpty) 'deleteTags',
      if (delta.isEmpty) 'newPerson',
      if (delta['lastConfession'] == null) 'lastConfession',
      if (delta['lastKodas'] == null) 'lastKodas',
      if (delta['lastCall'] == null) 'lastCall',
      if (delta['lastVisit'] == null) 'lastVisit',
    };

    final mutation = GetIt.I<GraphQLClient>().mutate(
      MutationOptions(
        document: fieldsToRemove.isEmpty
            ? query.document
            : removeVariables(
                varsToRemove,
                removeTopFields(fieldsToRemove, query.document),
              ),
        operationName: query.operationName,
        variables: {
          for (final kv in query.variables
              .toJson()
              .stripNullValues(delta.keys.toSet())
              .entries)
            if (!varsToRemove.contains(kv.key)) kv.key: kv.value,
        },
        parserFn: (d) => d['updatePersonsByPk']?.isNotEmpty ?? false
            ? Person.fromJson(castAllHashMaps(d['updatePersonsByPk']))
            : null,
      ),
    );

    await mutation.then(exceptionsMiddleware);
  }

  Future<Person> insertPerson({
    required Person newPerson,
  }) {
    final collectionEquality = DeepCollectionEquality.unordered(
      EqualityBy((o) => o is ID ? o.id : o),
    );

    final initialJson = Person(id: '', name: '').toJson();
    final delta = {
      for (final kv in newPerson
          .copyWith(
            church: null,
            college: null,
            family: null,
            father: null,
            job: null,
            personType: null,
            qualification: null,
            school: null,
            shammasLevel: null,
            studyYear: null,
            state: null,
          )
          .toJson()
          .entries)
        if (kv.key != 'id' &&
            !collectionEquality.equals(kv.value, initialJson[kv.key]))
          kv.key: kv.value,
    };

    final updateColumns = delta.keys.toSet();

    final InsertPersonMutation query = InsertPersonMutation(
      variables: InsertPersonArguments(
        newPerson: PersonsInsertInput.fromJson(
          {
            ...delta,
            'services': PersonsServicesArrRelInsertInput(
              data: (newPerson.services ?? [])
                  .map(
                    (e) => PersonsServicesInsertInput(
                      serviceId: e.id.toUuid(),
                    ),
                  )
                  .toList(),
            ).toJson(),
            'groups': PersonsGroupsArrRelInsertInput(
              data: (newPerson.groups ?? [])
                  .map(
                    (e) => PersonsGroupsInsertInput(
                      groupId: e.id.toUuid(),
                    ),
                  )
                  .toList(),
            ).toJson(),
            'tags': PersonsTagsArrRelInsertInput(
              data: (newPerson.tags ?? [])
                  .map(
                    (e) => PersonsTagsInsertInput(
                      tagId: e.id.toUuid(),
                    ),
                  )
                  .toList(),
            ).toJson(),
          },
        ),
      ),
    );

    final mutation = GetIt.I<GraphQLClient>().mutate(
      MutationOptions(
        document: query.document,
        operationName: query.operationName,
        variables: query.variables.toJson().stripNullValues(updateColumns),
        parserFn: (d) => Person.fromJson(castAllHashMaps(d.values.single)),
      ),
    );

    return mutation
        .then(exceptionsMiddleware)
        .then((value) => value.parsedData!);
  }

  GQLPaginatableStream<LastRecordedByInfo> personServiceAttendance({
    required String personId,
    required String serviceId,
    bool asAdmin = false,
  }) {
    return GQLPaginatableStream<LastRecordedByInfo>(
      subscriptionStream: (event) {
        final instance = event.instance;
        final offset = event.offset;

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

        return GetIt.I<GraphQLClient>().subscribe(
          SubscriptionOptions(
            document: subscription.document,
            operationName: subscription.operationName,
            variables: subscription.variables.toJson().stripNullValues(),
            parserFn: (d) => _parseListOfT(d, LastRecordedByInfo.fromJson),
          ),
        );
      },
    );
  }

  GQLPaginatableStream<LastRecordedByInfo> personClassAttendance({
    required String personId,
    required String classId,
    bool asAdmin = false,
  }) {
    return GQLPaginatableStream<LastRecordedByInfo>(
      subscriptionStream: (event) {
        final instance = event.instance;
        final offset = event.offset;

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

        return GetIt.I<GraphQLClient>().subscribe(
          SubscriptionOptions(
            document: subscription.document,
            operationName: subscription.operationName,
            variables: subscription.variables.toJson().stripNullValues(),
            parserFn: (d) => _parseListOfT(d, LastRecordedByInfo.fromJson),
          ),
        );
      },
    );
  }

  GQLPaginatableStream<LastRecordedByInfo> personGroupAttendance({
    required String personId,
    required String groupId,
    bool asAdmin = false,
  }) {
    return GQLPaginatableStream<LastRecordedByInfo>(
      subscriptionStream: (event) {
        final instance = event.instance;
        final offset = event.offset;

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

        return GetIt.I<GraphQLClient>().subscribe(
          SubscriptionOptions(
            document: subscription.document,
            operationName: subscription.operationName,
            variables: subscription.variables.toJson().stripNullValues(),
            parserFn: (d) => _parseListOfT(d, LastRecordedByInfo.fromJson),
          ),
        );
      },
    );
  }
}
