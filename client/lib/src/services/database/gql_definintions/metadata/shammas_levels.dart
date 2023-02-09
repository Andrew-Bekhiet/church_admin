import 'package:church_admin/church_admin.dart';
import 'package:church_admin/graphql/__generated__/schema.graphql.dart';
import 'package:graphql/client.dart';

import 'shammas_levels/__generated__/subscriptions.graphql.dart';

class ShammasLevelsDAO extends DAOBase {
  const ShammasLevelsDAO({
    required super.db,
  });

  GQLPaginatableStream<ShammasLevel> paginateShammasLevels({
    Stream<String?>? searchQuery,
  }) {
    return GQLPaginatableStream<ShammasLevel>(
      searchQuery: searchQuery,
      subscriptionStreamCallback: (event) {
        return graphQLClient.subscribeAndReturnParsed(
          SubscriptionOptions(
            document: documentNodeSubscriptionwatchAllShammasLevels,
            operationName: 'watchAllShammasLevels',
            variables: graphQLClient
                .getDefaultSearchVars(
                  event,
                  Variables$Subscription$watchAllShammasLevels.new,
                  Input$ShammasLevelsBoolExp.new,
                )
                .toJson(),
            parserFn: db.parser.singleListParser(ShammasLevel.fromJson),
          ),
        );
      },
    );
  }
}
