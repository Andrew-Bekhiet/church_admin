import 'package:church_admin/church_admin.dart';
import 'package:graphql/client.dart';

import '../../../../graphql/__generated__/schema.graphql.dart';
import 'qualifications/__generated__/subscriptions.graphql.dart';

class QualificationsDAO extends DAOBase {
  const QualificationsDAO({
    required super.db,
  });

  GQLPaginatableStream<Qualification> paginateQualifications({
    Stream<String?>? searchQuery,
  }) {
    return GQLPaginatableStream<Qualification>(
      searchQuery: searchQuery,
      subscriptionStreamCallback: (event) {
        return graphQLClient.subscribe(
          SubscriptionOptions(
            document: documentNodeSubscriptiongetQualificationsStream,
            operationName: 'getQualificationsStream',
            variables: getDefaultVariables(
              event,
              Variables$Subscription$getQualificationsStream.new,
              Input$QualificationsBoolExp.new,
            ).toJson(),
            parserFn: (d) => db.parseListOfT(d, Qualification.fromJson),
          ),
        );
      },
    );
  }
}
