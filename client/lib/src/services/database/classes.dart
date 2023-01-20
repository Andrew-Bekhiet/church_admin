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
        return graphQLClient.subscribe(
          SubscriptionOptions(
            document: documentNodeSubscriptiongetClassesStream,
            operationName: 'getClassesStream',
            variables: getDefaultVariables(
              event,
              Variables$Subscription$getClassesStream.new,
              Input$ClassesBoolExp.new,
            ).toJson(),
            parserFn: (d) => db.parseListOfT(d, Class.fromJson),
          ),
        );
      },
    );
  }
}
