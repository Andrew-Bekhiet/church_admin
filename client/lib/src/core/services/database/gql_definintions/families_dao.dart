import 'package:church_admin/church_admin.dart';
import 'package:church_admin/src/core/services/database/data_check_free_documents.dart';
import 'package:church_admin/src/core/services/database/gql_definintions/families/__generated__/mutations.gql.dart';
import 'package:church_admin/src/core/services/database/gql_definintions/families/__generated__/queries.gql.dart';
import 'package:church_admin/src/core/services/database/gql_definintions/families/__generated__/subscriptions.gql.dart';
import 'package:church_admin/src/core/services/database/gql_definintions/families/family_insert_helper.dart';
import 'package:church_admin/src/core/services/database/gql_definintions/families/family_update_helper.dart';
import 'package:graphql/client.dart';
import 'package:rxdart/rxdart.dart';

class FamiliesDAO extends LegacyFullCRUDDAO<Family>
    with DataCheckFreeDocuments<Family> {
  @override
  final LegacyStreamAllConfig<Family> baseStreamAllConfig = const LegacyStreamAllConfig(
    document: documentNodeSubscriptionwatchAllFamilies,
  );

  @override
  late final LegacyStreamCountConfig<Family> baseStreamCountConfig =
      const LegacyStreamCountConfig(
        document: documentNodeSubscriptionwatchFamiliesCount,
      );

  @override
  late final LegacyStreamSingleByIdConfig<Family> baseStreamSingleByIdConfig =
      LegacyStreamSingleByIdConfig(
        document: documentNodeSubscriptionwatchFamily,
        varsConstructor: _streamSingleByIdVarsConstructor,
      );

  @override
  late final LegacyDeleteSingleByIdConfig<Family> baseDeleteSingleByIdConfig =
      LegacyDeleteSingleByIdConfig(
        document: documentNodeMutationdeleteFamily,
        varsConstructor: _deleteSingleByIdVarsConstructor,
      );

  @override
  late final LegacyUpdateObjectConfig<Family> baseUpdateObjectConfig =
      LegacyUpdateObjectConfig(
        document: documentNodeMutationupdateFamily,
        varsConstructor: _updateFamilyVarsConstructor,
      );

  @override
  late final LegacyCreateObjectConfig<Family> baseCreateObjectConfig =
      LegacyCreateObjectConfig(
        document: documentNodeMutationinsertFamily,
        varsConstructor: _createFamilyVarsConstructor,
      );

  FamiliesDAO({required super.db}) : super(fromJson: Family.fromJson);

  Json _streamSingleByIdVarsConstructor({required UuidValue id}) =>
      Variables_Subscription_watchFamily(id: id).toJson();

  Json _createFamilyVarsConstructor({required Family newObject}) =>
      FamilyInsertHelper(newFamily: newObject).variables.toJson();

  Json _updateFamilyVarsConstructor({
    required Family newObject,
    required Family oldObject,
  }) => FamilyUpdateHelper(
    newFamily: newObject,
    oldFamily: oldObject,
  ).variables.toJson();

  Json _deleteSingleByIdVarsConstructor({required UuidValue id}) =>
      Variables_Mutation_deleteFamily(familyId: id).toJson();

  Future<Family?> updateFamily({
    required Family newFamily,
    required Family oldFamily,
  }) {
    final helper = FamilyUpdateHelper(
      newFamily: newFamily,
      oldFamily: oldFamily,
    );

    return graphQLClient.mutateAndReturnParsedNullable(
      MutationOptions(
        document: transformDocument(documentNodeMutationupdateFamily),
        operationName: 'updateFamily',
        variables: helper.variables.toJson(),
        parserFn: db.parser.singleOrNullParser(Family.fromJson),
      ),
    );
  }

  Future<Family?> getFamilyRelatedFamilies({required String familyId}) {
    final queryOptions = QueryOptions(
      document: transformDocument(documentNodeQuerygetFamilyRelatedFamilies),
      operationName: 'getFamilyRelatedFamilies',
      variables: Variables_Query_getFamilyRelatedFamilies(
        familyId: familyId.toUuid(),
      ).toJson(),
      parserFn: db.parser.singleOrNullParser(Family.fromJson),
    );

    return graphQLClient.queryAndReturnParsed(queryOptions);
  }

  PaginatableStreamBase<Family> streamAllWithAddresses({
    Stream<String?>? searchQuery,
    Stream<List<Filter>>? where,
    Stream<List<OrderBy>>? orderBy,
  }) {
    final streamAllConfig = baseStreamAllConfig.copyWith(
      document: documentNodeSubscriptionwatchAllFamiliesWithAddresses,
      operationName: 'watchAllFamiliesWithAddresses',
    );

    return PaginatableStream(
      parametersStream: Rx.combineLatest3(
        searchQuery ?? Stream.value(null),
        where ?? Stream.value(null),
        orderBy ?? Stream.value(null),
        (search, where, orderBy) => StreamableDAOParameters<Family>(
          search: search,
          where: where?.whereEnabled(),
          orderBy: orderBy?.whereEnabled(),
        ),
      ),
      factory: (request) => _streamAllFactory(streamAllConfig, request),
    );
  }

  Stream<PaginatableStreamResponse<Family>> _streamAllFactory(
    LegacyStreamAllConfig<Family> streamAllConfig,
    PaginatableStreamRequest<Family, StreamableDAOParameters<Family>?> request,
  ) => graphQLClient.legacySubscribeAndReturnParsed(
    streamAllConfig.operationOptions ??
        SubscriptionOptions(
          document: transformDocument(streamAllConfig.document),
          operationName: streamAllConfig.effectiveOperationName,
          variables:
              streamAllConfig.variables ??
              streamAllConfig.transformRequest?.call(request) ??
              db.varsTransformer.transformrequestForPagination<Family>(request),
          parserFn:
              streamAllConfig.parserFn ??
              db.parser.singleListParser(fromJson, pageSize: request.pageSize),
        ),
  );
}
