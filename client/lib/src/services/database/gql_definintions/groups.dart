import 'package:church_admin/church_admin.dart';
import 'package:graphql/client.dart';

import 'groups/__generated__/subscriptions.gql.dart';

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
}
