import 'package:church_admin/church_admin.dart';
import 'package:graphql/client.dart';

import 'qualifications/__generated__/subscriptions.gql.dart';

class QualificationsDAO extends DAOBase<Qualification> {
  const QualificationsDAO({
    required super.db,
  });

  @override
  GQLPaginatableStream<Qualification> streamAll({
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
                  Variables_Subscription_watchAllQualifications.new,
                  Input_QualificationsBoolExp.new,
                )
                .toJson(),
            parserFn: db.parser.singleListParser(Qualification.fromJson),
          ),
        );
      },
    );
  }
}
