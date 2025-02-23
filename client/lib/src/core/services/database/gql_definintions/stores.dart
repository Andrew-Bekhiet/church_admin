import 'package:church_admin/church_admin.dart';
import 'package:church_admin/src/core/services/database/gql_definintions/helpers.dart';

import 'package:church_admin/src/core/services/database/gql_definintions/stores/__generated__/mutations.gql.dart';
import 'package:church_admin/src/core/services/database/gql_definintions/stores/__generated__/subscriptions.gql.dart';

class StoresDAO
    extends FullCRUDDAO<Store, Input_StoresBoolExp, Input_StoresOrderBy> {
  StoresDAO({required super.db}) : super(fromJson: Store.fromJson);

  @override
  late final StreamAllConfig<Store, Input_StoresBoolExp, Input_StoresOrderBy>
      baseStreamAllConfig = const StreamAllConfig(
    document: documentNodeSubscriptionwatchAllStores,
  );

  @override
  late final StreamSingleByIdConfig<Store> baseStreamSingleByIdConfig =
      StreamSingleByIdConfig(
    document: documentNodeSubscriptionwatchStore,
    varsConstructor: _streamSingleByIdVarsConstructor,
  );

  @override
  late final DeleteSingleByIdConfig<Store> baseDeleteSingleByIdConfig =
      DeleteSingleByIdConfig(
    document: documentNodeMutationdeleteStore,
    varsConstructor: _deleteSingleByIdVarsConstructor,
  );

  @override
  late final UpdateObjectConfig<Store> baseUpdateObjectConfig =
      UpdateObjectConfig(
    document: documentNodeMutationupdateStore,
    varsConstructor: _updateStoreVarsConstructor,
  );

  @override
  late final CreateObjectConfig<Store> baseCreateObjectConfig =
      CreateObjectConfig(
    document: documentNodeMutationinsertStore,
    varsConstructor: _createStoreVarsConstructor,
  );

  Json _streamSingleByIdVarsConstructor({required UuidValue id}) =>
      Variables_Subscription_watchStore(id: id).toJson();

  Json _createStoreVarsConstructor({required Store newObject}) =>
      Variables_Mutation_insertStore(
        newStore: Input_StoresInsertInput.fromJson(newObject.toJson()),
      ).toJson();

  Json _updateStoreVarsConstructor({
    required Store newObject,
    required Store oldObject,
  }) =>
      Variables_Mutation_updateStore(
        storeId: newObject.id.toUuid(),
        newStore: Input_StoresSetInput.fromJson(
          computeObjectDelta(newObject.toJson(), oldObject.toJson()),
        ),
      ).toJson();

  Json _deleteSingleByIdVarsConstructor({required UuidValue id}) =>
      Variables_Mutation_deleteStore(storeId: id).toJson();
}
