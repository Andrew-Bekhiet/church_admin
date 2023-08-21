import 'package:church_admin/church_admin.dart';

import 'jobs/__generated__/subscriptions.gql.dart';

class JobsDAO extends DAOBase<Job> with StreamableDAO<Job, Input_JobsBoolExp> {
  JobsDAO({
    required super.db,
  }) : super(fromJson: Job.fromJson);

  @override
  StreamAllConfig<Job, Input_JobsBoolExp> get baseStreamAllConfig =>
      StreamAllConfig(
        document: documentNodeSubscriptionwatchAllJobs,
        varsConstructor: ({required event, required where}) => graphQLClient
            .getDefaultSearchVars(
              event,
              Variables_Subscription_watchAllJobs.new,
              Input_JobsBoolExp.new,
            )
            .toJson(),
      );

  @override
  StreamSingleByIdConfig<Job> get baseStreamSingleByIdConfig =>
      throw UnimplementedError();
}
