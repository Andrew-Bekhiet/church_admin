import 'package:church_admin/church_admin.dart';
import 'package:church_admin/src/core/services/database/gql_definintions/metadata/colleges/__generated__/mutations.graphql.dart';
import 'package:church_admin/src/core/services/database/gql_definintions/metadata/colleges/__generated__/queries.graphql.dart';

class CollegesDAO extends DAOBase<College>
    with KeysetStreamableDAO<College>, CreatableDAO<College> {
  @override
  StreamAllConfig<College> get baseStreamAllConfig => const StreamAllConfig(
    document: documentNodeQuerycolleges,
    arguments: ListQueryArguments.fromParameters,
  );

  @override
  StreamSingleByIdConfig<College> get baseStreamSingleByIdConfig =>
      throw UnimplementedError();

  @override
  CreateObjectConfig<College> get baseCreateObjectConfig => CreateObjectConfig(
    document: documentNodeMutationcreateCollege,
    varsConstructor: ({required newObject}) => Variables_Mutation_createCollege(
      input: Input_CreateCollegeInput(
        name: newObject.name,
        universityId: newObject.universityId,
      ),
    ).toJson(),
  );

  CollegesDAO({
    required super.db,
  }) : super(fromJson: College.fromJson);
}
