import 'package:church_admin/church_admin.dart';

import 'schools/__generated__/subscriptions.gql.dart';

class SchoolsDAO extends DAOBase<School>
    with StreamableDAO<School, Input_SchoolsBoolExp> {
  SchoolsDAO({
    required super.db,
  }) : super(fromJson: School.fromJson);

  @override
  StreamAllConfig<School, Input_SchoolsBoolExp> get baseStreamAllConfig =>
      StreamAllConfig(
        document: documentNodeSubscriptionwatchAllSchools,
        varsConstructor: ({required event, required where}) => graphQLClient
            .getDefaultSearchVars(
              event,
              Variables_Subscription_watchAllSchools.new,
              Input_SchoolsBoolExp.new,
            )
            .toJson(),
      );

  @override
  StreamSingleByIdConfig<School> get baseStreamSingleByIdConfig =>
      throw UnimplementedError();
}
