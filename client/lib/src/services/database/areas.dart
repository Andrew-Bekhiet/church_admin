import 'package:church_admin/church_admin.dart';
import 'package:church_admin/graphql/__generated__/schema.graphql.dart';
import 'package:graphql/client.dart';

import 'areas/__generated__/subscriptions.graphql.dart';

class AreasDAO extends DAOBase {
  const AreasDAO({
    required super.db,
  });

  GQLPaginatableStream<Area> paginateAreas({
    Stream<String?>? searchQuery,
  }) {
    return GQLPaginatableStream<Area>(
      searchQuery: searchQuery,
      subscriptionStreamCallback: (event) {
        return graphQLClient.subscribe(
          SubscriptionOptions(
            document: documentNodeSubscriptiongetAreasStream,
            operationName: 'getAreasStream',
            variables: getDefaultVariables(
              event,
              Variables$Subscription$getAreasStream.new,
              Input$AreasBoolExp.new,
            ).toJson(),
            parserFn: (d) => db.parseListOfT(d, Area.fromJson),
          ),
        );
      },
    );
  }
}
