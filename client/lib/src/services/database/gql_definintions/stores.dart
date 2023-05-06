import 'package:church_admin/church_admin.dart';
import 'package:graphql/client.dart' hide Store;

import 'helpers.dart';
import 'stores/__generated__/mutations.gql.dart';
import 'stores/__generated__/subscriptions.gql.dart';

class StoresDAO extends DAOBase<Store> {
  const StoresDAO({
    required super.db,
  });

  @override
  GQLPaginatableStream<Store> streamAll({
    Stream<String?>? searchQuery,
    List<Input_StoresBoolExp>? where,
  }) {
    return GQLPaginatableStream<Store>(
      searchQuery: searchQuery,
      subscriptionStreamCallback: (event) {
        final defaultSearchVars = graphQLClient.getDefaultSearchVars(
          event,
          Variables_Subscription_watchAllStores.new,
          Input_StoresBoolExp.new,
        );

        final variables = defaultSearchVars.copyWith(
          where: [
            if (where != null) ...where,
            if (defaultSearchVars.where != null) ...defaultSearchVars.where!,
          ],
        ).toJson();

        return graphQLClient.subscribeAndReturnParsed(
          SubscriptionOptions(
            document: documentNodeSubscriptionwatchAllStores,
            operationName: 'watchAllStores',
            variables: variables,
            parserFn: db.parser.singleListParser(Store.fromJson),
          ),
        );
      },
    );
  }

  Stream<Store?> streamSingleById({
    required String id,
  }) {
    return graphQLClient
        .subscribe(
          SubscriptionOptions(
            document: documentNodeSubscriptionwatchStore,
            operationName: 'watchStore',
            variables:
                Variables_Subscription_watchStore(id: id.toUuid()).toJson(),
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
      variables: Variables_Mutation_deleteStore(
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
        variables: Variables_Mutation_updateStore(
          storeId: newStore.id.toUuid(),
          newStore: Input_StoresSetInput.fromJson(delta),
        ).toJson(),
        parserFn: db.parser.singleOrNullParser(Store.fromJson),
      ),
    );
  }
}
