import 'package:church_admin/church_admin.dart';
import 'package:church_admin/src/core/services/database/data_check_free_documents.dart';
import 'package:church_admin/src/core/services/database/gql_definintions/meetings/meeting_rows_reader.dart';
import 'package:church_admin/src/core/services/database/gql_definintions/persons/__generated__/mutations.graphql.dart';
import 'package:church_admin/src/core/services/database/gql_definintions/persons/__generated__/queries.graphql.dart';
import 'package:church_admin/src/core/services/database/gql_definintions/persons/person_command_inputs.dart';
import 'package:church_admin/src/core/services/database/gql_definintions/persons/persons_geolocations_filters.dart';
import 'package:church_admin/src/core/services/database/gql_definintions/persons/persons_notifications_queries.dart';
import 'package:gql/ast.dart';
import 'package:graphql/client.dart';

class PersonsDAO extends FullCRUDDAO<Person>
    with DataCheckFreeDocuments<Person> {
  static const int _membershipsShownBeforeAll = 6;

  static Json _detailsVariables({
    required String id,
    int? servicesLimit = _membershipsShownBeforeAll,
    int? classesLimit = _membershipsShownBeforeAll,
    int? groupsLimit = _membershipsShownBeforeAll,
  }) => Variables_Query_person(
    id: id,
    familyContactsFilter: Input_FamilyContactFilterInput.fromJson({
      'personType': {
        'isFamilyAdmin': {'eq': true},
      },
      'or': [
        {
          'personId': {'isNil': true},
        },
        {
          'personId': {'notEq': id},
        },
      ],
    }),
    servicesLimit: servicesLimit,
    classesLimit: classesLimit,
    groupsLimit: groupsLimit,
  ).toJson();

  late final notificationsQueries = PersonsNotificationsQueries(db: db);
  late final MeetingRowsReader _everyRow = MeetingRowsReader(graphQLClient);

  @override
  StreamAllConfig<Person> get baseStreamAllConfig => StreamAllConfig(
    document: documentNodeQuerypersons,
    arguments: (parameters) => ListQueryArguments.fromParameters(
      parameters,
      defaultOrderBy: [OrderBy(field: PersonFields().name)],
    ),
  );

  @override
  StreamSingleByIdConfig<Person> get baseStreamSingleByIdConfig =>
      const StreamSingleByIdConfig(
        document: documentNodeQueryperson,
        varsConstructor: _detailsVariables,
      );

  @override
  CreateObjectConfig<Person> get baseCreateObjectConfig => CreateObjectConfig(
    document: documentNodeMutationcreatePerson,
    varsConstructor: ({required newObject}) => Variables_Mutation_createPerson(
      input: PersonCommandInputs(person: newObject).create,
    ).toJson(),
  );

  @override
  UpdateObjectConfig<Person> get baseUpdateObjectConfig => UpdateObjectConfig(
    document: documentNodeMutationupdatePerson,
    varsConstructor: ({required newObject}) => Variables_Mutation_updatePerson(
      id: newObject.id,
      input: PersonCommandInputs(person: newObject, saved: newObject).update,
    ).toJson(),
  );

  @override
  DeleteSingleByIdConfig<Person> get baseDeleteSingleByIdConfig =>
      const DeleteSingleByIdConfig(document: documentNodeMutationdeletePerson);

  PersonsDAO({required super.db}) : super(fromJson: Person.fromJson);

  @override
  Future<Person> createObject({required Person newObject}) async {
    final inputs = await _commandInputsFor(newObject);

    return _write(
      documentNodeMutationcreatePerson,
      Variables_Mutation_createPerson(input: inputs.create).toJson(),
    );
  }

  @override
  Future<Person?> updateObject({
    required Person newObject,
    required Person oldObject,
  }) async {
    if (newObject == oldObject) return newObject;

    final inputs = await _commandInputsFor(newObject, saved: oldObject);

    return _write(
      documentNodeMutationupdatePerson,
      Variables_Mutation_updatePerson(
        id: newObject.id,
        input: inputs.update,
      ).toJson(),
    );
  }

  @override
  Stream<Person?> streamSingleById({
    required String id,
    int? servicesLimit = _membershipsShownBeforeAll,
    int? classesLimit = _membershipsShownBeforeAll,
    int? groupsLimit = _membershipsShownBeforeAll,
  }) => streamSingleByIdWithConfig(
    id: id,
    streamSingleByIdConfig: baseStreamSingleByIdConfig.copyWith(
      varsConstructor: ({required id}) => _detailsVariables(
        id: id,
        servicesLimit: servicesLimit,
        classesLimit: classesLimit,
        groupsLimit: groupsLimit,
      ),
    ),
  );

  Future<Person?> personServicesClassesGroups({required String personId}) {
    final document = transformDocument(documentNodeQuerypersonMemberships);

    return graphQLClient.queryAndReturnParsedNullable(
      QueryOptions(
        document: document,
        operationName: 'personMemberships',
        variables: Variables_Query_personMemberships(id: personId).toJson(),
        parserFn: AshResultParser(document).entity(fromJson),
      ),
    );
  }

  Future<PersonsGeolocationsResponse?> personsGeolocations({
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
    String? personId,
  }) async {
    assert(
      getAreas || getStreets || getFamilies || getStores || getPersons,
      'At lease one type should be fetched',
    );

    final filters = PersonsGeolocationsFilters(
      areasIds: areasIds.map((id) => id.uuid).toList(),
      streetsIds: streetsIds.map((id) => id.uuid).toList(),
      familiesIds: familiesIds.map((id) => id.uuid).toList(),
      storesIds: storesIds.map((id) => id.uuid).toList(),
      servicesIds: servicesIds.map((id) => id.uuid).toList(),
      classesIds: classesIds.map((id) => id.uuid).toList(),
      groupsIds: groupsIds.map((id) => id.uuid).toList(),
      personId: personId,
    );

    Future<List<Json>> placed(bool shown, DocumentNode document, Json filter) =>
        shown
        ? _everyRow.read(
            document: document,
            fromJson: (row) => row,
            variables: {'filter': filter},
          )
        : Future.value(const []);

    final (areas, streets, families, stores, persons) = await (
      placed(getAreas, documentNodeQuerygeolocatedAreas, filters.areas),
      placed(getStreets, documentNodeQuerygeolocatedStreets, filters.streets),
      placed(
        getFamilies,
        documentNodeQuerygeolocatedFamilies,
        filters.families,
      ),
      placed(getStores, documentNodeQuerygeolocatedStores, filters.stores),
      placed(getPersons, documentNodeQuerygeolocatedPersons, filters.persons),
    ).wait;

    return PersonsGeolocationsResponse.fromJson({
      'areas': areas,
      'streets': streets,
      'families': families,
      'stores': stores,
      'persons': persons,
    });
  }

  Future<Person?> getPersonAnalysis({
    required String personId,
    required PersonAnalysisOptions options,
  }) {
    final DateTimeRange(:start, :end) = options.dateRange;
    final timeRange = {
      'time': {
        'greaterThanOrEqual': tstzToString(start),
        'lessThanOrEqual': tstzToString(end),
      },
    };
    final dayRange = {
      'dayId': {
        'greaterThanOrEqual': dateToString(start),
        'lessThanOrEqual': dateToString(end),
      },
    };
    final document = transformDocument(documentNodeQuerypersonHistoryAnalysis);

    return graphQLClient.queryAndReturnParsedNullable(
      QueryOptions(
        errorPolicy: ErrorPolicy.all,
        document: document,
        operationName: 'personHistoryAnalysis',
        variables: Variables_Query_personHistoryAnalysis(
          id: personId,
          callsFilter: Input_CallFilterInput.fromJson(timeRange),
          visitsFilter: Input_VisitFilterInput.fromJson(timeRange),
          editsFilter: Input_EditFilterInput.fromJson(timeRange),
          kodasesFilter: Input_KodasFilterInput.fromJson(dayRange),
          confessionsFilter: Input_ConfessionFilterInput.fromJson(dayRange),
          confessionHistory: options.confessionAnalysis,
          kodasHistory: options.kodasAnalysis,
          callHistory: options.callHistoryAnalysis,
          visitHistory: options.visitHistoryAnalysis,
          editHistory: options.editHistoryAnalysis,
        ).toJson(),
        parserFn: AshResultParser(document).entity(fromJson),
      ),
    );
  }

  Future<Person?> updatePersonSpiritData({
    required String personId,
    required DateTime lastConfession,
    required DateTime lastKodas,
  }) {
    final document = transformDocument(
      documentNodeMutationrecordPersonSpiritualDays,
    );

    return graphQLClient.mutateAndReturnParsedNullable(
      MutationOptions(
        document: document,
        operationName: 'recordPersonSpiritualDays',
        variables: Variables_Mutation_recordPersonSpiritualDays(
          id: personId,
          input: Input_RecordPersonSpiritualDaysInput(
            confessionDay: lastConfession,
            kodasDay: lastKodas,
          ),
        ).toJson(),
        parserFn: AshResultParser(document).mutationResultOrNull(fromJson),
      ),
    );
  }

  Future<PersonCommandInputs> _commandInputsFor(
    Person person, {
    Person? saved,
  }) async {
    final withoutFamilyContacts = PersonCommandInputs(
      person: person,
      saved: saved,
    );
    final familyId = person.family?.id;
    if (familyId == null || !withoutFamilyContacts.familyContactsWereEdited) {
      return withoutFamilyContacts;
    }

    return PersonCommandInputs(
      person: person,
      saved: saved,
      unclaimedFamilyContacts: await _unclaimedContactsOf(familyId),
    );
  }

  Future<List<FamilyPhoneContact>> _unclaimedContactsOf(String familyId) {
    final document = transformDocument(
      documentNodeQueryfamilyUnclaimedContacts,
    );

    return graphQLClient.queryAndReturnParsed(
      QueryOptions(
        document: document,
        operationName: 'familyUnclaimedContacts',
        fetchPolicy: FetchPolicy.networkOnly,
        variables: Variables_Query_familyUnclaimedContacts(
          filter: Input_FamilyContactFilterInput.fromJson({
            'familyId': {'eq': familyId},
            'personId': {'isNil': true},
          }),
          first: AshPagination.maxPageSize,
        ).toJson(),
        parserFn: (data) => [
          if (data['familyContacts'] case {'results': final List results})
            for (final row in results)
              FamilyPhoneContact.fromJson(Json.from(row as Map)),
        ],
      ),
    );
  }

  Future<Person> _write(DocumentNode mutation, Json variables) {
    final document = transformDocument(mutation);

    return graphQLClient.mutateAndReturnParsed(
      MutationOptions(
        document: document,
        operationName: AshResultParser.rootFieldOf(document),
        variables: variables,
        parserFn: AshResultParser(document).mutationResult(fromJson),
      ),
    );
  }
}
