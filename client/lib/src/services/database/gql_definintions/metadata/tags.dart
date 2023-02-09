import 'package:church_admin/church_admin.dart';
import 'package:church_admin/graphql/__generated__/schema.graphql.dart';
import 'package:graphql/client.dart';

import 'tags/__generated__/subscriptions.graphql.dart';

class TagsDAO extends DAOBase {
  const TagsDAO({
    required super.db,
  });

  GQLPaginatableStream<Tag> paginateTags({
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
                  Variables$Subscription$watchAllTags.new,
                  Input$TagsBoolExp.new,
                )
                .toJson(),
            parserFn: db.parser.singleListParser(Tag.fromJson),
          ),
        );
      },
    );
  }
}
