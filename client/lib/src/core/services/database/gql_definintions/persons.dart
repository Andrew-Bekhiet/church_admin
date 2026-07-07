import 'package:church_admin/church_admin.dart';
import 'package:church_admin/src/core/services/database/gql_definintions/persons/__generated__/mutations.gql.dart';
import 'package:church_admin/src/core/services/database/gql_definintions/persons/__generated__/queries.gql.dart';
import 'package:church_admin/src/core/services/database/gql_definintions/persons/__generated__/subscriptions.gql.dart';
import 'package:church_admin/src/core/services/database/gql_definintions/persons/helpers.dart';
import 'package:church_admin/src/core/services/database/gql_definintions/persons/persons_notifications_queries.dart';
import 'package:graphql/client.dart';

class PersonsDAO extends FullCRUDDAO<Person> {
  PersonsDAO({required super.db}) : super(fromJson: Person.fromJson);

  late final notificationsQueries = PersonsNotificationsQueries(db: db);

  @override
  late final StreamAllConfig<Person> baseStreamAllConfig =
      const StreamAllConfig(
        document: documentNodeSubscriptionwatchAllPersons,
      );
  @override
  late final StreamCountConfig<Person> baseStreamCountConfig =
      const StreamCountConfig(
        document: documentNodeSubscriptionwatchPersonsCount,
      );
  @override
  final StreamSingleByIdConfig<Person> baseStreamSingleByIdConfig =
      const StreamSingleByIdConfig(
        document: documentNodeSubscriptionwatchPerson,
      );
  @override
  late final DeleteSingleByIdConfig<Person> baseDeleteSingleByIdConfig =
      DeleteSingleByIdConfig(
        document: documentNodeMutationdeletePerson,
        varsConstructor: _deleteSingleByIdVarsConstructor,
      );
  @override
  late final UpdateObjectConfig<Person> baseUpdateObjectConfig =
      UpdateObjectConfig(
        document: documentNodeMutationupdatePerson,
        varsConstructor: _updatePersonVarsConstructor,
        parserFn: db.parser.singleOrNullParser(fromJson, 'updatePersonsByPk'),
      );
  @override
  late final CreateObjectConfig<Person> baseCreateObjectConfig =
      CreateObjectConfig(
        document: documentNodeMutationinsertPerson,
        varsConstructor: _createPersonVarsConstructor,
      );

  Json _streamSingleByIdVarsConstructor({
    required UuidValue id,
    int? servicesLimit = 6,
    int? classesLimit = 6,
    int? groupsLimit = 6,
  }) => Variables_Subscription_watchPerson(
    id: id,
    servicesLimit: servicesLimit,
    classesLimit: classesLimit,
    groupsLimit: groupsLimit,
  ).toJson();

  Json _createPersonVarsConstructor({required Person newObject}) =>
      Variables_Mutation_insertPerson(
        newPerson: newObject.toInsertInput(),
      ).toJson();

  Json _updatePersonVarsConstructor({
    required Person newObject,
    required Person oldObject,
  }) => PersonUpdateHelper(
    newPerson: newObject,
    oldPerson: oldObject,
  ).variables.toJson();

  Json _deleteSingleByIdVarsConstructor({required UuidValue id}) =>
      Variables_Mutation_deletePerson(personId: id).toJson();

  @override
  Stream<Person?> streamSingleById({
    required String id,
    int? servicesLimit = 6,
    int? classesLimit = 6,
    int? groupsLimit = 6,
  }) {
    return streamingProxy.streamSingleById(
      id: id,
      streamSingleByIdConfig: baseStreamSingleByIdConfig.copyWith(
        variables: _streamSingleByIdVarsConstructor(
          id: id.toUuid(),
          servicesLimit: servicesLimit,
          classesLimit: classesLimit,
          groupsLimit: groupsLimit,
        ),
      ),
    );
  }

  Future<Person?> personServicesClassesGroups({required String personId}) {
    final queryOptions = QueryOptions(
      document: documentNodeQuerypersonServicesClassesGroups,
      operationName: 'personServicesClassesGroups',
      variables: Variables_Query_personServicesClassesGroups(
        id: personId.toUuid(),
      ).toJson(),
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
              id: Input_UuidComparisonExp($_eq: personId.toUuid()),
            ),
          if (areasIds.isNotEmpty ||
              streetsIds.isNotEmpty ||
              familiesIds.isNotEmpty)
            Input_PersonsBoolExp(
              address: Input_AddressesBoolExp(
                $_or: [
                  if (areasIds.isNotEmpty)
                    Input_AddressesBoolExp(
                      areaId: Input_UuidComparisonExp($_in: areasIds),
                    ),
                  if (streetsIds.isNotEmpty)
                    Input_AddressesBoolExp(
                      streetId: Input_UuidComparisonExp($_in: streetsIds),
                    ),
                  if (familiesIds.isNotEmpty)
                    Input_AddressesBoolExp(
                      familyId: Input_UuidComparisonExp($_in: familiesIds),
                    ),
                ],
              ),
            ),
          if (servicesIds.isNotEmpty ||
              classesIds.isNotEmpty ||
              groupsIds.isNotEmpty)
            Input_PersonsBoolExp(
              $_or: [
                if (servicesIds.isNotEmpty)
                  Input_PersonsBoolExp(
                    services: Input_PersonsServicesBoolExp(
                      serviceId: Input_UuidComparisonExp($_in: servicesIds),
                    ),
                  ),
                if (classesIds.isNotEmpty)
                  Input_PersonsBoolExp(
                    classes: Input_ClassesPersonsBoolExp(
                      classId: Input_UuidComparisonExp($_in: classesIds),
                    ),
                  ),
                if (groupsIds.isNotEmpty)
                  Input_PersonsBoolExp(
                    groups: Input_PersonsGroupsBoolExp(
                      groupId: Input_UuidComparisonExp($_in: groupsIds),
                    ),
                  ),
              ],
            ),
        ],
      ).toJson(),
      queryRequestTimeout: const Duration(seconds: 30),
      parserFn: PersonsGeolocationsResponse.fromJson,
    );

    return graphQLClient.queryAndReturnParsedNullable(queryOptions);
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
  }) {
    return graphQLClient.mutateAndReturnParsedNullable(
      MutationOptions(
        document: documentNodeMutationupdatePersonSpiritData,
        operationName: 'updatePersonSpiritData',
        variables: Variables_Mutation_updatePersonSpiritData(
          personId: personId.toUuid(),
          lastKodas: lastKodas,
          lastConfession: lastConfession,
        ).toJson(),
        parserFn: (data) {
          final value = data.values.whereType<Map?>().lastOrNull?['person'];
          if (value == null) return null;

          return Person.fromJson(value.cast<String, Object?>());
        },
      ),
    );
  }
}
