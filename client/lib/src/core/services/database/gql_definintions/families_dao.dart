import 'package:church_admin/church_admin.dart';
import 'package:church_admin/src/core/services/database/gql_definintions/families/__generated__/mutations.gql.dart';
import 'package:church_admin/src/core/services/database/gql_definintions/families/__generated__/queries.gql.dart';
import 'package:church_admin/src/core/services/database/gql_definintions/families/__generated__/subscriptions.gql.dart';
import 'package:church_admin/src/core/services/database/gql_definintions/families/family_insert_helper.dart';
import 'package:church_admin/src/core/services/database/gql_definintions/families/family_update_helper.dart';
import 'package:graphql/client.dart';
import 'package:rxdart/rxdart.dart';

class FamiliesDAO extends FullCRUDDAO<Family> {
  @override
  final StreamAllConfig<Family> baseStreamAllConfig = const StreamAllConfig(
    document: documentNodeSubscriptionwatchAllFamilies,
  );

  @override
  late final StreamCountConfig<Family> baseStreamCountConfig =
      const StreamCountConfig(
        document: documentNodeSubscriptionwatchFamiliesCount,
      );

  @override
  late final StreamSingleByIdConfig<Family> baseStreamSingleByIdConfig =
      StreamSingleByIdConfig(
        document: documentNodeSubscriptionwatchFamily,
        varsConstructor: _streamSingleByIdVarsConstructor,
      );

  @override
  late final DeleteSingleByIdConfig<Family> baseDeleteSingleByIdConfig =
      DeleteSingleByIdConfig(
        document: documentNodeMutationdeleteFamily,
        varsConstructor: _deleteSingleByIdVarsConstructor,
      );

  @override
  late final UpdateObjectConfig<Family> baseUpdateObjectConfig =
      UpdateObjectConfig(
        document: documentNodeMutationupdateFamily,
        varsConstructor: _updateFamilyVarsConstructor,
      );

  @override
  late final CreateObjectConfig<Family> baseCreateObjectConfig =
      CreateObjectConfig(
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
        document: documentNodeMutationupdateFamily,
        operationName: 'updateFamily',
        variables: helper.variables.toJson(),
        parserFn: db.parser.singleOrNullParser(Family.fromJson),
      ),
    );
  }

  Future<Family?> getFamilyRelatedFamilies({required String familyId}) {
    final queryOptions = QueryOptions(
      document: documentNodeQuerygetFamilyRelatedFamilies,
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
        where ?? Stream.value(<Filter>[]),
        orderBy ?? Stream.value(<OrderBy>[]),
        (search, where, orderBy) => StreamableDAOParameters<Family>(
          search: search,
          where: where,
          orderBy: orderBy,
        ),
      ),
      factory: (request) => _streamAllFactory(streamAllConfig, request),
    );
  }

  Stream<PaginatableStreamResponse<Family>> _streamAllFactory(
    StreamAllConfig<Family> streamAllConfig,
    PaginatableStreamRequest<Family, StreamableDAOParameters<Family>?> request,
  ) => graphQLClient.subscribeAndReturnParsed(
    streamAllConfig.operationOptions ??
        SubscriptionOptions(
          document: streamAllConfig.document,
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
