import 'package:church_admin/church_admin.dart';
import 'package:church_admin/graphql/__generated__/schema.graphql.dart';
import 'package:graphql/client.dart';

import 'person_states/__generated__/subscriptions.gql.dart';

class PersonStatesDAO extends DAOBase {
  const PersonStatesDAO({
    required super.db,
  });

  GQLPaginatableStream<PersonState> paginatePersonStates({
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
                  Variables$Subscription$watchAllPersonStates.new,
                  Input$PersonStatesBoolExp.new,
                )
                .toJson(),
            parserFn: db.parser.singleListParser(PersonState.fromJson),
          ),
        );
      },
    );
  }
}
