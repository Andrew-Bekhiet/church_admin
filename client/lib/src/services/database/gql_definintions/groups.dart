import 'package:church_admin/church_admin.dart';
import 'package:graphql/client.dart';

import 'groups/__generated__/mutations.gql.dart';
import 'groups/__generated__/subscriptions.gql.dart';
import 'helpers.dart';

class GroupsDAO extends DAOBase<Group> {
  const GroupsDAO({
    required super.db,
  });

  @override
  GQLPaginatableStream<Group> streamAll({
    Stream<String?>? searchQuery,
    List<Input_GroupsBoolExp>? where,
  }) {
    return GQLPaginatableStream<Group>(
      searchQuery: searchQuery,
      subscriptionStreamCallback: (event) {
        final defaultSearchVars = graphQLClient.getDefaultSearchVars(
          event,
          Variables_Subscription_watchAllGroups.new,
          Input_GroupsBoolExp.new,
        );

        final variables = defaultSearchVars.copyWith(
          where: [
            if (where != null) ...where,
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

        return graphQLClient.subscribeAndReturnParsed(
          SubscriptionOptions(
            document: documentNodeSubscriptionwatchAllGroups,
            operationName: 'watchAllGroups',
            variables: variables,
            parserFn: db.parser.singleListParser(Group.fromJson),
          ),
        );
      },
    );
  }

  Stream<Group?> streamSingleById({
    required String id,
  }) {
    return graphQLClient.subscribeAndReturnParsed(
      SubscriptionOptions(
        document: documentNodeSubscriptionwatchGroup,
        operationName: 'watchGroup',
        variables: Variables_Subscription_watchGroup(
          id: id.toUuid(),
        ).toJson(),
        parserFn: db.parser.singleParser(Group.fromJson),
      ),
    );
  }

  Future<Group?> deleteGroup({
    required String groupId,
  }) {
    final mutationOptions = MutationOptions(
      document: documentNodeMutationdeleteGroup,
      variables: Variables_Mutation_deleteGroup(
        groupId: groupId.toUuid(),
      ).toJson(),
      parserFn: db.parser.singleOrNullParser(Group.fromJson),
    );

    return graphQLClient.mutateAndReturnParsed(mutationOptions);
  }

  Future<Group> insertGroup({
    required Group newGroup,
  }) {
    final delta = computeObjectDelta(
      newGroup.toJson(),
      Group(id: '', name: '').toJson(),
    )
      ..remove('id')
      ..remove('service');

    return graphQLClient.mutateAndReturnParsed(
      MutationOptions(
        document: documentNodeMutationinsertGroup,
        operationName: 'insertGroup',
        variables: {'newGroup': delta},
        parserFn: db.parser.singleParser(Group.fromJson),
      ),
    );
  }

  Future<Group?> updateGroup({
    required Group newGroup,
    required Group oldGroup,
  }) {
    final delta = computeObjectDelta(
      newGroup.toJson(),
      oldGroup.toJson(),
    );

    if (delta.isEmpty) return Future.value(newGroup);

    return graphQLClient.mutateAndReturnParsedNullable(
      MutationOptions(
        document: documentNodeMutationupdateGroup,
        operationName: 'updateGroup',
        variables: Variables_Mutation_updateGroup(
          groupId: newGroup.id.toUuid(),
          newGroup: Input_GroupsSetInput.fromJson(delta),
        ).toJson(),
        parserFn: db.parser.singleOrNullParser(Group.fromJson),
      ),
    );
  }
}
