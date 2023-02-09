import 'package:church_admin/church_admin.dart';
import 'package:church_admin/graphql/__generated__/schema.graphql.dart';
import 'package:graphql/client.dart';

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
        return graphQLClient.subscribeAndReturnParsed(
          SubscriptionOptions(
            document: documentNodeSubscriptionwatchAllQualifications,
            operationName: 'watchAllQualifications',
            variables: graphQLClient
                .getDefaultSearchVars(
                  event,
                  Variables$Subscription$watchAllQualifications.new,
                  Input$QualificationsBoolExp.new,
                )
                .toJson(),
            parserFn: db.parser.singleListParser(Qualification.fromJson),
          ),
        );
      },
    );
  }
}
