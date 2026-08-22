import 'package:church_admin/church_admin.dart';
import 'package:church_admin/src/core/services/database/gql_definintions/groups/__generated__/mutations.gql.dart';
import 'package:church_admin/src/core/services/database/gql_definintions/groups/__generated__/subscriptions.gql.dart';

class GroupsDAO extends FullCRUDDAO<Group> {
  @override
  late final StreamAllConfig<Group> baseStreamAllConfig = StreamAllConfig(
    document: documentNodeSubscriptionwatchAllGroups,
    transformRequest: _streamAllVarsConstructor,
  );
  @override
  late final StreamCountConfig<Group> baseStreamCountConfig =
      const StreamCountConfig(
        document: documentNodeSubscriptionwatchGroupsCount,
      );
  @override
  late final StreamSingleByIdConfig<Group> baseStreamSingleByIdConfig =
      StreamSingleByIdConfig(
        document: documentNodeSubscriptionwatchGroup,
        varsConstructor: _streamSingleByIdVarsConstructor,
      );
  @override
  late final DeleteSingleByIdConfig<Group> baseDeleteSingleByIdConfig =
      DeleteSingleByIdConfig(
        document: documentNodeMutationdeleteGroup,
        varsConstructor: _deleteSingleByIdVarsConstructor,
      );
  @override
  late final UpdateObjectConfig<Group> baseUpdateObjectConfig =
      UpdateObjectConfig(
        document: documentNodeMutationupdateGroup,
        varsConstructor: _updateGroupVarsConstructor,
      );
  @override
  late final CreateObjectConfig<Group> baseCreateObjectConfig =
      CreateObjectConfig(
        document: documentNodeMutationinsertGroup,
        varsConstructor: _createGroupVarsConstructor,
      );

  GroupsDAO({required super.db}) : super(fromJson: Group.fromJson);

  Json _streamAllVarsConstructor(
    PaginatableStreamRequest<Group, StreamableDAOParameters<Group>?> request,
  ) {
    final orderBy = request.param?.orderBy;

    return db.varsTransformer.transformrequestForPagination(
      request,
      overrideOrderBy: (orderBy?.isEmpty ?? true)
          ? [
              OrderBy(field: GroupFields().validity),
              OrderBy(field: GroupFields().name),
            ]
          : null,
    );
  }

  Json _streamSingleByIdVarsConstructor({required UuidValue id}) =>
      Variables_Subscription_watchGroup(id: id).toJson();

  Json _createGroupVarsConstructor({required Group newObject}) =>
      Variables_Mutation_insertGroup(
        newGroup: newObject.toInsertInput(),
      ).toJson();

  Json _updateGroupVarsConstructor({
    required Group newObject,
    required Group oldObject,
  }) => Variables_Mutation_updateGroup(
    groupId: newObject.id.toUuid(),
    newGroup: newObject.toUpdateInput(oldObject: oldObject),
  ).toJson();

  Json _deleteSingleByIdVarsConstructor({required UuidValue id}) =>
      Variables_Mutation_deleteGroup(groupId: id).toJson();
}
