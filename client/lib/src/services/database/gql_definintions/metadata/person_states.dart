import 'package:church_admin/church_admin.dart';
import 'package:graphql/client.dart';

import 'person_states/__generated__/subscriptions.gql.dart';

class PersonStatesDAO extends DAOBase<PersonState> {
  const PersonStatesDAO({
    required super.db,
  });

  @override
  GQLPaginatableStream<PersonState> streamAll({
    Stream<String?>? searchQuery,
  }) {
    return GQLPaginatableStream<PersonState>(
      searchQuery: searchQuery,
      subscriptionStreamCallback: (event) {
        return graphQLClient.subscribeAndReturnParsed(
          SubscriptionOptions(
            document: documentNodeSubscriptionwatchAllPersonStates,
            operationName: 'watchAllPersonStates',
            variables: graphQLClient
                .getDefaultSearchVars(
                  event,
                  Variables_Subscription_watchAllPersonStates.new,
                  Input_PersonStatesBoolExp.new,
                )
                .toJson(),
            parserFn: db.parser.singleListParser(PersonState.fromJson),
          ),
        );
      },
    );
  }
}
