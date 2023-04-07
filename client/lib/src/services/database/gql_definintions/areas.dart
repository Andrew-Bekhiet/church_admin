import 'package:church_admin/church_admin.dart';
import 'package:church_admin/graphql/__generated__/schema.graphql.dart';
import 'package:graphql/client.dart';

import 'areas/__generated__/mutations.gql.dart';
import 'areas/__generated__/subscriptions.gql.dart';
import 'helpers.dart';

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

  Future<Area?> deleteArea({
    required String areaId,
  }) {
    final mutationOptions = MutationOptions(
      document: documentNodeMutationdeleteArea,
      variables: Variables$Mutation$deleteArea(
        areaId: areaId.toUuid(),
      ).toJson(),
      parserFn: db.parser.singleOrNullParser(Area.fromJson),
    );

    return graphQLClient.mutateAndReturnParsed(mutationOptions);
  }

  Future<Area> insertArea({
    required Area newArea,
  }) {
    final delta = computeObjectDelta(
      newArea.toJson(),
      Area(id: '', name: '').toJson(),
    )..remove('id');

    return graphQLClient.mutateAndReturnParsed(
      MutationOptions(
        document: documentNodeMutationinsertArea,
        operationName: 'insertArea',
        variables: {'newArea': delta},
        parserFn: db.parser.singleParser(Area.fromJson),
      ),
    );
  }

  Future<Area?> updateArea({
    required Area newArea,
    required Area oldArea,
  }) {
    final delta = computeObjectDelta(
      newArea.toJson(),
      oldArea.toJson(),
    );

    return graphQLClient.mutateAndReturnParsedNullable(
      MutationOptions(
        document: documentNodeMutationupdateArea,
        operationName: 'updateArea',
        variables: Variables$Mutation$updateArea(
          areaId: newArea.id.toUuid(),
          newArea: Input$AreasSetInput.fromJson(delta),
        ).toJson(),
        parserFn: db.parser.singleOrNullParser(Area.fromJson),
      ),
    );
  }
}
