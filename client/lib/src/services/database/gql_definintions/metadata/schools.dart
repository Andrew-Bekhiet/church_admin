import 'package:church_admin/church_admin.dart';

import 'schools/__generated__/subscriptions.gql.dart';

class SchoolsDAO extends DAOBase<School>
    with StreamableDAO<School, Input_SchoolsBoolExp, Input_SchoolsOrderBy> {
  SchoolsDAO({
    required super.db,
  }) : super(fromJson: School.fromJson);

  @override
  StreamAllConfig<School, Input_SchoolsBoolExp, Input_SchoolsOrderBy>
      get baseStreamAllConfig => const StreamAllConfig(
            document: documentNodeSubscriptionwatchAllSchools,
          );

  @override
  StreamSingleByIdConfig<School> get baseStreamSingleByIdConfig =>
      throw UnimplementedError();
}
