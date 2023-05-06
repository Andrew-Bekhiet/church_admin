import 'package:church_admin/church_admin.dart';
import 'package:graphql/client.dart';

import 'areas/__generated__/mutations.gql.dart';
import 'areas/__generated__/subscriptions.gql.dart';
import 'helpers.dart';

class AreasDAO extends DAOBase<Area> {
  const AreasDAO({
    required super.db,
  });

  @override
  GQLPaginatableStream<Area> streamAll({
    Stream<String?>? searchQuery,
    List<Input_AreasBoolExp>? where,
  }) {
    return GQLPaginatableStream<Area>(
      searchQuery: searchQuery,
      subscriptionStreamCallback: (event) {
        final defaultSearchVars = graphQLClient.getDefaultSearchVars(
          event,
          Variables_Subscription_watchAllAreas.new,
          Input_AreasBoolExp.new,
        );

        final variables = defaultSearchVars.copyWith(
          where: [
            if (where != null) ...where,
            if (defaultSearchVars.where != null) ...defaultSearchVars.where!,
          ],
        ).toJson();

        return graphQLClient.subscribeAndReturnParsed(
          SubscriptionOptions(
            document: documentNodeSubscriptionwatchAllAreas,
            operationName: 'watchAllAreas',
            variables: variables,
            parserFn: db.parser.singleListParser(Area.fromJson),
          ),
        );
      },
    );
  }

  Stream<Area?> streamSingleById({
    required String id,
  }) {
    return graphQLClient
        .subscribe(
          SubscriptionOptions(
            document: documentNodeSubscriptionwatchArea,
            operationName: 'watchArea',
            variables:
                Variables_Subscription_watchArea(id: id.toUuid()).toJson(),
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
      variables: Variables_Mutation_deleteArea(
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

    if (delta.isEmpty) return Future.value(newArea);

    return graphQLClient.mutateAndReturnParsedNullable(
      MutationOptions(
        document: documentNodeMutationupdateArea,
        operationName: 'updateArea',
        variables: Variables_Mutation_updateArea(
          areaId: newArea.id.toUuid(),
          newArea: Input_AreasSetInput.fromJson(delta),
        ).toJson(),
        parserFn: db.parser.singleOrNullParser(Area.fromJson),
      ),
    );
  }
}
