import 'package:church_admin/church_admin.dart';
import 'package:graphql/client.dart';

import 'tags/__generated__/subscriptions.gql.dart';

class TagsDAO extends DAOBase<Tag> {
  const TagsDAO({
    required super.db,
  });

  @override
  GQLPaginatableStream<Tag> streamAll({
    Stream<String?>? searchQuery,
  }) {
    return GQLPaginatableStream<Tag>(
      searchQuery: searchQuery,
      subscriptionStreamCallback: (event) {
        return graphQLClient.subscribeAndReturnParsed(
          SubscriptionOptions(
            document: documentNodeSubscriptionwatchAllTags,
            operationName: 'watchAllTags',
            variables: graphQLClient
                .getDefaultSearchVars(
                  event,
                  Variables_Subscription_watchAllTags.new,
                  Input_TagsBoolExp.new,
                )
                .toJson(),
            parserFn: db.parser.singleListParser(Tag.fromJson),
          ),
        );
      },
    );
  }
}
