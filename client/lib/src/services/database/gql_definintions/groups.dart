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
        return graphQLClient.subscribeAndReturnParsed(
          SubscriptionOptions(
            document: documentNodeSubscriptionwatchAllGroups,
            operationName: 'watchAllGroups',
            variables: graphQLClient
                .getDefaultSearchVars(
                  event,
                  Variables$Subscription$watchAllGroups.new,
                  Input$GroupsBoolExp.new,
                )
                .toJson(),
            parserFn: db.parser.singleListParser(Group.fromJson),
          ),
        );
      },
    );
  }
}
