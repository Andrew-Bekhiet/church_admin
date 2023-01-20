import 'package:church_admin/church_admin.dart';
import 'package:graphql/client.dart';

import '../../../../graphql/__generated__/schema.graphql.dart';
import 'schools/__generated__/subscriptions.graphql.dart';

class SchoolsDAO extends DAOBase {
  const SchoolsDAO({
    required super.db,
  });

  GQLPaginatableStream<School> paginateSchools({
    Stream<String?>? searchQuery,
  }) {
    return GQLPaginatableStream<School>(
      searchQuery: searchQuery,
      subscriptionStreamCallback: (event) {
        return graphQLClient.subscribe(
          SubscriptionOptions(
            document: documentNodeSubscriptiongetSchoolsStream,
            operationName: 'getSchoolsStream',
            variables: getDefaultVariables(
              event,
              Variables$Subscription$getSchoolsStream.new,
              Input$SchoolsBoolExp.new,
            ).toJson(),
            parserFn: (d) => db.parseListOfT(d, School.fromJson),
          ),
        );
      },
    );
  }
}
