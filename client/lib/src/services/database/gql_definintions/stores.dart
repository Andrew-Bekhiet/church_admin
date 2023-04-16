import 'package:church_admin/church_admin.dart';
import 'package:church_admin/graphql/__generated__/schema.graphql.dart';
import 'package:graphql/client.dart' hide Store;

import 'helpers.dart';
import 'stores/__generated__/mutations.gql.dart';
import 'stores/__generated__/subscriptions.gql.dart';

class StoresDAO extends DAOBase {
  const StoresDAO({
    required super.db,
  });

  GQLPaginatableStream<Store> paginateStores({
    Stream<String?>? searchQuery,
    String? byAreaId,
    String? byStreetId,
    String? byFamilyId,
  }) {
    return GQLPaginatableStream<Store>(
      searchQuery: searchQuery,
      subscriptionStreamCallback: (event) {
        final defaultSearchVars = graphQLClient.getDefaultSearchVars(
          event,
          Variables$Subscription$watchAllStores.new,
          Input$StoresBoolExp.new,
        );

        final variables = defaultSearchVars.copyWith(
          where: [
            if (byAreaId != null)
              Input$StoresBoolExp(
                areas: Input$AreasBoolExp(
                  id: Input$UuidComparisonExp($_eq: byAreaId.toUuid()),
                ),
              ),
            if (byStreetId != null)
              Input$StoresBoolExp(
                streets: Input$StreetsBoolExp(
                  id: Input$UuidComparisonExp($_eq: byStreetId.toUuid()),
                ),
              ),
            if (byFamilyId != null)
              Input$StoresBoolExp(
                adminFamily: Input$UuidComparisonExp(
                  $_eq: byFamilyId.toUuid(),
                ),
              ),
            ...defaultSearchVars.where ?? [],
          ],
        );

        return graphQLClient.subscribeAndReturnParsed(
          SubscriptionOptions(
            document: documentNodeSubscriptionwatchAllStores,
            operationName: 'watchAllStores',
            variables: variables.toJson(),
            parserFn: db.parser.singleListParser(Store.fromJson),
          ),
        );
      },
    );
  }

  Stream<Store?> watchStore({
    required String storeId,
  }) {
    return graphQLClient
        .subscribe(
          SubscriptionOptions(
            document: documentNodeSubscriptionwatchStore,
            operationName: 'watchStore',
            variables: Variables$Subscription$watchStore(id: storeId.toUuid())
                .toJson(),
            parserFn: db.parser.singleOrNullParser(Store.fromJson),
          ),
        )
        .map((p) => p.parsedData);
  }

  Future<Store?> deleteStore({
    required String storeId,
  }) {
    final mutationOptions = MutationOptions(
      document: documentNodeMutationdeleteStore,
      variables: Variables$Mutation$deleteStore(
        storeId: storeId.toUuid(),
      ).toJson(),
      parserFn: db.parser.singleOrNullParser(Store.fromJson),
    );

    return graphQLClient.mutateAndReturnParsedNullable(mutationOptions);
  }

  Future<Store> insertStore({
    required Store newStore,
  }) {
    final delta = computeObjectDelta(
      newStore.toJson(),
      Store(id: '', name: '').toJson(),
    )
      ..remove('id')
      ..remove('family');

    return graphQLClient.mutateAndReturnParsed(
      MutationOptions(
        document: documentNodeMutationinsertStore,
        operationName: 'insertStore',
        variables: {'newStore': delta},
        parserFn: db.parser.singleParser(Store.fromJson),
      ),
    );
  }

  Future<Store?> updateStore({
    required Store newStore,
    required Store oldStore,
  }) {
    final delta = computeObjectDelta(
      newStore.toJson(),
      oldStore.toJson(),
    );

    if (delta.isEmpty) return Future.value(newStore);

    return graphQLClient.mutateAndReturnParsedNullable(
      MutationOptions(
        document: documentNodeMutationupdateStore,
        operationName: 'updateStore',
        variables: Variables$Mutation$updateStore(
          storeId: newStore.id.toUuid(),
          newStore: Input$StoresSetInput.fromJson(delta),
        ).toJson(),
        parserFn: db.parser.singleOrNullParser(Store.fromJson),
      ),
    );
  }
}
