import 'package:church_admin/church_admin.dart';
import 'package:church_admin/src/services/database/gql_definintions/helpers.dart';
import 'package:uuid/uuid.dart';

import 'groups/__generated__/mutations.gql.dart';
import 'groups/__generated__/subscriptions.gql.dart';

class GroupsDAO extends FullCRUDDAO<Group, Input_GroupsBoolExp> {
  GroupsDAO({required super.db}) : super(fromJson: Group.fromJson);

  @override
  late final StreamAllConfig<Group, Input_GroupsBoolExp> baseStreamAllConfig =
      StreamAllConfig(
    document: documentNodeSubscriptionwatchAllGroups,
    varsConstructor: _streamAllVarsConstructor,
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

  Json _streamAllVarsConstructor({
    required GQLPaginatableStreamEvent<Group> event,
    required List<Input_GroupsBoolExp> where,
  }) {
    final defaultSearchVars = graphQLClient.getDefaultSearchVars(
      event,
      Variables_Subscription_watchAllGroups.new,
      Input_GroupsBoolExp.new,
    );

    return defaultSearchVars.copyWith(
      where: [
        ...where,
        if (defaultSearchVars.where != null) ...defaultSearchVars.where!,
      ],
      orderBy: [
        Input_GroupsOrderBy(
          validity: Enum_OrderBy.ASC,
        ),
        Input_GroupsOrderBy(
          name: Enum_OrderBy.ASC,
        ),
      ],
    ).toJson();
  }

  Json _streamSingleByIdVarsConstructor({required UuidValue id}) =>
      Variables_Subscription_watchGroup(id: id).toJson();

  Json _createGroupVarsConstructor({required Group newObject}) =>
      Variables_Mutation_insertGroup(
        newGroup: Input_GroupsInsertInput.fromJson(newObject.toJson()),
      ).toJson();

  Json _updateGroupVarsConstructor({
    required Group newObject,
    required Group oldObject,
  }) =>
      Variables_Mutation_updateGroup(
        groupId: newObject.id.toUuid(),
        newGroup: Input_GroupsSetInput.fromJson(
          computeObjectDelta(newObject.toJson(), oldObject.toJson()),
        ),
      ).toJson();

  Json _deleteSingleByIdVarsConstructor({required UuidValue id}) =>
      Variables_Mutation_deleteGroup(groupId: id).toJson();
}
