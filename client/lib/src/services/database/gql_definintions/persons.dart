import 'package:church_admin/church_admin.dart';
import 'package:church_admin/graphql/__generated__/schema.graphql.dart';
import 'package:church_admin/src/services/database/gql_definintions/persons/persons_notifications_queries.dart';
import 'package:gql/ast.dart';
import 'package:graphql/client.dart';
import 'package:uuid/uuid.dart';

import 'persons/__generated__/mutations.graphql.dart';
import 'persons/__generated__/queries.graphql.dart';
import 'persons/__generated__/subscriptions.graphql.dart';
import 'persons/helpers.dart';

class PersonsDAO extends DAOBase {
  PersonsDAO({
    required super.db,
  });

  late final notificationsQueries = PersonsNotificationsQueries(db: db);

  Future<Person> insertPerson({
    required Person newPerson,
  }) {
    final insertHelper = PersonInsertHelper(newPerson: newPerson);

    return graphQLClient.mutateAndReturnParsed(
      MutationOptions(
        document: documentNodeMutationinsertPerson,
        operationName: 'insertPerson',
        variables: insertHelper.variables.toJson(),
        parserFn: db.parser.singleParser(Person.fromJson),
      ),
    );
  }

  Future<void> updatePerson({
    required Person oldPerson,
    required Person newPerson,
  }) {
    final updateHelper =
        PersonUpdateHelper(newPerson: newPerson, oldPerson: oldPerson);

    return graphQLClient.mutateAndReturnParsedNullable(
      MutationOptions(
        document: documentNodeMutationupdatePerson,
        operationName: 'updatePerson',
        variables: updateHelper.variables.toJson(),
        parserFn: (d) => null,
      ),
    );
  }

  Future<Person?> deletePerson({
    required String personId,
  }) {
    final mutationOptions = MutationOptions(
      document: documentNodeMutationdeletePerson,
      variables: Variables$Mutation$deletePerson(
        personId: personId.toUuid(),
      ).toJson(),
      parserFn: db.parser.singleOrNullParser(Person.fromJson),
    );

    return graphQLClient.mutateAndReturnParsed(mutationOptions);
  }

  Stream<Person?> watchPerson({
    required String personId,
    int? servicesLimit = 6,
    int? classesLimit = 6,
    int? groupsLimit = 6,
  }) {
    return graphQLClient.subscribeAndReturnParsedNullable(
      SubscriptionOptions(
        document: documentNodeSubscriptionwatchPerson,
        operationName: 'watchPerson',
        variables: Variables$Subscription$watchPerson(
          id: personId.toUuid(),
          servicesLimit: servicesLimit,
          classesLimit: classesLimit,
          groupsLimit: groupsLimit,
        ).toJson(),
        parserFn: db.parser.singleOrNullParser(Person.fromJson),
      ),
    );
  }

  GQLPaginatableStream<Person> paginatePersons({
    Stream<String?>? searchQuery,
    String? secondLineFieldName,
    Area? area,
  }) {
    return GQLPaginatableStream<Person>(
      searchQuery: searchQuery,
      subscriptionStreamCallback: (event) {
        final defaultSearchVars = graphQLClient.getDefaultSearchVars(
          event,
          Variables$Subscription$watchAllPersons.new,
          Input$PersonsBoolExp.new,
        );

        final variables = defaultSearchVars.copyWith(
          where: [
            if (area != null)
              Input$PersonsBoolExp(
                areas: Input$AreasBoolExp(
                  id: Input$UuidComparisonExp($_eq: area.id.toUuid()),
                ),
              ),
            ...defaultSearchVars.where ?? [],
          ],
        );

        return graphQLClient.subscribeAndReturnParsed(
          SubscriptionOptions(
            document: secondLineFieldName == null
                ? documentNodeSubscriptionwatchAllPersons
                : documentNodeSubscriptionwatchAllPersons.addSelectionFields(
                    {
                      'persons': [
                        FieldNode(name: NameNode(value: secondLineFieldName))
                      ]
                    },
                  ),
            operationName: 'watchAllPersons',
            variables: variables.toJson(),
            parserFn: db.parser.singleListParser(Person.fromJson),
          ),
        );
      },
    );
  }

