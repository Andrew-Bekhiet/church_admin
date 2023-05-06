import 'package:church_admin/church_admin.dart';
import 'package:graphql/client.dart';

import 'shammas_levels/__generated__/subscriptions.gql.dart';

class ShammasLevelsDAO extends DAOBase<ShammasLevel> {
  const ShammasLevelsDAO({
    required super.db,
  });

  @override
  GQLPaginatableStream<ShammasLevel> streamAll({
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
                  Variables_Subscription_watchAllShammasLevels.new,
                  Input_ShammasLevelsBoolExp.new,
                )
                .toJson(),
            parserFn: db.parser.singleListParser(ShammasLevel.fromJson),
          ),
        );
      },
    );
  }
}
