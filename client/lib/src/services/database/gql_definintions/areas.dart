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
        return graphQLClient.subscribeAndReturnParsed(
          SubscriptionOptions(
            document: documentNodeSubscriptionwatchAllAreas,
            operationName: 'watchAllAreas',
            variables: graphQLClient
                .getDefaultSearchVars(
                  event,
                  Variables$Subscription$watchAllAreas.new,
                  Input$AreasBoolExp.new,
                )
                .toJson(),
            parserFn: db.parser.singleListParser(Area.fromJson),
          ),
        );
      },
    );
  }

  Stream<Area?> watchArea({
    required String areaId,
  }) {
    return graphQLClient
        .subscribe(
          SubscriptionOptions(
            document: documentNodeSubscriptionwatchArea,
            operationName: 'watchArea',
            variables:
                Variables$Subscription$watchArea(id: areaId.toUuid()).toJson(),
            parserFn: db.parser.singleOrNullParser(Area.fromJson),
          ),
        )
        .map((p) => p.parsedData);
  }
}