  Future<Person?> personServicesClassesGroups({
    required String personId,
  }) {
    final queryOptions = QueryOptions(
      document: documentNodeQuerypersonServicesClassesGroups,
      operationName: 'personServicesClassesGroups',
      variables:
          Variables$Query$personServicesClassesGroups(id: personId.toUuid())
              .toJson(),
      parserFn: db.parser.singleOrNullParser(Person.fromJson),
    );

    return graphQLClient.queryAndReturnParsed(queryOptions);
  }

  Future<PersonsGeolocationsResponse?> personsGeolocations({
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

    final queryOptions = QueryOptions(
      document: documentNodeQuerypersonsGeolocations,
      operationName: 'personsGeolocations',
      variables: Variables$Query$personsGeolocations(
        getAreas: getAreas,
        getStreets: getStreets,
        getFamilies: getFamilies,
        getPersons: getPersons,
        areasIds: areasIds,
        familiesIds: familiesIds,
        streetsIds: streetsIds,
        personsConditions: [
          if (personId != null)
            Input$PersonsBoolExp(
              id: Input$UuidComparisonExp(
                $_eq: personId.toUuid(),
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
      parserFn: PersonsGeolocationsResponse.fromJson,
    );

    return graphQLClient.queryAndReturnParsedNullable(queryOptions);
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
        return graphQLClient.subscribeAndReturnParsed(
          SubscriptionOptions(
            document: documentNodeSubscriptionpersonAttendance,
            operationName: 'personAttendance',
            variables: vars(event.offset, event.instance).toJson(),
            parserFn: db.parser.singleListParser(LastRecordedByInfo.fromJson),
          ),
        );
      },
    );
  }

  Future<Person?> getPersonAnalysis({
    required String personId,
    required PersonAnalysisOptions options,
  }) {
    final queryOptions = QueryOptions(
      errorPolicy: ErrorPolicy.all,
      document: documentNodeQuerypersonHistoryAnalysis,
      operationName: 'personHistoryAnalysis',
      variables: Variables$Query$personHistoryAnalysis(
        personId: personId.toUuid(),
        dateFrom: options.dateRange.start,
        dateTo: options.dateRange.end,
        timeFrom: options.dateRange.start,
        timeTo: options.dateRange.end,
        classesIds: options.classes.map((e) => e.id.toUuid()).toList(),
        groupsIds: options.groups.map((e) => e.id.toUuid()).toList(),
        servicesIds: options.services.map((e) => e.id.toUuid()).toList(),
        confessionHistory: options.confessionAnalysis,
        kodasHistory: options.kodasAnalysis,
        callHistory: options.callHistoryAnalysis,
        visitHistory: options.visitHistoryAnalysis,
        editHistory: options.editHistoryAnalysis,
      ).toJson(),
      parserFn: db.parser.singleOrNullParser(Person.fromJson),
    );

    return graphQLClient.queryAndReturnParsedNullable(queryOptions);
  }

  Future<Person?> updatePersonSpiritData({
    required String personId,
    required DateTime lastConfession,
    required DateTime lastKodas,
  }) async {
    return graphQLClient.mutateAndReturnParsed(
      MutationOptions(
        document: documentNodeMutationupdatePersonSpiritData,
        operationName: 'updatePersonSpiritData',
        variables: Variables$Mutation$updatePersonSpiritData(
          personId: personId.toUuid(),
          lastKodas: lastKodas,
          lastConfession: lastConfession,
        ).toJson(),
        parserFn: db.parser.lastOrNullParser(Person.fromJson),
      ),
    );
  }
}
