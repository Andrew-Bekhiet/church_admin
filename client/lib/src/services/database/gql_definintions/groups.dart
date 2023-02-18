import 'package:church_admin/church_admin.dart';
import 'package:church_admin/graphql/__generated__/schema.graphql.dart';
import 'package:graphql/client.dart';

import 'groups/__generated__/subscriptions.graphql.dart';

class GroupsDAO extends DAOBase {
  const GroupsDAO({
    required super.db,
  });

  GQLPaginatableStream<Group> paginateGroups({
    Stream<String?>? searchQuery,
    String? serviceId,
  }) {
    return GQLPaginatableStream<Group>(
      searchQuery: searchQuery,
      subscriptionStreamCallback: (event) {
        final defaultSearchVars = graphQLClient.getDefaultSearchVars(
          event,
          Variables$Subscription$watchAllGroups.new,
          Input$GroupsBoolExp.new,
        );

        final variables = defaultSearchVars.copyWith(
          where: [
            if (serviceId != null)
              Input$GroupsBoolExp(
                serviceId: Input$UuidComparisonExp($_eq: serviceId.toUuid()),
              ),
            ...defaultSearchVars.where ?? [],
          ],
          orderBy: [
            Input$GroupsOrderBy(
              validity: Enum$OrderBy.ASC,
            ),
            Input$GroupsOrderBy(
              name: Enum$OrderBy.ASC,
            ),
          ],
        );

        return graphQLClient.subscribeAndReturnParsed(
          SubscriptionOptions(
            document: documentNodeSubscriptionwatchAllGroups,
            operationName: 'watchAllGroups',
            variables: variables.toJson(),
            parserFn: db.parser.singleListParser(Group.fromJson),
          ),
        );
      },
    );
  }

  Stream<Group?> watchGroup({
    required String groupId,
  }) {
    return graphQLClient.subscribeAndReturnParsed(
      SubscriptionOptions(
        document: documentNodeSubscriptionwatchGroup,
        operationName: 'watchGroup',
        variables: Variables$Subscription$watchGroup(
          id: groupId.toUuid(),
        ).toJson(),
        parserFn: db.parser.singleParser(Group.fromJson),
      ),
    );
  }
}
