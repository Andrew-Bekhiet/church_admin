import 'package:church_admin/church_admin.dart';
import 'package:church_admin/src/core/services/database/data_check_free_documents.dart';
import 'package:church_admin/src/core/services/database/gql_definintions/families/__generated__/mutations.graphql.dart';
import 'package:church_admin/src/core/services/database/gql_definintions/families/__generated__/queries.graphql.dart';
import 'package:graphql/client.dart';

class FamiliesDAO extends FullCRUDDAO<Family>
    with DataCheckFreeDocuments<Family> {
  static final Input_FamilyContactFilterInput _familyAdminContacts =
      Input_FamilyContactFilterInput(
        personType: Input_PersonTypeFilterInput(
          isFamilyAdmin: Input_PersonTypeFilterIsFamilyAdmin(eq: true),
        ),
      );

  static final List<Input_FamilyContactSortInput> _contactsOrder = [
    Input_FamilyContactSortInput(
      field: Enum_FamilyContactSortField.PERSON_TYPE_ORDER,
      order: Enum_SortOrder.ASC,
    ),
    Input_FamilyContactSortInput(
      field: Enum_FamilyContactSortField.IS_MAIN_PHONE,
      order: Enum_SortOrder.DESC,
    ),
    Input_FamilyContactSortInput(
      field: Enum_FamilyContactSortField.CREATED_AT,
      order: Enum_SortOrder.ASC,
    ),
  ];

  static final List<Input_FamilySortInput> _relativesOrder = [
    Input_FamilySortInput(
      field: Enum_FamilySortField.NAME,
      order: Enum_SortOrder.ASC,
    ),
  ];

  @override
  StreamAllConfig<Family> get baseStreamAllConfig => StreamAllConfig(
    document: documentNodeQueryfamilies,
    arguments: _listArguments,
  );

  @override
  StreamSingleByIdConfig<Family> get baseStreamSingleByIdConfig =>
      StreamSingleByIdConfig(
        document: documentNodeQueryfamily,
        varsConstructor: ({required id}) => Variables_Query_family(
          id: id,
          contactsFilter: _familyAdminContacts,
          contactsSort: _contactsOrder,
        ).toJson(),
      );

  @override
  CreateObjectConfig<Family> get baseCreateObjectConfig => CreateObjectConfig(
    document: documentNodeMutationcreateFamily,
    varsConstructor: ({required newObject}) => Variables_Mutation_createFamily(
      input: Input_CreateFamilyInput.fromJson(newObject.toCommandInput()),
    ).toJson(),
  );

  @override
  UpdateObjectConfig<Family> get baseUpdateObjectConfig => UpdateObjectConfig(
    document: documentNodeMutationupdateFamily,
    varsConstructor: ({required newObject}) => Variables_Mutation_updateFamily(
      id: newObject.id,
      input: Input_UpdateFamilyInput.fromJson(newObject.toCommandInput()),
    ).toJson(),
  );

  @override
  DeleteSingleByIdConfig<Family> get baseDeleteSingleByIdConfig =>
      const DeleteSingleByIdConfig(document: documentNodeMutationdeleteFamily);

  FamiliesDAO({required super.db}) : super(fromJson: Family.fromJson);

  Future<Family?> updateFamily({
    required Family newFamily,
    required Family oldFamily,
  }) => updateObject(newObject: newFamily, oldObject: oldFamily);

  Future<Family?> getFamilyRelatedFamilies({required String familyId}) {
    final document = transformDocument(documentNodeQueryfamilyWithRelatives);

    return graphQLClient.queryAndReturnParsed(
      QueryOptions(
        document: document,
        operationName: 'familyWithRelatives',
        variables: Variables_Query_familyWithRelatives(
          id: familyId,
          relativesSort: _relativesOrder,
        ).toJson(),
        parserFn: AshResultParser(document).entity(fromJson),
      ),
    );
  }

  PaginatableStreamBase<Family> streamAllWithAddresses({
    Stream<String?>? searchQuery,
    Stream<List<Filter>>? where,
    Stream<List<OrderBy>>? orderBy,
  }) => streamAllWithConfig(
    streamAllConfig: baseStreamAllConfig.copyWith(
      document: documentNodeQueryfamiliesWithAddresses,
      operationName: 'familiesWithAddresses',
    ),
    searchQuery: searchQuery,
    where: where,
    orderBy: orderBy,
  );

  ListQueryArguments _listArguments(
    StreamableDAOParameters<Family>? parameters,
  ) => ListQueryArguments.fromParameters(
    parameters,
    defaultOrderBy: [OrderBy(field: FamilyFields().name)],
  );
}
