import 'package:church_admin/church_admin.dart';
import 'package:church_admin/src/core/services/database/gql_definintions/metadata/schools/__generated__/mutations.graphql.dart';
import 'package:church_admin/src/core/services/database/gql_definintions/metadata/schools/__generated__/queries.graphql.dart';

class SchoolsDAO extends DAOBase<School>
    with KeysetStreamableDAO<School>, CreatableDAO<School> {
  @override
  StreamAllConfig<School> get baseStreamAllConfig => const StreamAllConfig(
    document: documentNodeQueryschools,
    arguments: ListQueryArguments.fromParameters,
  );

  @override
  StreamSingleByIdConfig<School> get baseStreamSingleByIdConfig =>
      throw UnimplementedError();

  @override
  CreateObjectConfig<School> get baseCreateObjectConfig => CreateObjectConfig(
    document: documentNodeMutationcreateSchool,
    varsConstructor: ({required newObject}) => Variables_Mutation_createSchool(
      input: Input_CreateSchoolInput(name: newObject.name),
    ).toJson(),
  );

  SchoolsDAO({
    required super.db,
  }) : super(fromJson: School.fromJson);
}
