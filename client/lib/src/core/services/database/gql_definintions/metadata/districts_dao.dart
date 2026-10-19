import 'package:church_admin/church_admin.dart';
import 'package:church_admin/src/core/services/database/gql_definintions/metadata/districts/__generated__/mutations.graphql.dart';
import 'package:church_admin/src/core/services/database/gql_definintions/metadata/districts/__generated__/queries.graphql.dart';

class DistrictsDAO extends DAOBase<District>
    with KeysetStreamableDAO<District>, CreatableDAO<District> {
  @override
  StreamAllConfig<District> get baseStreamAllConfig => const StreamAllConfig(
    document: documentNodeQuerydistricts,
    arguments: ListQueryArguments.fromParameters,
  );

  @override
  StreamSingleByIdConfig<District> get baseStreamSingleByIdConfig =>
      throw UnimplementedError();

  @override
  CreateObjectConfig<District> get baseCreateObjectConfig => CreateObjectConfig(
    document: documentNodeMutationcreateDistrict,
    varsConstructor: ({required newObject}) =>
        Variables_Mutation_createDistrict(
          input: Input_CreateDistrictInput(name: newObject.name),
        ).toJson(),
  );

  DistrictsDAO({
    required super.db,
  }) : super(fromJson: District.fromJson);
}
