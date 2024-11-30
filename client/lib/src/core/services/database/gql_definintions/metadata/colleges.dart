import 'package:church_admin/church_admin.dart';

import 'colleges/__generated__/subscriptions.gql.dart';

class CollegesDAO extends DAOBase<College>
    with StreamableDAO<College, Input_CollegesBoolExp, Input_CollegesOrderBy> {
  CollegesDAO({
    required super.db,
  }) : super(fromJson: College.fromJson);

  @override
  StreamAllConfig<College, Input_CollegesBoolExp, Input_CollegesOrderBy>
      get baseStreamAllConfig => const StreamAllConfig(
            document: documentNodeSubscriptionwatchAllColleges,
          );

  @override
  StreamSingleByIdConfig<College> get baseStreamSingleByIdConfig =>
      throw UnimplementedError();
}
