import 'package:church_admin/church_admin.dart';
import 'package:church_admin/src/core/services/database/gql_definintions/families/helpers.dart';
import 'package:graphql/client.dart';

import 'families/__generated__/mutations.gql.dart';
import 'families/__generated__/queries.gql.dart';
import 'families/__generated__/subscriptions.gql.dart';

class FamiliesDAO
    extends FullCRUDDAO<Family, Input_FamiliesBoolExp, Input_FamiliesOrderBy> {
  FamiliesDAO({required super.db}) : super(fromJson: Family.fromJson);

  @override
  final StreamAllConfig<Family, Input_FamiliesBoolExp, Input_FamiliesOrderBy>
      baseStreamAllConfig = const StreamAllConfig(
    document: documentNodeSubscriptionwatchAllFamilies,
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

  Json _streamSingleByIdVarsConstructor({required UuidValue id}) =>
      Variables_Subscription_watchFamily(id: id).toJson();

  Json _createFamilyVarsConstructor({required Family newObject}) =>
      FamilyInsertHelper(newFamily: newObject).variables.toJson();

  Json _updateFamilyVarsConstructor({
    required Family newObject,
    required Family oldObject,
  }) =>
      FamilyUpdateHelper(newFamily: newObject, oldFamily: oldObject)
          .variables
          .toJson();

  Json _deleteSingleByIdVarsConstructor({required UuidValue id}) =>
      Variables_Mutation_deleteFamily(familyId: id).toJson();

  Future<Family?> updateFamily({
    required Family newFamily,
    required Family oldFamily,
  }) {
    final helper =
        FamilyUpdateHelper(newFamily: newFamily, oldFamily: oldFamily);

    return graphQLClient.mutateAndReturnParsedNullable(
      MutationOptions(
        document: documentNodeMutationupdateFamily,
        operationName: 'updateFamily',
        variables: helper.variables.toJson(),
        parserFn: db.parser.singleOrNullParser(Family.fromJson),
      ),
    );
  }

  Future<Family?> getFamilyRelatedFamilies({
    required String familyId,
  }) {
    final queryOptions = QueryOptions(
      document: documentNodeQuerygetFamilyRelatedFamilies,
      operationName: 'getFamilyRelatedFamilies',
      variables:
          Variables_Query_getFamilyRelatedFamilies(familyId: familyId.toUuid())
              .toJson(),
      parserFn: db.parser.singleOrNullParser(Family.fromJson),
    );

    return graphQLClient.queryAndReturnParsed(queryOptions);
  }
}
