import 'package:church_admin/church_admin.dart';
import 'package:church_admin/graphql/__generated__/schema.graphql.dart';
import 'package:graphql/client.dart';

import 'hobbies/__generated__/subscriptions.graphql.dart';

class HobbiesDAO extends DAOBase {
  const HobbiesDAO({
    required super.db,
  });

  GQLPaginatableStream<Hobby> paginateHobbies({
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
                  Variables$Subscription$watchAllHobbies.new,
                  Input$HobbiesBoolExp.new,
                )
                .toJson(),
            parserFn: db.parser.singleListParser(Hobby.fromJson),
          ),
        );
      },
    );
  }
}
