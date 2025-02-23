import 'package:church_admin/church_admin.dart';

import 'package:church_admin/src/core/services/database/gql_definintions/metadata/jobs/__generated__/subscriptions.gql.dart';

class JobsDAO extends DAOBase<Job>
    with StreamableDAO<Job, Input_JobsBoolExp, Input_JobsOrderBy> {
  JobsDAO({
    required super.db,
  }) : super(fromJson: Job.fromJson);

  @override
  StreamAllConfig<Job, Input_JobsBoolExp, Input_JobsOrderBy>
      get baseStreamAllConfig => const StreamAllConfig(
            document: documentNodeSubscriptionwatchAllJobs,
          );

  @override
  StreamSingleByIdConfig<Job> get baseStreamSingleByIdConfig =>
      throw UnimplementedError();
}
