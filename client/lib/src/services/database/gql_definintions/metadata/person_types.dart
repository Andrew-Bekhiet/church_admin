import 'package:church_admin/church_admin.dart';
import 'package:church_admin/graphql/__generated__/schema.graphql.dart';
import 'package:graphql/client.dart';

import 'person_types/__generated__/subscriptions.gql.dart';

class PersonTypesDAO extends DAOBase {
  const PersonTypesDAO({
    required super.db,
  });

  GQLPaginatableStream<PersonType> paginatePersonTypes({
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
                  Variables$Subscription$watchAllPersonTypes.new,
                  Input$PersonTypesBoolExp.new,
                )
                .toJson(),
            parserFn: db.parser.singleListParser(PersonType.fromJson),
          ),
        );
      },
    );
  }
}
