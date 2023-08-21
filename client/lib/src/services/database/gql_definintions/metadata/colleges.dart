import 'package:church_admin/church_admin.dart';

import 'colleges/__generated__/subscriptions.gql.dart';

class CollegesDAO extends DAOBase<College>
    with StreamableDAO<College, Input_CollegesBoolExp> {
  CollegesDAO({
    required super.db,
  }) : super(fromJson: College.fromJson);

  @override
  StreamAllConfig<College, Input_CollegesBoolExp> get baseStreamAllConfig =>
      StreamAllConfig(
        document: documentNodeSubscriptionwatchAllColleges,
        varsConstructor: ({required event, required where}) => graphQLClient
            .getDefaultSearchVars(
              event,
              Variables_Subscription_watchAllColleges.new,
              Input_CollegesBoolExp.new,
            )
            .toJson(),
      );

  @override
  StreamSingleByIdConfig<College> get baseStreamSingleByIdConfig =>
      throw UnimplementedError();
}
