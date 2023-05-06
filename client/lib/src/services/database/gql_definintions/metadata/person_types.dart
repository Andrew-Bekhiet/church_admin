import 'package:church_admin/church_admin.dart';
import 'package:graphql/client.dart';

import 'person_types/__generated__/subscriptions.gql.dart';

class PersonTypesDAO extends DAOBase<PersonType> {
  const PersonTypesDAO({
    required super.db,
  });

  @override
  GQLPaginatableStream<PersonType> streamAll({
    Stream<String?>? searchQuery,
  }) {
    return GQLPaginatableStream<PersonType>(
      searchQuery: searchQuery,
      subscriptionStreamCallback: (event) {
        return graphQLClient.subscribeAndReturnParsed(
          SubscriptionOptions(
            document: documentNodeSubscriptionwatchAllPersonTypes,
            operationName: 'watchAllPersonTypes',
            variables: graphQLClient
                .getDefaultSearchVars(
                  event,
                  Variables_Subscription_watchAllPersonTypes.new,
                  Input_PersonTypesBoolExp.new,
                )
                .toJson(),
            parserFn: db.parser.singleListParser(PersonType.fromJson),
          ),
        );
      },
    );
  }
}
