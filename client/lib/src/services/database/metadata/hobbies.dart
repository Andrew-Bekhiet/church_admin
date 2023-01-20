import 'package:church_admin/church_admin.dart';
import 'package:graphql/client.dart';

import '../../../../graphql/__generated__/schema.graphql.dart';
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
        return graphQLClient.subscribe(
          SubscriptionOptions(
            document: documentNodeSubscriptiongetHobbiesStream,
            operationName: 'getHobbiesStream',
            variables: getDefaultVariables(
              event,
              Variables$Subscription$getHobbiesStream.new,
              Input$HobbiesBoolExp.new,
            ).toJson(),
            parserFn: (d) => db.parseListOfT(d, Hobby.fromJson),
          ),
        );
      },
    );
  }
}
