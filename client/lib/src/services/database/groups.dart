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
  }) {
    return GQLPaginatableStream<Group>(
      searchQuery: searchQuery,
      subscriptionStreamCallback: (event) {
        return graphQLClient.subscribe(
          SubscriptionOptions(
            document: documentNodeSubscriptiongetGroupsStream,
            operationName: 'getGroupsStream',
            variables: getDefaultVariables(
              event,
              Variables$Subscription$getGroupsStream.new,
              Input$GroupsBoolExp.new,
            ).toJson(),
            parserFn: (d) => db.parseListOfT(d, Group.fromJson),
          ),
        );
      },
    );
  }
}
