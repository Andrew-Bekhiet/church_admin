import 'package:church_admin/church_admin.dart';
import 'package:graphql/client.dart';

import 'hobbies/__generated__/subscriptions.gql.dart';

class HobbiesDAO extends DAOBase<Hobby> {
  const HobbiesDAO({
    required super.db,
  });

  @override
  GQLPaginatableStream<Hobby> streamAll({
    Stream<String?>? searchQuery,
  }) {
    return GQLPaginatableStream<Hobby>(
      searchQuery: searchQuery,
      subscriptionStreamCallback: (event) {
        return graphQLClient.subscribeAndReturnParsed(
          SubscriptionOptions(
            document: documentNodeSubscriptionwatchAllHobbies,
            operationName: 'watchAllHobbies',
            variables: graphQLClient
                .getDefaultSearchVars(
                  event,
                  Variables_Subscription_watchAllHobbies.new,
                  Input_HobbiesBoolExp.new,
                )
                .toJson(),
            parserFn: db.parser.singleListParser(Hobby.fromJson),
          ),
        );
      },
    );
  }
}
