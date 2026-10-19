import 'package:church_admin/church_admin.dart';
import 'package:church_admin/src/core/services/database/gql_definintions/metadata/jobs/__generated__/mutations.graphql.dart';
import 'package:church_admin/src/core/services/database/gql_definintions/metadata/jobs/__generated__/queries.graphql.dart';

class JobsDAO extends DAOBase<Job>
    with KeysetStreamableDAO<Job>, CreatableDAO<Job> {
  @override
  StreamAllConfig<Job> get baseStreamAllConfig => const StreamAllConfig(
    document: documentNodeQueryjobs,
    arguments: ListQueryArguments.fromParameters,
  );

  @override
  StreamSingleByIdConfig<Job> get baseStreamSingleByIdConfig =>
      throw UnimplementedError();

  @override
  CreateObjectConfig<Job> get baseCreateObjectConfig => CreateObjectConfig(
    document: documentNodeMutationcreateJob,
    varsConstructor: ({required newObject}) => Variables_Mutation_createJob(
      input: Input_CreateJobInput(name: newObject.name),
    ).toJson(),
  );

  JobsDAO({
    required super.db,
  }) : super(fromJson: Job.fromJson);
}
