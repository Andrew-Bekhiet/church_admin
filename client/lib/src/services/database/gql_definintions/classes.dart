import 'package:church_admin/church_admin.dart';
import 'package:church_admin/graphql/__generated__/schema.graphql.dart';
import 'package:graphql/client.dart';

import 'classes/__generated__/subscriptions.graphql.dart';

class ClassesDAO extends DAOBase {
  const ClassesDAO({
    required super.db,
  });

  GQLPaginatableStream<Class> paginateClasses({
    Stream<String?>? searchQuery,
  }) {
    return GQLPaginatableStream<Class>(
      searchQuery: searchQuery,
      subscriptionStreamCallback: (event) {
        return graphQLClient.subscribeAndReturnParsed(
          SubscriptionOptions(
            document: documentNodeSubscriptionwatchAllClasses,
            operationName: 'watchAllClasses',
            variables: graphQLClient
                .getDefaultSearchVars(
                  event,
                  Variables$Subscription$watchAllClasses.new,
                  Input$ClassesBoolExp.new,
                )
                .toJson(),
            parserFn: db.parser.singleListParser(Class.fromJson),
          ),
        );
      },
    );
  }
}
