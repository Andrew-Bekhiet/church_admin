import 'package:church_admin/church_admin.dart';
import 'package:church_admin/src/core/services/database/gql_definintions/metadata/jobs/__generated__/mutations.gql.dart';
import 'package:church_admin/src/core/services/database/gql_definintions/metadata/jobs/__generated__/subscriptions.gql.dart';

class JobsDAO extends DAOBase<Job> with LegacyStreamableDAO<Job>, LegacyCreatableDAO<Job> {
  @override
  LegacyStreamAllConfig<Job> get baseStreamAllConfig => const LegacyStreamAllConfig(
    document: documentNodeSubscriptionwatchAllJobs,
  );
  @override
  LegacyStreamSingleByIdConfig<Job> get baseStreamSingleByIdConfig =>
      throw UnimplementedError();

  @override
  LegacyCreateObjectConfig<Job> get baseCreateObjectConfig => LegacyCreateObjectConfig(
    document: documentNodeMutationcreateJob,
    varsConstructor: _createJobVarsConstructor,
    parserFn: db.parser.singleParser(fromJson),
  );

  JobsDAO({
    required super.db,
  }) : super(fromJson: Job.fromJson);

  Json _createJobVarsConstructor({required Job newObject}) => {
    'object': {'name': newObject.name},
  };
}
