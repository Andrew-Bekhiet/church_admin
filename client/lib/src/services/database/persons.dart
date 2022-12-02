part of '../database_service.dart';

class PersonsQueries {
  const PersonsQueries._();

  Future<FetchPolicy> getFetchPolicy() async =>
      await CADatabaseRepository.isConnectedToInternet()
          ? FetchPolicy.networkOnly
          : FetchPolicy.cacheAndNetwork;

  Future<Person?> deletePerson({
    required String personId,
  }) {
    return GetIt.I<GraphQLClient>()
        .mutate(
          MutationOptions(
            document: documentNodeMutationdeletePerson,
            operationName: 'deletePerson',
            variables: Variables$Mutation$deletePerson(
              personId: UuidValue(personId),
            ).toJson(),
            parserFn: (d) => Person.fromJson(castAllHashMaps(d.values.first)),
          ),
        )
        .then(exceptionsMiddleware)
        .then((value) => value.parsedData);
  }

  Future<Person> getFullPersonData({
    required String personId,
  }) async {
    final watchQuery = GetIt.I<GraphQLClient>().watchQuery(
      WatchQueryOptions(
        eagerlyFetchResults: true,
        fetchResults: true,
        document: documentNodeQuerygetFullPersonData,
        operationName: 'getFullPersonData',
        variables:
            Variables$Query$getFullPersonData(id: UuidValue(personId)).toJson(),
        parserFn: (d) => Person.fromJson(castAllHashMaps(d.values.first)),
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

  Stream<Person?> getMorePersonData({
    required String personId,
    String? areasAfter,
    String? classesAfter,
    String? groupsAfter,
    String? servicesAfter,
  }) {
    final watchQuery = GetIt.I<GraphQLClient>().watchQuery(
      WatchQueryOptions(
        eagerlyFetchResults: false,
        fetchResults: true,
        document: documentNodeQuerygetMorePersonData,
        operationName: 'getMorePersonData',
        variables: Variables$Query$getMorePersonData(
          id: UuidValue(personId),
          areasAfter: areasAfter,
          classesAfter: classesAfter,
          groupsAfter: groupsAfter,
          servicesAfter: servicesAfter,
        ).toJson(),
        parserFn: (d) => Person.fromJson(castAllHashMaps(d.values.first)),
      ),
    );
    watchQuery.onData([
      (r) async =>
          r?.source == QueryResultSource.cache && watchQuery.isRefetchSafe
              ? watchQuery.refetch()
              : null
    ]);

    return watchQuery.stream
        .map(exceptionsMiddleware)
        .map((value) => value.parsedData!);
  }

  Stream<Person?> getPersonClassesAndGroups({
    required String personId,
  }) {
    final watchQuery = GetIt.I<GraphQLClient>().watchQuery(
      WatchQueryOptions(
        eagerlyFetchResults: false,
        fetchResults: true,
        document: documentNodeQuerygetPersonClassesAndGroups,
        operationName: 'getPersonClassesAndGroups',
        variables:
            Variables$Query$getPersonClassesAndGroups(id: UuidValue(personId))
                .toJson(),
        parserFn: (d) => Person.fromJson(castAllHashMaps(d.values.first)),
      ),
    );
    watchQuery.onData([
      (r) async =>
          r?.source == QueryResultSource.cache && watchQuery.isRefetchSafe
              ? watchQuery.refetch()
              : null
    ]);

    return watchQuery.stream
        .map(exceptionsMiddleware)
        .map((value) => value.parsedData);
  }

  Future<Iterable<Person>> getPersonsConfessionWarning({
    required DateTime date,
  }) {
    return getPersonsNames(
      where: [
        Input$PersonsBoolExp(
          confessionHistory_aggregate:
              Input$history_confession_history_aggregate_bool_exp(
            count: Input$history_confession_history_aggregate_bool_exp_count(
              predicate: Input$IntComparisonExp(
                $_neq: 0,
              ),
            ),
          ),
          $_not: Input$PersonsBoolExp(
            confessionHistory: Input$HistoryConfessionHistoryBoolExp(
              dayId: Input$DateComparisonExp(
                $_gt: date,
              ),
            ),
          ),
        ),
      ],
    );
  }

  Future<Iterable<Person>> getPersonsKodasWarning({
    required DateTime date,
  }) {
    return getPersonsNames(
      where: [
        Input$PersonsBoolExp(
          kodasHistory_aggregate:
              Input$history_kodas_history_aggregate_bool_exp(
            count: Input$history_kodas_history_aggregate_bool_exp_count(
              predicate: Input$IntComparisonExp(
                $_neq: 0,
              ),
            ),
          ),
          $_not: Input$PersonsBoolExp(
            kodasHistory: Input$HistoryKodasHistoryBoolExp(
              dayId: Input$DateComparisonExp(
                $_gt: date,
              ),
            ),
          ),
        ),
      ],
    );
  }

  Future<Iterable<Person>> getPersonsMeetingWarning({
    required DateTime date,
  }) {
    return getPersonsNames(
      where: [
        Input$PersonsBoolExp(
          attendanceHistory_aggregate:
              Input$history_attendance_history_aggregate_bool_exp(
            count: Input$history_attendance_history_aggregate_bool_exp_count(
              predicate: Input$IntComparisonExp(
                $_neq: 0,
              ),
            ),
          ),
          $_not: Input$PersonsBoolExp(
            attendanceHistory: Input$HistoryAttendanceHistoryBoolExp(
              dayId: Input$DateComparisonExp(
                $_gt: date,
              ),
            ),
          ),
        ),
      ],
    );
  }

  Future<Iterable<Person>> getBirthdayPersons({
    required DateTime date,
  }) {
    return getPersonsNames(
      where: [
        Input$PersonsBoolExp(
          birthday: Input$StringComparisonExp(
            //2022-06-25T12:30:00.440Z => 06-25
            $_eq: date.toIso8601String().split('-').sublist(1, 3).join('-'),
          ),
        ),
      ],
    );
  }

  Future<Iterable<Person>> getPersonsVisitWarning({
    required DateTime date,
  }) {
    return getPersonsNames(
      where: [
        Input$PersonsBoolExp(
          visitHistory_aggregate:
              Input$history_visit_history_aggregate_bool_exp(
            count: Input$history_visit_history_aggregate_bool_exp_count(
              predicate: Input$IntComparisonExp(
                $_neq: 0,
              ),
            ),
          ),
          $_not: Input$PersonsBoolExp(
            visitHistory: Input$HistoryVisitHistoryBoolExp(
              time: Input$TimestamptzComparisonExp(
                $_gt: date,
              ),
            ),
          ),
        ),
      ],
    );
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

    final mutation = GetIt.I<GraphQLClient>().mutate(
      MutationOptions(
        document: documentNodeMutationinsertPerson,
        operationName: 'insertPerson',
        variables: Variables$Mutation$insertPerson(
          newPerson: Input$PersonsInsertInput.fromJson(
            {
              ...delta,
              'services': Input$PersonsServicesArrRelInsertInput(
                data: (newPerson.services ?? [])
                    .map(
                      (e) => Input$PersonsServicesInsertInput(
                        serviceId: e.id.toUuid(),
                      ),
                    )
                    .toList(),
              ).toJson(),
              'groups': Input$PersonsGroupsArrRelInsertInput(
                data: (newPerson.groups ?? [])
                    .map(
                      (e) => Input$PersonsGroupsInsertInput(
                        groupId: e.id.toUuid(),
                      ),
                    )
                    .toList(),
              ).toJson(),
              'tags': Input$PersonsTagsArrRelInsertInput(
                data: (newPerson.tags ?? [])
                    .map(
                      (e) => Input$PersonsTagsInsertInput(
                        tagId: e.id.toUuid(),
                      ),
                    )
                    .toList(),
              ).toJson(),
            },
          ),
        ).toJson(), //todo: test .stripNullValues(updateColumns),
        parserFn: (d) => Person.fromJson(castAllHashMaps(d.values.first)),
      ),
    );

    return mutation
        .then(exceptionsMiddleware)
        .then((value) => value.parsedData!);
  }

  GQLPaginatableStream<LastRecordedByInfo> paginatePersonCallHistory({
    required String personId,
  }) {
    return GQLPaginatableStream<LastRecordedByInfo>(
      subscriptionStreamCallback: (event) {
        final instance = event.instance;
        final offset = event.offset;

        return GetIt.I<GraphQLClient>().subscribe(
          SubscriptionOptions(
            document: documentNodeSubscriptioncallHistory,
            operationName: 'callHistory',
            variables: Variables$Subscription$callHistory(
              personId: UuidValue(personId),
              limit: instance.limit + 1,
              where: [
                if (offset > 0)
                  Input$HistoryCallHistoryBoolExp(
                    time: Input$TimestamptzComparisonExp(
                      $_lt: instance
                          .currentValue[(offset - 1) * instance.limit +
                              instance.limit -
                              1]
                          .time,
                    ),
                  ),
              ],
            ).toJson(),
            parserFn: (d) => _parseListOfT(d, LastRecordedByInfo.fromJson),
          ),
        );
      },
    );
  }

  GQLPaginatableStream<LastRecordedByInfo> paginatePersonClassAttendance({
    required String personId,
    required String classId,
    bool asAdmin = false,
  }) {
    return paginatePersonAttendance(
      vars: (offset, instance) => Variables$Subscription$personAttendance(
        limit: instance.limit + 1,
        where: [
          Input$HistoryAttendanceHistoryBoolExp(
            personId: Input$UuidComparisonExp($_eq: personId.toUuid()),
          ),
          Input$HistoryAttendanceHistoryBoolExp(
            $class: Input$ClassesBoolExp(
              id: Input$UuidComparisonExp($_eq: classId.toUuid()),
            ),
          ),
          Input$HistoryAttendanceHistoryBoolExp(
            asAdmin: Input$BooleanComparisonExp($_eq: asAdmin),
          ),
          if (offset > 0)
            Input$HistoryAttendanceHistoryBoolExp(
              time: Input$TimestampComparisonExp(
                $_lt: instance
                    .currentValue[
                        (offset - 1) * instance.limit + instance.limit - 1]
                    .time,
              ),
            ),
        ],
      ),
    );
  }

  GQLPaginatableStream<LastRecordedByInfo> paginatePersonConfessionHistory({
    required String personId,
  }) {
    return GQLPaginatableStream<LastRecordedByInfo>(
      subscriptionStreamCallback: (event) {
        final instance = event.instance;
        final offset = event.offset;

        return GetIt.I<GraphQLClient>().subscribe(
          SubscriptionOptions(
            document: documentNodeSubscriptionconfessionHistory,
            operationName: 'confessionHistory',
            variables: Variables$Subscription$confessionHistory(
              personId: UuidValue(personId),
              limit: instance.limit + 1,
              where: [
                if (offset > 0)
                  Input$HistoryConfessionHistoryBoolExp(
                    dayId: Input$DateComparisonExp(
                      $_lt: instance
                          .currentValue[(offset - 1) * instance.limit +
                              instance.limit -
                              1]
                          .time,
                    ),
                  ),
              ],
            ).toJson(),
            parserFn: (d) => _parseListOfT(d, LastRecordedByInfo.fromJson),
          ),
        );
      },
    );
  }

  GQLPaginatableStream<LastRecordedByInfo> paginatePersonEditHistory({
    required String personId,
  }) {
    return GQLPaginatableStream<LastRecordedByInfo>(
      subscriptionStreamCallback: (event) {
        final instance = event.instance;
        final offset = event.offset;

        return GetIt.I<GraphQLClient>().subscribe(
          SubscriptionOptions(
            document: documentNodeSubscriptionpersonEditHistory,
            operationName: 'personEditHistory',
            variables: Variables$Subscription$personEditHistory(
              personId: UuidValue(personId),
              limit: instance.limit + 1,
              where: [
                if (offset > 0)
                  Input$HistoryEditHistoryBoolExp(
                    time: Input$TimestamptzComparisonExp(
                      $_lt: instance
                          .currentValue[(offset - 1) * instance.limit +
                              instance.limit -
                              1]
                          .time,
                    ),
                  ),
              ],
            ).toJson(),
            parserFn: (d) => _parseListOfT(d, LastRecordedByInfo.fromJson),
          ),
        );
      },
    );
  }

  GQLPaginatableStream<LastRecordedByInfo> paginatePersonGroupAttendance({
    required String personId,
    required String groupId,
    bool asAdmin = false,
  }) {
    return paginatePersonAttendance(
      vars: (offset, instance) => Variables$Subscription$personAttendance(
        limit: instance.limit + 1,
        where: [
          Input$HistoryAttendanceHistoryBoolExp(
            personId: Input$UuidComparisonExp($_eq: personId.toUuid()),
          ),
          Input$HistoryAttendanceHistoryBoolExp(
            groupId: Input$UuidComparisonExp($_eq: groupId.toUuid()),
          ),
          Input$HistoryAttendanceHistoryBoolExp(
            asAdmin: Input$BooleanComparisonExp($_eq: asAdmin),
          ),
          if (offset > 0)
            Input$HistoryAttendanceHistoryBoolExp(
              time: Input$TimestampComparisonExp(
                $_lt: instance
                    .currentValue[
                        (offset - 1) * instance.limit + instance.limit - 1]
                    .time,
              ),
            ),
        ],
      ),
    );
  }

  GQLPaginatableStream<LastRecordedByInfo> paginatePersonKodasHistory({
    required String personId,
  }) {
    return GQLPaginatableStream<LastRecordedByInfo>(
      subscriptionStreamCallback: (event) {
        final instance = event.instance;
        final offset = event.offset;

        return GetIt.I<GraphQLClient>().subscribe(
          SubscriptionOptions(
            document: documentNodeSubscriptionkodasHistory,
            operationName: 'kodasHistory',
            variables: Variables$Subscription$kodasHistory(
              personId: UuidValue(personId),
              limit: instance.limit + 1,
              where: [
                if (offset > 0)
                  Input$HistoryKodasHistoryBoolExp(
                    dayId: Input$DateComparisonExp(
                      $_lt: instance
                          .currentValue[(offset - 1) * instance.limit +
                              instance.limit -
                              1]
                          .time,
                    ),
                  ),
              ],
            ).toJson(),
            parserFn: (d) => _parseListOfT(d, LastRecordedByInfo.fromJson),
          ),
        );
      },
    );
  }

  GQLPaginatableStream<LastRecordedByInfo> paginatePersonServiceAttendance({
    required String personId,
    required String serviceId,
    bool asAdmin = false,
  }) {
    return paginatePersonAttendance(
      vars: (offset, instance) => Variables$Subscription$personAttendance(
        limit: instance.limit + 1,
        where: [
          Input$HistoryAttendanceHistoryBoolExp(
            personId: Input$UuidComparisonExp($_eq: personId.toUuid()),
          ),
          Input$HistoryAttendanceHistoryBoolExp(
            serviceId: Input$UuidComparisonExp($_eq: serviceId.toUuid()),
          ),
          Input$HistoryAttendanceHistoryBoolExp(
            asAdmin: Input$BooleanComparisonExp($_eq: asAdmin),
          ),
          if (offset > 0)
            Input$HistoryAttendanceHistoryBoolExp(
              time: Input$TimestampComparisonExp(
                $_lt: instance
                    .currentValue[
                        (offset - 1) * instance.limit + instance.limit - 1]
                    .time,
              ),
            ),
        ],
      ),
    );
  }

  GQLPaginatableStream<LastRecordedByInfo> paginatePersonVisitHistory({
    required String personId,
  }) {
    return GQLPaginatableStream<LastRecordedByInfo>(
      subscriptionStreamCallback: (event) {
        final instance = event.instance;
        final offset = event.offset;

        return GetIt.I<GraphQLClient>().subscribe(
          SubscriptionOptions(
            document: documentNodeSubscriptionvisitHistory,
            operationName: 'visitHistory',
            variables: Variables$Subscription$visitHistory(
              personId: UuidValue(personId),
              limit: instance.limit + 1,
              where: [
                if (offset > 0)
                  Input$HistoryVisitHistoryBoolExp(
                    time: Input$TimestamptzComparisonExp(
                      $_lt: instance
                          .currentValue[(offset - 1) * instance.limit +
                              instance.limit -
                              1]
                          .time,
                    ),
                  ),
              ],
            ).toJson(),
            parserFn: (d) => _parseListOfT(d, LastRecordedByInfo.fromJson),
          ),
        );
      },
    );
  }

  Stream<Person?> streamPerson({
    required String personId,
  }) {
    return GetIt.I<GraphQLClient>()
        .subscribe(
          SubscriptionOptions(
            document: documentNodeSubscriptionwatchPerson,
            operationName: 'watchPerson',
            variables:
                Variables$Subscription$watchPerson(id: UuidValue(personId))
                    .toJson(),
            parserFn: (d) => d.values.first != null
                ? Person.fromJson(castAllHashMaps(d.values.first))
                : null,
          ),
        )
        .map(exceptionsMiddleware)
        .map((p) => p.parsedData);
  }

  Stream<Person?> getPersonAnalysis({
    required String personId,
    required PersonAnalysisOptions options,
  }) {
    final watchQuery = GetIt.I<GraphQLClient>().watchQuery(
      WatchQueryOptions(
        fetchResults: true,
        errorPolicy: ErrorPolicy.all,
        eagerlyFetchResults: false,
        document: documentNodeQueryanalyzePerson,
        operationName: 'analyzePerson',
        variables: Variables$Query$analyzePerson(
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
        ).toJson(),
        parserFn: (d) => Person.fromJson(castAllHashMaps(d.values.first)),
      ),
    );
    watchQuery.onData([
      (r) async =>
          r?.source == QueryResultSource.cache && watchQuery.isRefetchSafe
              ? watchQuery.refetch()
              : null
    ]);

    return watchQuery.stream.map((e) {
      if (e.data == null && e.hasException) throw e.exception!;

      return e;
    }).map((value) => value.parsedData);
  }

  GQLPaginatableStream<Person> paginatePersons({
    Stream<String?>? searchQuery,
    String? secondLineFieldName,
  }) {
    return GQLPaginatableStream<Person>(
      searchQuery: searchQuery,
      subscriptionStreamCallback: (event) {
        final instance = event.instance;
        final offset = event.offset;
        final search = event.search;
        final lastSearch = event.lastSearch;

        return GetIt.I<GraphQLClient>().subscribe(
          SubscriptionOptions(
            document: secondLineFieldName == null
                ? documentNodeSubscriptiongetPersonsStream
                : addSelectionFields(
                    {
                      'persons': [
                        FieldNode(name: NameNode(value: secondLineFieldName))
                      ]
                    },
                    documentNodeSubscriptiongetPersonsStream,
                  ),
            operationName: 'getPersonsStream',
            variables: Variables$Subscription$getPersonsStream(
              limit: instance.limit + 1,
              where: [
                if (search != null && search.isNotEmpty)
                  Input$PersonsBoolExp(
                    name: Input$StringComparisonExp($_ilike: '%$search%'),
                  ),
                if (lastSearch == search && offset > 0)
                  Input$PersonsBoolExp(
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
            parserFn: (d) => _parseListOfT(d, Person.fromJson),
          ),
        );
      },
    );
  }

  Stream<Map<Type, Set<Object>>?> getPersonsGeolocations({
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
    assert(
      getAreas || getStreets || getFamilies || getPersons,
      'At lease one type should be fetched',
    );

    final watchQuery = GetIt.I<GraphQLClient>().watchQuery(
      WatchQueryOptions(
        fetchResults: true,
        eagerlyFetchResults: false,
        document: getAreas && getStreets && getFamilies && getPersons
            ? documentNodeQuerypersonsGeolocations
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
                  documentNodeQuerypersonsGeolocations,
                ),
              ),
        operationName: 'personsGeolocations',
        variables: Variables$Query$personsGeolocations(
          areasIds: areasIds,
          familiesIds: familiesIds,
          streetsIds: streetsIds,
          personsConditions: [
            if (personId != null)
              Input$PersonsBoolExp(
                id: Input$UuidComparisonExp(
                  $_eq: UuidValue(personId),
                ),
              ),
            if (areasIds.isNotEmpty ||
                streetsIds.isNotEmpty ||
                familiesIds.isNotEmpty)
              Input$PersonsBoolExp(
                $_or: [
                  if (areasIds.isNotEmpty)
                    Input$PersonsBoolExp(
                      areas: Input$AreasBoolExp(
                        id: Input$UuidComparisonExp(
                          $_in: areasIds,
                        ),
                      ),
                    ),
                  if (streetsIds.isNotEmpty)
                    Input$PersonsBoolExp(
                      streets: Input$StreetsBoolExp(
                        id: Input$UuidComparisonExp(
                          $_in: streetsIds,
                        ),
                      ),
                    ),
                  if (familiesIds.isNotEmpty)
                    Input$PersonsBoolExp(
                      family: Input$FamiliesBoolExp(
                        id: Input$UuidComparisonExp(
                          $_in: familiesIds,
                        ),
                      ),
                    ),
                ],
              ),
            if (servicesIds.isNotEmpty ||
                classesIds.isNotEmpty ||
                groupsIds.isNotEmpty)
              Input$PersonsBoolExp(
                $_or: [
                  if (servicesIds.isNotEmpty)
                    Input$PersonsBoolExp(
                      services: Input$PersonsServicesBoolExp(
                        serviceId: Input$UuidComparisonExp(
                          $_in: servicesIds,
                        ),
                      ),
                    ),
                  if (classesIds.isNotEmpty)
                    Input$PersonsBoolExp(
                      classes: Input$ClassesBoolExp(
                        id: Input$UuidComparisonExp(
                          $_in: classesIds,
                        ),
                      ),
                    ),
                  if (groupsIds.isNotEmpty)
                    Input$PersonsBoolExp(
                      groups: Input$PersonsGroupsBoolExp(
                        groupId: Input$UuidComparisonExp(
                          $_in: groupsIds,
                        ),
                      ),
                    ),
                ],
              ),
          ],
        ).toJson(),
      ),
    );
    watchQuery.onData([
      (r) async =>
          r?.source == QueryResultSource.cache && watchQuery.isRefetchSafe
              ? watchQuery.refetch()
              : null
    ]);

    return watchQuery.stream.asyncMap(
      (value) async => compute(
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
          (e) => Input$PersonsServicesInsertInput(
            personId: newPerson.id.toUuid(),
            serviceId: e.id.toUuid(),
          ),
        )
        .toList();
    final deleteGroups = groupsDiff.item1.map((g) => g.id.toUuid()).toList();
    final newGroups = groupsDiff.item2
        .map(
          (g) => Input$PersonsGroupsInsertInput(
            personId: newPerson.id.toUuid(),
            groupId: g.id.toUuid(),
          ),
        )
        .toList();
    final deleteTags = tagsDiff.item1.map((t) => t.id.toUuid()).toList();
    final newTags = tagsDiff.item2
        .map(
          (t) => Input$PersonsTagsInsertInput(
            personId: newPerson.id.toUuid(),
            tagId: t.id.toUuid(),
          ),
        )
        .toList();
    //

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
    final variables = Variables$Mutation$updatePerson(
      personId: newPerson.id.toUuid(),
      newPerson: Input$PersonsSetInput.fromJson(delta),
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
    );

    final mutation = GetIt.I<GraphQLClient>().mutate(
      MutationOptions(
        document: fieldsToRemove.isEmpty
            ? documentNodeMutationupdatePerson
            : removeVariables(
                varsToRemove,
                removeTopFields(
                  fieldsToRemove,
                  documentNodeMutationupdatePerson,
                ),
              ),
        operationName: 'updatePerson',
        variables: {
          // todo: test
          for (final kv in variables
              .toJson()
              // .stripNullValues(delta.keys.toSet())
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

  Future<Person?> updatePersonLastCall({
    required String personId,
    required DateTime lastCall,
  }) {
    return GetIt.I<GraphQLClient>()
        .mutate(
          MutationOptions(
            document: documentNodeMutationinsertPersonLastCall,
            operationName: 'insertPersonLastCall',
            variables: Variables$Mutation$insertPersonLastCall(
              personId: UuidValue(personId),
              lastCall: lastCall,
            ).toJson(),
            parserFn: _parseDeepPersonOrNull,
          ),
        )
        .then(exceptionsMiddleware)
        .then((value) => value.parsedData);
  }

  Future<Person?> updatePersonLastConfession({
    required String personId,
    required DateTime lastConfession,
  }) {
    return GetIt.I<GraphQLClient>()
        .mutate(
          MutationOptions(
            document: documentNodeMutationinsertPersonLastConfession,
            operationName: 'insertPersonLastConfession',
            variables: Variables$Mutation$insertPersonLastConfession(
              personId: UuidValue(personId),
              lastConfession: lastConfession,
            ).toJson(),
            parserFn: _parseDeepPersonOrNull,
          ),
        )
        .then(exceptionsMiddleware)
        .then((value) => value.parsedData);
  }

  Future<Person?> updatePersonLastKodas({
    required String personId,
    required DateTime lastKodas,
  }) {
    return GetIt.I<GraphQLClient>()
        .mutate(
          MutationOptions(
            document: documentNodeMutationinsertPersonLastKodas,
            operationName: 'updatePersonLastKodas',
            variables: Variables$Mutation$insertPersonLastKodas(
              personId: UuidValue(personId),
              lastKodas: lastKodas,
            ).toJson(),
            parserFn: _parseDeepPersonOrNull,
          ),
        )
        .then(exceptionsMiddleware)
        .then((value) => value.parsedData);
  }

  Future<Person?> updatePersonLastVisit({
    required String personId,
    required DateTime lastVisit,
  }) {
    return GetIt.I<GraphQLClient>()
        .mutate(
          MutationOptions(
            document: documentNodeMutationinsertPersonLastVisit,
            operationName: 'insertPersonLastVisit',
            variables: Variables$Mutation$insertPersonLastVisit(
              personId: UuidValue(personId),
              lastVisit: lastVisit,
            ).toJson(),
            parserFn: _parseDeepPersonOrNull,
          ),
        )
        .then(exceptionsMiddleware)
        .then((value) => value.parsedData);
  }

  Future<Person?> updatePersonSpiritData({
    required String personId,
    required DateTime lastConfession,
    required DateTime lastKodas,
  }) async {
    return GetIt.I<GraphQLClient>()
        .mutate(
          MutationOptions(
            document: documentNodeMutationupdatePersonSpiritData,
            operationName: 'updatePersonSpiritData',
            variables: Variables$Mutation$updatePersonSpiritData(
              personId: UuidValue(personId),
              lastKodas: lastKodas,
              lastConfession: lastConfession,
            ).toJson(),
            parserFn: (d) {
              if (d.values.every((e) => e == null)) return null;

              return Person.fromJson(
                castAllHashMaps(
                  (d.values.first as Map?)?.values.first ??
                      (d.values.last as Map).values.first,
                ),
              );
            },
          ),
        )
        .then(exceptionsMiddleware)
        .then((value) => value.parsedData);
  }

  Future<Iterable<Person>> getPersonsNames({
    List<Input$PersonsBoolExp>? where,
    int? limit,
    List<Input$PersonsOrderBy>? orderBy,
  }) async {
    return GetIt.I<GraphQLClient>()
        .query(
          QueryOptions(
            fetchPolicy: await getFetchPolicy(),
            document: documentNodeQuerygetPersonsNames,
            operationName: 'getPersonsNames',
            variables: Variables$Query$getPersonsNames(
              where: where,
              limit: limit,
              orderBy: orderBy,
            ).toJson(),
            parserFn: (d) => _parseListOfT(d, Person.fromJson),
          ),
        )
        .then(exceptionsMiddleware)
        .then((u) => u.parsedData ?? []);
  }

  GQLPaginatableStream<LastRecordedByInfo> paginatePersonAttendance({
    required Variables$Subscription$personAttendance Function(
      int,
      GQLPaginatableStream<LastRecordedByInfo>,
    )
        vars,
    int? limit,
  }) {
    return GQLPaginatableStream<LastRecordedByInfo>(
      limit: limit ?? 100,
      subscriptionStreamCallback: (event) {
        return GetIt.I<GraphQLClient>().subscribe(
          SubscriptionOptions(
            document: documentNodeSubscriptionpersonAttendance,
            operationName: 'personAttendance',
            variables: vars(event.offset, event.instance).toJson(),
            parserFn: (d) => _parseListOfT(d, LastRecordedByInfo.fromJson),
          ),
        );
      },
    );
  }

  Person? _parseDeepPersonOrNull(Map<String, dynamic> d) {
    if (d.values.first == null) return null;

    return Person.fromJson(
      castAllHashMaps(
        (d.values.first as Map).values.first as Map<String, dynamic>,
      ),
    );
  }
}
