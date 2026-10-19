import 'package:church_admin/church_admin.dart';
import 'package:church_admin/src/core/services/database/data_check_free_documents.dart';
import 'package:church_admin/src/core/services/database/gql_definintions/stores/__generated__/mutations.graphql.dart';
import 'package:church_admin/src/core/services/database/gql_definintions/stores/__generated__/queries.graphql.dart';

class StoresDAO extends FullCRUDDAO<Store> with DataCheckFreeDocuments<Store> {
  @override
  StreamAllConfig<Store> get baseStreamAllConfig => StreamAllConfig(
    document: documentNodeQuerystores,
    arguments: (parameters) => ListQueryArguments.fromParameters(
      parameters,
      defaultOrderBy: [OrderBy(field: StoreFields().name)],
    ),
  );

  @override
  StreamSingleByIdConfig<Store> get baseStreamSingleByIdConfig =>
      const StreamSingleByIdConfig(document: documentNodeQuerystore);

  @override
  CreateObjectConfig<Store> get baseCreateObjectConfig => CreateObjectConfig(
    document: documentNodeMutationcreateStore,
    varsConstructor: ({required newObject}) => Variables_Mutation_createStore(
      input: Input_CreateStoreInput(
        name: newObject.name,
        adminFamilyId: newObject.familyId,
        color: colorToInt(newObject.color),
        address: newObject.address?.toAddressInput(),
      ),
    ).toJson(),
  );

  @override
  UpdateObjectConfig<Store> get baseUpdateObjectConfig => UpdateObjectConfig(
    document: documentNodeMutationupdateStore,
    varsConstructor: ({required newObject}) => Variables_Mutation_updateStore(
      id: newObject.id,
      input: Input_UpdateStoreInput.fromJson({
        'name': newObject.name,
        'adminFamilyId': newObject.familyId,
        'color': colorToInt(newObject.color),
        if (newObject.address case final address?)
          'address': address.toAddressInput().toJson(),
      }),
    ).toJson(),
  );

  @override
  DeleteSingleByIdConfig<Store> get baseDeleteSingleByIdConfig =>
      const DeleteSingleByIdConfig(document: documentNodeMutationdeleteStore);

  StoresDAO({required super.db}) : super(fromJson: Store.fromJson);
}
