import 'package:church_admin/church_admin.dart';
import 'package:church_admin/src/core/services/database/gql_definintions/stores/__generated__/mutations.gql.dart';
import 'package:church_admin/src/core/services/database/gql_definintions/stores/__generated__/subscriptions.gql.dart';
import 'package:uuid/enums.dart';

class StoresDAO extends FullCRUDDAO<Store> {
  @override
  late final StreamAllConfig<Store> baseStreamAllConfig = const StreamAllConfig(
    document: documentNodeSubscriptionwatchAllStores,
  );

  @override
  late final StreamCountConfig<Store> baseStreamCountConfig =
      const StreamCountConfig(
        document: documentNodeSubscriptionwatchStoresCount,
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
        parserFn: db.parser.singleOrNullParser(fromJson, 'updateStoresByPk'),
      );

  @override
  late final CreateObjectConfig<Store> baseCreateObjectConfig =
      CreateObjectConfig(
        document: documentNodeMutationinsertStore,
        varsConstructor: _createStoreVarsConstructor,
      );

  StoresDAO({required super.db}) : super(fromJson: Store.fromJson);

  Json _streamSingleByIdVarsConstructor({required UuidValue id}) =>
      Variables_Subscription_watchStore(id: id).toJson();

  Json _createStoreVarsConstructor({required Store newObject}) =>
      Variables_Mutation_insertStore(
        newStore: newObject.toInsertInput(),
      ).toJson();

  Json _updateStoreVarsConstructor({
    required Store newObject,
    required Store oldObject,
  }) {
    final updateInput = newObject.toUpdateInput(oldObject);
    return Variables_Mutation_updateStore(
      storeId: newObject.id.toUuid(),
      newStore: updateInput,
      addressId: newObject.address?.id?.toUuid() ?? Namespace.nil.uuidValue,
      newAddress: newObject.address?.toUpdateInput(oldObject.address!),
      updateAddress: newObject.address != oldObject.address,
      updateStore: updateInput.toJson().values.nonNulls.isNotEmpty,
    ).toJson();
  }

  Json _deleteSingleByIdVarsConstructor({required UuidValue id}) =>
      Variables_Mutation_deleteStore(storeId: id).toJson();
}
