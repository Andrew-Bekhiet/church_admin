import 'package:church_admin/church_admin.dart';
import 'package:graphql/client.dart';

import '../../../../graphql/__generated__/schema.graphql.dart';
import 'person_types/__generated__/subscriptions.graphql.dart';

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
        return graphQLClient.subscribe(
          SubscriptionOptions(
            document: documentNodeSubscriptiongetPersonTypesStream,
            operationName: 'getPersonTypesStream',
            variables: getDefaultVariables(
              event,
              Variables$Subscription$getPersonTypesStream.new,
              Input$PersonTypesBoolExp.new,
            ).toJson(),
            parserFn: (d) => db.parseListOfT(d, PersonType.fromJson),
          ),
        );
      },
    );
  }
}
