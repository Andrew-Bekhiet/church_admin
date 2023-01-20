import 'package:church_admin/church_admin.dart';
import 'package:graphql/client.dart';

import '../../../../graphql/__generated__/schema.graphql.dart';
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
        return graphQLClient.subscribe(
          SubscriptionOptions(
            document: documentNodeSubscriptiongetShammasLevelsStream,
            operationName: 'getShammasLevelsStream',
            variables: getDefaultVariables(
              event,
              Variables$Subscription$getShammasLevelsStream.new,
              Input$ShammasLevelsBoolExp.new,
            ).toJson(),
            parserFn: (d) => db.parseListOfT(d, ShammasLevel.fromJson),
          ),
        );
      },
    );
  }
}
