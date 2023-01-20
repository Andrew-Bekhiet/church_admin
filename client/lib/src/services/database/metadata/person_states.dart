import 'package:church_admin/church_admin.dart';
import 'package:graphql/client.dart';

import '../../../../graphql/__generated__/schema.graphql.dart';
import 'person_states/__generated__/subscriptions.graphql.dart';

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
        return graphQLClient.subscribe(
          SubscriptionOptions(
            document: documentNodeSubscriptiongetPersonStatesStream,
            operationName: 'getPersonStatesStream',
            variables: getDefaultVariables(
              event,
              Variables$Subscription$getPersonStatesStream.new,
              Input$PersonStatesBoolExp.new,
            ).toJson(),
            parserFn: (d) => db.parseListOfT(d, PersonState.fromJson),
          ),
        );
      },
    );
  }
}
