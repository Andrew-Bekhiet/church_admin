import 'package:church_admin/church_admin.dart';
import 'package:graphql/client.dart';

import '../../../../graphql/__generated__/schema.graphql.dart';
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
        return graphQLClient.subscribe(
          SubscriptionOptions(
            document: documentNodeSubscriptiongetTagsStream,
            operationName: 'getTagsStream',
            variables: getDefaultVariables(
              event,
              Variables$Subscription$getTagsStream.new,
              Input$TagsBoolExp.new,
            ).toJson(),
            parserFn: (d) => db.parseListOfT(d, Tag.fromJson),
          ),
        );
      },
    );
  }
}
