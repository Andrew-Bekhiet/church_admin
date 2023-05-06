import 'package:church_admin/church_admin.dart';
import 'package:church_admin/src/services/database/gql_definintions/persons/persons_notifications_queries.dart';
import 'package:gql/ast.dart';
import 'package:graphql/client.dart';
import 'package:uuid/uuid.dart';

import 'persons/__generated__/mutations.gql.dart';
import 'persons/__generated__/queries.gql.dart';
import 'persons/__generated__/subscriptions.gql.dart';
import 'persons/helpers.dart';

class PersonsDAO extends DAOBase<Person> {
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

  Future<Person?> updatePerson({
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
        parserFn: db.parser.singleOrNullParser(Person.fromJson),
      ),
    );
  }

  Future<Person?> deletePerson({
    required String personId,
  }) {
    final mutationOptions = MutationOptions(
      document: documentNodeMutationdeletePerson,
      variables: Variables_Mutation_deletePerson(
        personId: personId.toUuid(),
      ).toJson(),
      parserFn: db.parser.singleOrNullParser(Person.fromJson),
    );

    return graphQLClient.mutateAndReturnParsed(mutationOptions);
  }

  Stream<Person?> streamSingleById({
    required String id,
    int? servicesLimit = 6,
    int? classesLimit = 6,
    int? groupsLimit = 6,
  }) {
    return graphQLClient.subscribeAndReturnParsedNullable(
      SubscriptionOptions(
        document: documentNodeSubscriptionwatchPerson,
        operationName: 'watchPerson',
        variables: Variables_Subscription_watchPerson(
          id: id.toUuid(),
          servicesLimit: servicesLimit,
          classesLimit: classesLimit,
          groupsLimit: groupsLimit,
        ).toJson(),
        parserFn: db.parser.singleOrNullParser(Person.fromJson),
      ),
    );
  }

  @override
  GQLPaginatableStream<Person> streamAll({
    Stream<String?>? searchQuery,
    String? secondLineFieldName,
    List<Input_PersonsBoolExp>? where,
  }) {
    return GQLPaginatableStream<Person>(
      searchQuery: searchQuery,
      subscriptionStreamCallback: (event) {
        final defaultSearchVars = graphQLClient.getDefaultSearchVars(
          event,
          Variables_Subscription_watchAllPersons.new,
          Input_PersonsBoolExp.new,
        );

        final variables = defaultSearchVars.copyWith(
          where: [
            if (where != null) ...where,
            if (defaultSearchVars.where != null) ...defaultSearchVars.where!,
          ],
        ).toJson();

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
            variables: variables,
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
          Variables_Query_personServicesClassesGroups(id: personId.toUuid())
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
    List<UuidValue> storesIds = const [],
    List<UuidValue> servicesIds = const [],
    List<UuidValue> classesIds = const [],
    List<UuidValue> groupsIds = const [],
    bool getAreas = false,
    bool getStreets = false,
    bool getFamilies = false,
    bool getStores = false,
    bool getPersons = false,
  }) {
    assert(
      personId != null ||
          areasIds.isNotEmpty ||
          streetsIds.isNotEmpty ||
          servicesIds.isNotEmpty ||
          classesIds.isNotEmpty ||
          groupsIds.isNotEmpty ||
          familiesIds.isNotEmpty ||
          storesIds.isNotEmpty,
      'At least one condition should be given',
    );
    assert(
      getAreas || getStreets || getFamilies || getStores || getPersons,
      'At lease one type should be fetched',
    );

    final queryOptions = QueryOptions(
      document: documentNodeQuerypersonsGeolocations,
      operationName: 'personsGeolocations',
      variables: Variables_Query_personsGeolocations(
        getAreas: getAreas,
        getStreets: getStreets,
        getFamilies: getFamilies,
        getStores: getStores,
        getPersons: getPersons,
        areasIds: areasIds,
        familiesIds: familiesIds,
        storesIds: storesIds,
        streetsIds: streetsIds,
        personsConditions: [
          if (personId != null)
            Input_PersonsBoolExp(
              id: Input_UuidComparisonExp(
                $_eq: personId.toUuid(),
              ),
            ),
          if (areasIds.isNotEmpty ||
              streetsIds.isNotEmpty ||
              familiesIds.isNotEmpty)
            Input_PersonsBoolExp(
              $_or: [
                if (areasIds.isNotEmpty)
                  Input_PersonsBoolExp(
                    areas: Input_AreasBoolExp(
                      id: Input_UuidComparisonExp(
                        $_in: areasIds,
                      ),
                    ),
                  ),
                if (streetsIds.isNotEmpty)
                  Input_PersonsBoolExp(
                    streets: Input_StreetsBoolExp(
                      id: Input_UuidComparisonExp(
                        $_in: streetsIds,
                      ),
                    ),
                  ),
                if (familiesIds.isNotEmpty)
                  Input_PersonsBoolExp(
                    family: Input_FamiliesBoolExp(
                      id: Input_UuidComparisonExp(
                        $_in: familiesIds,
                      ),
                    ),
                  ),
              ],
            ),
          if (servicesIds.isNotEmpty ||
              classesIds.isNotEmpty ||
              groupsIds.isNotEmpty)
            Input_PersonsBoolExp(
              $_or: [
                if (servicesIds.isNotEmpty)
                  Input_PersonsBoolExp(
                    services: Input_PersonsServicesBoolExp(
                      serviceId: Input_UuidComparisonExp(
                        $_in: servicesIds,
                      ),
                    ),
                  ),
                if (classesIds.isNotEmpty)
                  Input_PersonsBoolExp(
                    classes: Input_ClassesBoolExp(
                      id: Input_UuidComparisonExp(
                        $_in: classesIds,
                      ),
                    ),
                  ),
                if (groupsIds.isNotEmpty)
                  Input_PersonsBoolExp(
                    groups: Input_PersonsGroupsBoolExp(
                      groupId: Input_UuidComparisonExp(
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
    List<Input_HistoryAttendanceHistoryBoolExp>? where,
  }) {
    return paginatePersonAttendance(
      vars: (offset, instance) => Variables_Subscription_personAttendance(
        limit: instance.limit + 1,
        where: [
          Input_HistoryAttendanceHistoryBoolExp(
            personId: Input_UuidComparisonExp($_eq: personId.toUuid()),
          ),
          Input_HistoryAttendanceHistoryBoolExp(
            $class: Input_ClassesBoolExp(
              id: Input_UuidComparisonExp($_eq: classId.toUuid()),
            ),
          ),
          Input_HistoryAttendanceHistoryBoolExp(
            asAdmin: Input_BooleanComparisonExp($_eq: asAdmin),
          ),
          if (where != null) ...where,
          if (offset > 0)
            Input_HistoryAttendanceHistoryBoolExp(
              time: Input_TimestampComparisonExp(
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
    List<Input_HistoryAttendanceHistoryBoolExp>? where,
  }) {
    return paginatePersonAttendance(
      vars: (offset, instance) => Variables_Subscription_personAttendance(
        limit: instance.limit + 1,
        where: [
          Input_HistoryAttendanceHistoryBoolExp(
            personId: Input_UuidComparisonExp($_eq: personId.toUuid()),
          ),
          Input_HistoryAttendanceHistoryBoolExp(
            groupId: Input_UuidComparisonExp($_eq: groupId.toUuid()),
          ),
          Input_HistoryAttendanceHistoryBoolExp(
            asAdmin: Input_BooleanComparisonExp($_eq: asAdmin),
          ),
          if (where != null) ...where,
          if (offset > 0)
            Input_HistoryAttendanceHistoryBoolExp(
              time: Input_TimestampComparisonExp(
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
    List<Input_HistoryAttendanceHistoryBoolExp>? where,
  }) {
    return paginatePersonAttendance(
      vars: (offset, instance) => Variables_Subscription_personAttendance(
        limit: instance.limit + 1,
        where: [
          Input_HistoryAttendanceHistoryBoolExp(
            personId: Input_UuidComparisonExp($_eq: personId.toUuid()),
          ),
          Input_HistoryAttendanceHistoryBoolExp(
            serviceId: Input_UuidComparisonExp($_eq: serviceId.toUuid()),
          ),
          Input_HistoryAttendanceHistoryBoolExp(
            asAdmin: Input_BooleanComparisonExp($_eq: asAdmin),
          ),
          if (where != null) ...where,
          if (offset > 0)
            Input_HistoryAttendanceHistoryBoolExp(
              time: Input_TimestampComparisonExp(
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
    required Variables_Subscription_personAttendance Function(
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
      variables: Variables_Query_personHistoryAnalysis(
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
        variables: Variables_Mutation_updatePersonSpiritData(
          personId: personId.toUuid(),
          lastKodas: lastKodas,
          lastConfession: lastConfession,
        ).toJson(),
        parserFn: db.parser.lastOrNullParser(Person.fromJson),
      ),
    );
  }
}
